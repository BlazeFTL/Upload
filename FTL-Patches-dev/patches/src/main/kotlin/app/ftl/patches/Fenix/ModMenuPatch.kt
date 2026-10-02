package app.ftl.patches.fenix

import app.morphe.patcher.patch.bytecodePatch
import app.morphe.patcher.fingerprint.Fingerprint
import app.morphe.patcher.extensions.InstructionExtensions.addInstructions
import app.morphe.patcher.extensions.InstructionExtensions.instructionsOrNull
import com.android.tools.smali.dexlib2.Opcode
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction
import com.android.tools.smali.dexlib2.iface.reference.MethodReference

// Compatibility declaration for Firefox Fenix 159.0a1
val COMPATIBILITY_FENIX_159 = app.morphe.patcher.patch.Compatibility(
    name = "Firefox Nightly",
    packageName = "org.mozilla.fenix",
    appIconColor = 0xFF7100,
    targets = listOf(
        app.morphe.patcher.patch.AppTarget(version = "159.0a1")
    )
)

/**
 * Fingerprint to find the method that returns whether to use the Bottom Sheet Menu.
 * Usually this is in FeatureFlags or Settings class.
 * Update the definingClass and filters to match the exact method in your decompiled APK.
 */
val bottomSheetMenuFlagFingerprint = Fingerprint(
    definingClass = "Lorg/mozilla/fenix/utils/Settings;", // Or FeatureFlags
    returnType = "Z",
    filters = listOf(
        // opcode(Opcode.IGET_BOOLEAN) // Example filter
    )
)

/**
 * Fingerprint to find the menu builder method where we can inject the "Mod Settings" item.
 * Look for the class that inflates the 3-dot menu (e.g., HomeMenu, BrowserMenu, or MenuDialogFragment).
 */
val menuBuilderFingerprint = Fingerprint(
    definingClass = "Lorg/mozilla/fenix/components/toolbar/BrowserToolbarView;", // Or HomeMenu
    returnType = "V",
    filters = listOf(
        // string("menu_item_title") // Find a unique string in the 3-dot menu
    )
)

val modMenuTogglePatch = bytecodePatch(
    name = "Mod Menu Toggle",
    description = "Adds a 'Mod Settings' item to the 3-dot menu to toggle between the new Bottom Sheet menu and the old 3-dot menu.",
    default = true
) {
    compatibleWith(COMPATIBILITY_FENIX_159)

    // Merge the Java extension DEX file
    extendWith("fenix-mod-menu.mpe")

    execute {
        // 1. Override the Bottom Sheet Menu boolean flag to read from our Extension's SharedPreferences
        bottomSheetMenuFlagFingerprint.method.addInstructions(
            0,
            """
                # Pass Context (p0 or p1 depending on static/instance method)
                invoke-static {p0}, Lapp/ftl/extension/fenixmodmenu/FenixModMenu;->shouldUseBottomSheetMenu(Landroid/content/Context;)Z
                move-result v0
                return v0
            """.trimIndent()
        )

        // 2. Inject "Mod Settings" into the 3-dot menu
        menuBuilderFingerprint.let { fp ->
            val method = fp.method
            val instructions = method.instructionsOrNull?.toList() ?: return@let

            // Find the index where the menu is fully built or right before it returns
            // For XML menus, we can call menu.add() and set the click listener
            val insertIndex = instructions.size - 1

            // NOTE: The registers v0 (Menu) and v1 (Context) MUST be updated to match the
            // actual registers holding the Menu and Context objects in the target method.
            method.addInstructions(
                insertIndex,
                """
                    # Add "Mod Settings" to the menu
                    const/16 v2, 0x270f          # Unique Item ID (9999)
                    const/4 v3, 0x0              # groupId
                    const/16 v4, 0x270f          # order
                    const-string v5, "Mod Settings"

                    # menu.add(groupId, itemId, order, title)
                    invoke-interface {v0, v3, v2, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
                    move-result-object v6

                    # Create and attach click listener
                    new-instance v7, Lapp/ftl/extension/fenixmodmenu/FenixModMenu${'$'}ModSettingsClickListener;
                    invoke-direct {v7, v1}, Lapp/ftl/extension/fenixmodmenu/FenixModMenu${'$'}ModSettingsClickListener;-><init>(Landroid/content/Context;)V
                    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem${'$'}OnMenuItemClickListener;)Landroid/view/MenuItem;
                """.trimIndent()
            )
        }
    }
}
