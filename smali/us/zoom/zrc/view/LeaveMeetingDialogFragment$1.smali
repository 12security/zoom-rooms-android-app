.class Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;
.super Ljava/lang/Object;
.source "LeaveMeetingDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
