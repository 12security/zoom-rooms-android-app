.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 386
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$300(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 387
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$300(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 388
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$300(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
