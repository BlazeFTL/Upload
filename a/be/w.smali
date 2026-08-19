.class public Lbe/w;
.super LT/c;


# static fields
.field static q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:LGd/H;

.field private final n:Lbe/l;

.field o:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbe/w;->q:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(LGd/H;Lbe/l;)V
    .locals 2

    invoke-direct {p0}, LT/c;-><init>()V

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Lbe/w;->o:Landroidx/collection/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbe/w;->p:J

    iput-object p1, p0, Lbe/w;->m:LGd/H;

    iput-object p2, p0, Lbe/w;->n:Lbe/l;

    sget-object p2, LT/c;->j:LQ/e;

    if-nez p2, :cond_0

    new-instance p2, LQ/e;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {p1}, LYd/a;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p2, v0, p1}, LQ/e;-><init>(Landroid/app/Application;Z)V

    sput-object p2, LT/c;->j:LQ/e;

    :cond_0
    return-void
.end method

.method private A(Ljava/lang/String;Landroid/webkit/WebView;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbe/w;->m:LGd/H;

    invoke-static {v1}, Lae/f;->m1(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lbe/w;->m:LGd/H;

    invoke-static {v1}, Ls9/c;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "interstitial"

    const-string v2, "view_video.php"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private B(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private C(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lbe/w;->o:Landroidx/collection/b;

    invoke-virtual {v2}, Landroidx/collection/b;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lbe/w;->o:Landroidx/collection/b;

    invoke-virtual {v2, v1}, Landroidx/collection/b;->q(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private D(Ljava/lang/String;Landroid/webkit/WebView;)Z
    .locals 7

    const-string v0, "mailto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x12c

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object p2, Lbe/a;->a:Landroid/os/Handler;

    new-instance v0, Lbe/m;

    invoke-direct {v0, p0, p1}, Lbe/m;-><init>(Lbe/w;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    :cond_0
    const-string v0, "intent://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "https://snssdk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ".onelink.me/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lbe/w;->n:Lbe/l;

    iget-boolean p2, p2, Lbe/l;->m:Z

    if-nez p2, :cond_2

    return v3

    :cond_2
    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_3
    :goto_0
    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    const-string v4, "package=com.facebook.katana"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "browser_fallback_url"

    if-eqz v4, :cond_4

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :cond_4
    const-string v4, "package=com.android.chrome"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    return v3

    :cond_6
    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    sget-object p1, Lbe/a;->a:Landroid/os/Handler;

    new-instance p2, Lbe/n;

    invoke-direct {p2, p0, v0}, Lbe/n;-><init>(Lbe/w;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    :catch_0
    :cond_7
    return v4
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lu9/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lu9/b;

    invoke-direct {v3}, Lu9/b;-><init>()V

    const/16 v0, 0x2d0

    invoke-virtual {v3, v0}, Lu9/b;->u(I)V

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/StringReader;

    move-object/from16 v5, p6

    invoke-direct {v0, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Ls9/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v0, :cond_0

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v0, ""

    const-wide/16 v9, 0x0

    move-object v7, v0

    move-wide v11, v9

    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v13, "#EXT-X-MAP:URI="

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    const/16 v13, 0x10

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8}, Lu9/b;->o(Z)V

    goto :goto_2

    :cond_2
    const-string v13, "#EXTINF"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v7, v4, v5, v6, v3}, Ls9/q;->n(Ljava/lang/String;Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;Lu9/b;)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    const/16 v13, 0x2c

    :try_start_1
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-double/2addr v11, v13

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string v13, "#EXT-X-STREAM-INF"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v0}, Ls9/q;->f(Ljava/lang/String;)I

    move-result v0

    new-instance v13, Lu9/b;

    invoke-direct {v13}, Lu9/b;-><init>()V

    invoke-virtual {v13, v0}, Lu9/b;->u(I)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v6}, Ls9/q;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v14, p1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v16, v13

    move-object/from16 v13, p0

    invoke-static/range {v13 .. v19}, Ls9/q;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lu9/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0}, Lu9/b;->i()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v3}, Lu9/b;->c()D

    move-result-wide v4

    cmpl-double v0, v4, v9

    if-nez v0, :cond_6

    cmpl-double v0, v11, v9

    if-lez v0, :cond_6

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v4

    invoke-virtual {v3, v11, v12}, Lu9/b;->p(D)V

    :cond_6
    invoke-virtual {v3}, Lu9/b;->i()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v3, v1}, Lu9/b;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_5
    return-object v2
.end method

.method private F(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    const/4 v9, 0x0

    :try_start_0
    new-instance v0, LIc/A$a;

    invoke-direct {v0}, LIc/A$a;-><init>()V

    invoke-virtual {v0, v4}, LIc/A$a;->n(Ljava/lang/String;)LIc/A$a;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Host"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Connection"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5, v3}, LIc/A$a;->a(Ljava/lang/String;Ljava/lang/String;)LIc/A$a;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v0}, LIc/A$a;->d()LIc/A$a;

    invoke-virtual {v0}, LIc/A$a;->b()LIc/A;

    move-result-object v0

    invoke-static {}, Lo9/a;->a()LIc/y;

    move-result-object v2

    invoke-virtual {v2, v0}, LIc/y;->b(LIc/A;)LIc/e;

    move-result-object v0

    invoke-interface {v0}, LIc/e;->execute()LIc/C;

    move-result-object v0

    invoke-virtual {v0}, LIc/C;->m()I

    move-result v10

    invoke-virtual {v0}, LIc/C;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "OK"

    :cond_2
    move-object v11, v2

    invoke-virtual {v0}, LIc/C;->d()LIc/D;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, LIc/C;->close()V

    return-object v9

    :cond_3
    const-string v3, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual {v2}, LIc/D;->contentType()LIc/x;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, LIc/x;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, LIc/x;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, LIc/x;->c()Ljava/nio/charset/Charset;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, LIc/x;->c()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v6, "Content-Type"

    invoke-virtual {v0, v6}, LIc/C;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    const-string v8, ""

    if-nez v7, :cond_7

    :try_start_1
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_5

    aget-object v7, v6, v12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object v3, v7

    :cond_5
    array-length v7, v6

    move v13, v12

    :goto_1
    if-ge v13, v7, :cond_7

    aget-object v14, v6, v13

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v9

    :try_start_2
    const-string v9, "charset="

    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x8

    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v5, "\""

    invoke-virtual {v9, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "\'"

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v16

    goto :goto_1

    :cond_7
    move-object/from16 v16, v9

    move-object v9, v3

    move-object v13, v5

    const-string v3, ".m3u8?"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v3, v8

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v2}, LIc/D;->bytes()[B

    move-result-object v2

    invoke-direct {v8, v2, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Referer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v5, "User-Agent"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Origin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v3

    move-object v7, v5

    move-object v5, v2

    goto :goto_3

    :cond_8
    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_3
    iget-object v2, v1, Lbe/w;->m:LGd/H;

    iget-object v3, v1, Lv9/c;->a:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lbe/w;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lv9/c;->a:Ljava/lang/String;

    invoke-static {v4}, LQ/T;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Ll9/a;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu9/b;

    invoke-virtual {v4}, Lu9/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ll9/a;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v3}, Ll9/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu9/b;

    invoke-virtual {v4}, Lu9/b;->i()I

    move-result v12

    if-lez v12, :cond_9

    invoke-virtual {v1}, Lbe/w;->c()Landroidx/fragment/app/f;

    move-result-object v12

    invoke-static {v12}, LQ/E;->r0(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v4}, Lu9/b;->j()V

    :cond_a
    invoke-virtual {v4}, Lu9/b;->b()Ljava/lang/String;

    move-result-object v17

    iget-object v12, v1, Lv9/c;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lu9/b;->h()I

    move-result v20

    const-string v22, ""

    const/16 v21, 0x0

    move-object/from16 v18, v12

    invoke-static/range {v17 .. v22}, Ls9/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lu9/d;

    move-result-object v12

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v12, v5}, Lu9/d;->J(Ljava/lang/String;)V

    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v12, v6}, Lu9/d;->M(Ljava/lang/String;)V

    :cond_c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v12, v7}, Lu9/d;->H(Ljava/lang/String;)V

    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v12, v3}, Lu9/d;->z(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v4}, Lu9/b;->c()D

    move-result-wide v14

    const-wide/16 v17, 0x0

    cmpl-double v14, v14, v17

    if-lez v14, :cond_f

    invoke-virtual {v4}, Lu9/b;->c()D

    move-result-wide v14

    double-to-int v14, v14

    invoke-virtual {v12, v14}, Lu9/d;->N(I)V

    :cond_f
    invoke-virtual {v4}, Lu9/b;->k()Z

    move-result v14

    invoke-virtual {v12, v14}, Lu9/d;->A(Z)V

    invoke-virtual {v4}, Lu9/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lu9/d;->F(Ljava/lang/String;)V

    invoke-static {}, Ls9/a;->x()Ls9/a;

    move-result-object v4

    invoke-virtual {v1}, Lbe/w;->c()Landroidx/fragment/app/f;

    move-result-object v14

    invoke-virtual {v4, v14, v12}, Ls9/a;->m(Landroid/content/Context;Lu9/d;)V

    goto/16 :goto_4

    :cond_10
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_5
    move-object v8, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v2}, LIc/D;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_5

    :goto_6
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, LIc/C;->I()LIc/u;

    move-result-object v2

    invoke-virtual {v2}, LIc/u;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, LIc/C;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    new-instance v2, Landroid/webkit/WebResourceResponse;

    move-object v3, v9

    move v5, v10

    move-object v6, v11

    move-object v4, v13

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v16
.end method

