.class Lbe/c$1;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Lvdmod/PopupConfirm$Callback;


# instance fields
.field final synthetic c:Lbe/c;

.field final synthetic g:LGd/H;

.field final synthetic h:Landroid/os/Message;


# direct methods
.method constructor <init>(Lbe/c;LGd/H;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lbe/c$1;->c:Lbe/c;

    iput-object p2, p0, Lbe/c$1;->g:LGd/H;

    iput-object p3, p0, Lbe/c$1;->h:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllow()V
    .locals 3

    iget-object v0, p0, Lbe/c$1;->h:Landroid/os/Message;

    iget-object v1, p0, Lbe/c$1;->c:Lbe/c;

    iget-object v1, v1, Lbe/c;->f:Lbe/l;

    iget-object v2, p0, Lbe/c$1;->g:LGd/H;

    invoke-virtual {v2, v0, v1}, LGd/H;->n1(Landroid/os/Message;Lbe/l;)V

    return-void
.end method
