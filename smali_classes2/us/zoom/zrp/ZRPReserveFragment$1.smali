.class Lus/zoom/zrp/ZRPReserveFragment$1;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$1;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 295
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 297
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$1;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$000(Lus/zoom/zrp/ZRPReserveFragment;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