.method private G(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 12

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, LIc/A$a;

    invoke-direct {v2}, LIc/A$a;-><init>()V

    invoke-virtual {v2, p2}, LIc/A$a;->n(Ljava/lang/String;)LIc/A$a;

    move-result-object p2

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "X-Requested-With"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lbe/w;->m:LGd/H;

    invoke-static {v4}, LQ/E;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2, v3, v2}, LIc/A$a;->a(Ljava/lang/String;Ljava/lang/String;)LIc/A$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, LIc/A$a;->d()LIc/A$a;

    invoke-virtual {p2}, LIc/A$a;->b()LIc/A;

    move-result-object p1

    invoke-static {}, Lo9/a;->a()LIc/y;

    move-result-object p2

    invoke-virtual {p2, p1}, LIc/y;->b(LIc/A;)LIc/e;

    move-result-object p1

    invoke-interface {p1}, LIc/e;->execute()LIc/C;

    move-result-object p1

    invoke-virtual {p1}, LIc/C;->m()I

    move-result v5

    invoke-virtual {p1}, LIc/C;->M()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p2, "OK"

    :cond_3
    move-object v6, p2

    invoke-virtual {p1}, LIc/C;->d()LIc/D;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, LIc/C;->close()V

    return-object v1

    :cond_4
    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {p2}, LIc/D;->contentType()LIc/x;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, LIc/x;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, LIc/x;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, LIc/x;->c()Ljava/nio/charset/Charset;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, LIc/x;->c()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    :cond_5
    const-string v4, "Content-Type"

    invoke-virtual {p1, v4}, LIc/C;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x0

    if-lez v7, :cond_6

    aget-object v7, v4, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    move-object v2, v7

    :cond_6
    array-length v7, v4

    :goto_1
    if-ge v8, v7, :cond_8

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "charset="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v3, "\""

    invoke-virtual {v9, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "\'"

    invoke-virtual {v3, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    move-object v4, v3

    move-object v3, v2

    invoke-virtual {p2}, LIc/D;->byteStream()Ljava/io/InputStream;

    move-result-object v8

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, LIc/C;->I()LIc/u;

    move-result-object p2

    invoke-virtual {p2}, LIc/u;->f()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, LIc/C;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    new-instance v2, Landroid/webkit/WebResourceResponse;

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private H()V
    .locals 5

    sget-object v0, Lbe/w;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbe/w;->q:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lbe/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0}, Ls9/c;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lbe/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private I(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v0, p1, p2, v4}, Lvdmod/NavConfirm;->ask(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lvdmod/NavConfirm$Callback;)Z

    move-result v4

    if-eqz v4, :cond_vdnav

    const/4 p1, 0x1

    return p1

    :cond_vdnav
    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0, p2}, Lae/f;->B1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "http:"

    const-string v2, "https:"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->w()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    iget-boolean v2, v0, Lbe/l;->m:Z

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lbe/l;->t()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lbe/l;->e0(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lbe/w;->m:LGd/H;

    invoke-static {v2, v0}, LQ/E;->g1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->t()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    iget-object v2, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0, v2}, LGd/H;->e2(Lbe/l;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->y()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lbe/w;->D(Ljava/lang/String;Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    invoke-direct {p0, p2, p1}, Lbe/w;->A(Ljava/lang/String;Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, p1, p2, v0}, Lbe/w;->B(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public static synthetic r(Lbe/w;Landroid/webkit/WebView;)V
    .locals 0

    iget-object p0, p0, Lbe/w;->m:LGd/H;

    invoke-static {p0}, LQ/E;->o0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s(Lbe/w;Landroid/webkit/WebView;)V
    .locals 0

    iget-object p0, p0, Lbe/w;->m:LGd/H;

    invoke-static {p0}, LQ/E;->n0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Landroid/os/Message;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic u(Landroid/os/Message;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic v(Lbe/w;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, LQ/T;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic w(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/HttpAuthHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x(Lbe/w;Landroid/webkit/WebView;)V
    .locals 0

    iget-object p0, p0, Lbe/w;->m:LGd/H;

    invoke-static {p0}, LQ/E;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(Landroid/webkit/HttpAuthHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public static synthetic z(Lbe/w;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public c()Landroidx/fragment/app/f;
    .locals 1

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbe/l;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected m(Landroidx/fragment/app/f;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, LQd/a;->e()LQd/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LQd/a;->f(Landroidx/fragment/app/f;Ljava/lang/String;)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    sget v1, LFd/g;->M0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    sget v1, LFd/g;->g0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->g(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->b(Z)Landroidx/appcompat/app/c$a;

    move-result-object v0

    iget-object v1, p0, Lbe/w;->m:LGd/H;

    sget v2, LFd/g;->i:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbe/r;

    invoke-direct {v2, p3}, Lbe/r;-><init>(Landroid/os/Message;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->l(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p3

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    sget v1, LFd/g;->d:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbe/s;

    invoke-direct {v1, p2}, Lbe/s;-><init>(Landroid/os/Message;)V

    invoke-virtual {p3, v0, v1}, Landroidx/appcompat/app/c$a;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    iget-object p2, p0, Lbe/w;->m:LGd/H;

    invoke-static {p2, p1}, LQ/a;->e(Landroid/content/Context;Landroidx/appcompat/app/c$a;)Landroidx/appcompat/app/c;

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, LGd/H;->l2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, LGd/H;->G1(Z)V

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, LGd/H;->I1(Z)V

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    const-string v0, "about:blank"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "http"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v3, v0}, Lbe/l;->S(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->N()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0, v1}, Lbe/l;->g0(Z)V

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0, p2}, Lp9/b;->g0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x5dc

    if-nez v0, :cond_4

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0, p2}, Lp9/b;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0, p2}, Lp9/b;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lbe/u;

    invoke-direct {v0, p0, p1}, Lbe/u;-><init>(Lbe/w;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0, p2}, Lp9/b;->d0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lbe/v;

    invoke-direct {v0, p0, p1}, Lbe/v;-><init>(Lbe/w;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lbe/t;

    invoke-direct {v0, p0, p1}, Lbe/t;-><init>(Lbe/w;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0, v1}, Lbe/l;->j0(Z)V

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    iget-object v1, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0, v1}, LGd/H;->f2(Lbe/l;)V

    invoke-super {p0, p1, p2}, LT/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {p1}, Lbe/l;->M()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    invoke-static {p1, p2}, LUd/q;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    const-string v0, "guide_module"

    const-string v1, "top10_play_details_page_show"

    invoke-static {p1, v0, v1}, LQ/Z;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    const-string p2, "browse_start"

    invoke-static {p1, p2}, LNa/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_7
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, LT/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, LMa/a;->a()LMa/a;

    move-result-object p1

    iget-object p3, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1, p3, p2}, LMa/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/w;->n:Lbe/l;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lbe/l;->j0(Z)V

    iget-object p1, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {p1}, Lbe/l;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, LGd/H;->l2(Ljava/lang/String;Z)V

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1}, LGd/H;->P1()V

    :cond_0
    iget-object p1, p0, Lbe/w;->m:LGd/H;

    iget-object p3, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {p1, p3}, LGd/H;->f2(Lbe/l;)V

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    const/4 p3, 0x2

    invoke-static {p1, p3}, LQ/j;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    sget v0, LFd/b;->J:I

    invoke-static {p1, p3, v0}, LOa/a;->e(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, LT/c;->o(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {p1}, Lbe/l;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    invoke-static {p1}, LQ/S;->j(Landroid/content/Context;)I

    move-result p1

    iget-object p3, p0, Lbe/w;->m:LGd/H;

    invoke-static {p3}, LQ/E;->z(Landroid/content/Context;)I

    move-result p3

    if-le p1, p3, :cond_1

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    invoke-static {p1, p2}, Ls9/c;->N0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1}, LGd/H;->Z1()V

    invoke-static {}, LPd/g;->u()LPd/g;

    move-result-object p1

    iget-object p2, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1, p2}, LPd/g;->s(Landroid/app/Activity;)V

    return-void

    :cond_1
    iget-object p1, p0, Lbe/w;->m:LGd/H;

    invoke-virtual {p1}, LGd/H;->X0()V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, LMa/a;->a()LMa/a;

    move-result-object p3

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    if-nez p1, :cond_0

    const-string p1, "a"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, v0, p1}, LMa/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p4}, LQ/T;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lbe/w;->m:LGd/H;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "website_open_error_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, LQ/Z;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object p3, p0, Lbe/w;->m:LGd/H;

    invoke-direct {p1, p3}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lbe/w;->m:LGd/H;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, LFd/e;->q:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, LFd/c;->y:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, LFd/c;->z:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget v2, LFd/c;->x:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lbe/w;->m:LGd/H;

    sget v4, LFd/g;->Z:I

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v3, v4, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object p3

    sget p4, LFd/g;->O0:I

    invoke-virtual {p3, p4}, Landroidx/appcompat/app/c$a;->p(I)Landroidx/appcompat/app/c$a;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroidx/appcompat/app/c$a;->b(Z)Landroidx/appcompat/app/c$a;

    move-result-object p3

    sget p4, LFd/g;->O0:I

    new-instance v0, Lbe/p;

    invoke-direct {v0, v1, v2, p2}, Lbe/p;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p3

    sget p4, LFd/g;->b:I

    new-instance v0, Lbe/q;

    invoke-direct {v0, p2}, Lbe/q;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    iget-object p2, p0, Lbe/w;->m:LGd/H;

    invoke-static {p2, p1}, LQ/a;->e(Landroid/content/Context;Landroidx/appcompat/app/c$a;)Landroidx/appcompat/app/c;

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 10

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    const-wide/16 v2, 0x15e

    const-wide/32 v4, 0xea60

    const-string v6, "//"

    const-string v7, "/"

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {v0}, Lbe/l;->w()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "/videos/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lbe/w;->m:LGd/H;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedHttpError OpenUrlEvent:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, LQ/l;->Q0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcd/c;->c()Lcd/c;

    move-result-object p1

    new-instance p3, LL/g;

    const/4 v0, 0x1

    invoke-direct {p3, p2, v0}, LL/g;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p3}, Lcd/c;->l(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lbe/w;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lv9/c;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/media/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    if-le p3, v9, :cond_5

    invoke-direct {p0}, Lbe/w;->H()V

    move p3, v8

    :goto_0
    sget-object v0, Lbe/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    aget-object v0, p2, v9

    sget-object v1, Lbe/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p3, p0, Lbe/w;->o:Landroidx/collection/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v9

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lbe/w;->p:J

    sub-long/2addr p2, v0

    cmp-long p2, p2, v4

    if-lez p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lbe/w;->p:J

    sget-object p2, Lbe/a;->a:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lbe/o;

    invoke-direct {p3, p1}, Lbe/o;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    const/16 v0, 0x1ad

    if-ne p3, v0, :cond_5

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lv9/c;->a:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    if-le p3, v9, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v8

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v9

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lbe/w;->o:Landroidx/collection/b;

    invoke-virtual {p3, p2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p2, p0, Lbe/w;->n:Lbe/l;

    invoke-virtual {p2}, Lbe/l;->P()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lbe/w;->p:J

    sub-long/2addr p2, v0

    cmp-long p2, p2, v4

    if-lez p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lbe/w;->p:J

    sget-object p2, Lbe/a;->a:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lbe/o;

    invoke-direct {p3, p1}, Lbe/o;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    iget-object v0, p0, Lbe/w;->m:LGd/H;

    invoke-static {v0}, LQ/E;->c1(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lbe/w;->m:LGd/H;

    if-nez p1, :cond_1

    const-string p1, "a"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "webViewCrash"

    invoke-static {v0, v1, p1}, LQ/Z;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/applovin/impl/adview/F;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcd/c;->c()Lcd/c;

    move-result-object p1

    new-instance p2, LRd/d;

    invoke-direct {p2}, LRd/d;-><init>()V

    invoke-virtual {p1, p2}, Lcd/c;->l(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbe/w;->m:LGd/H;

    invoke-static {v1}, Lae/f;->z1(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbe/w;->m:LGd/H;

    iget-object v2, p0, Lv9/c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lp9/b;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbe/w;->m:LGd/H;

    iget-object v2, p0, Lv9/c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lp9/b;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, ".m3u8?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, p2, v0}, Lbe/w;->F(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, v0}, Lbe/w;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2, v0}, Lbe/w;->G(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-super {p0, p1, p2}, LT/c;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbe/w;->I(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lbe/w;->I(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
