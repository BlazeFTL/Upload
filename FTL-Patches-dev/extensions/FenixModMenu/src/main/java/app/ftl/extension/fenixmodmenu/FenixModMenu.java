package app.ftl.extension.fenixmodmenu;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.MenuItem;

/**
 * Extension class to handle Mod Menu settings for Firefox Fenix.
 * Provides logic to toggle between Bottom Sheet 3-Dot Menu and Old 3-Dot Menu.
 */
public class FenixModMenu {
    private static final String PREFS_NAME = "FenixModMenuPrefs";
    private static final String KEY_BOTTOM_SHEET_MENU = "use_bottom_sheet_menu";
    private static final String TAG = "FenixModMenu";

    /**
     * Reads the user preference for using the Bottom Sheet Menu.
     * Defaults to true (the new default in Fenix 159+).
     */
    public static boolean shouldUseBottomSheetMenu(Context context) {
        if (context == null) return true;
        try {
            SharedPreferences prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
            return prefs.getBoolean(KEY_BOTTOM_SHEET_MENU, true);
        } catch (Exception e) {
            Log.e(TAG, "Error reading preferences", e);
            return true;
        }
    }

    /**
     * Toggles the Bottom Sheet Menu preference and saves it.
     */
    public static void toggleBottomSheetMenu(Context context) {
        if (context == null) return;
        try {
            SharedPreferences prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
            boolean currentValue = prefs.getBoolean(KEY_BOTTOM_SHEET_MENU, true);
            prefs.edit().putBoolean(KEY_BOTTOM_SHEET_MENU, !currentValue).apply();
            Log.d(TAG, "Bottom Sheet Menu toggled to: " + !currentValue);
        } catch (Exception e) {
            Log.e(TAG, "Error toggling preferences", e);
        }
    }

    /**
     * A simple MenuItem click listener that toggles the setting when "Mod Settings" is clicked.
     * Can be attached to the dynamically added "Mod Settings" menu item.
     */
    public static class ModSettingsClickListener implements MenuItem.OnMenuItemClickListener {
        private final Context context;

        public ModSettingsClickListener(Context context) {
            this.context = context;
        }

        @Override
        public boolean onMenuItemClick(MenuItem item) {
            toggleBottomSheetMenu(context);
            // Show a quick toast or snackbar to indicate the change
            try {
                android.widget.Toast.makeText(
                    context,
                    shouldUseBottomSheetMenu(context) ? "Bottom Sheet Menu: ON (Restart App)" : "Old Menu: ON (Restart App)",
                    android.widget.Toast.LENGTH_SHORT
                ).show();
            } catch (Exception ignored) {}
            return true;
        }
    }
}
