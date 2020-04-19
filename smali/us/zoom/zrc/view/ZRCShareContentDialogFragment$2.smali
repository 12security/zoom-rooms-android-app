.class Lus/zoom/zrc/view/ZRCShareContentDialogFragment$2;
.super Ljava/lang/Object;
.source "ZRCShareContentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$2;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 460
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$2;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$100(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 461
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object p1

    instance-of p1, p1, Lus/zoom/zrc/PTActivity;

    if-eqz p1, :cond_1

    .line 462
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/app/ZMActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$2;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$200(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
