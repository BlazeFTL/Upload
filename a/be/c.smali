.class public Lbe/c;
.super LT/a;


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field private final e:LGd/H;

.field public final f:Lbe/l;


# direct methods
.method constructor <init>(LGd/H;Lbe/l;)V
    .locals 0

    invoke-direct {p0, p1}, LT/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lbe/c;->e:LGd/H;

    iput-object p2, p0, Lbe/c;->f:Lbe/l;

    return-void
.end method

.method public static synthetic b(Lbe/c;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, p1, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, LQ/T;->b(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, LQ/T;->b(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, LQ/T;->b(Ljava/io/Closeable;)V

    throw p1
.end method

.method private c(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lbe/c;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sput-object p1, Lbe/c;->g:Ljava/lang/String;

    invoke-static {}, Ls9/w;->c()Ls9/w;

    move-result-object v0

    new-instance v1, Lbe/b;

    invoke-direct {v1, p0, p1, p2}, Lbe/b;-><init>(Lbe/c;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ls9/w;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, LFd/e;->k0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    iget-object p1, p0, Lbe/c;->e:LGd/H;

    iget-object v0, p0, Lbe/c;->f:Lbe/l;

    invoke-virtual {p1, v0}, LGd/H;->m1(Lbe/l;)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lbe/c;->f:Lbe/l;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    invoke-static {}, LQ/g;->c()LQ/g;

    move-result-object v2

    iget-object v3, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LQ/g;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lbe/c;->e:LGd/H;

    invoke-static {v2}, Lvdmod/PopupBlocker;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbe/c;->e:LGd/H;

    iget-object v3, p0, Lbe/c;->f:Lbe/l;

    invoke-virtual {v3}, Lbe/l;->C()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbe/c$1;

    invoke-direct {v4, p0, v2, p4}, Lbe/c$1;-><init>(Lbe/c;LGd/H;Landroid/os/Message;)V

    invoke-static {v2, v3, v4}, Lvdmod/PopupConfirm;->ask(Landroid/content/Context;Ljava/lang/String;Lvdmod/PopupConfirm$Callback;)V

    return v0

    :cond_2
    iget-object v1, p0, Lbe/c;->f:Lbe/l;

    iget-object v2, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {v2, p4, v1}, LGd/H;->n1(Landroid/os/Message;Lbe/l;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {v0}, LGd/H;->p1()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lbe/c;->f:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {v0, p2}, LGd/H;->j2(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lbe/c;->f:Lbe/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/l;->j0(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, LT/a;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    iget-object v1, p0, Lbe/c;->f:Lbe/l;

    invoke-virtual {v0, v1}, LGd/H;->f2(Lbe/l;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lbe/c;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    iget-object v1, p0, Lbe/c;->f:Lbe/l;

    invoke-virtual {v0, v1}, LGd/H;->f2(Lbe/l;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, LGd/H;->y0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lv9/b;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {v0, p1, p3, p2}, LGd/H;->s1(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;I)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {v0, p1, p2}, LGd/H;->r1(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lbe/c;->e:LGd/H;

    invoke-virtual {p1, p2}, LGd/H;->U1(Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x1

    return p1
.end method
