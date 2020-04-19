.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showPresetPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;I)V
    .locals 0

    .line 621
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    iput p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 625
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;->val$index:I

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->saveCameraPosition(I)V

    .line 628
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$600(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->dismiss()V

    return-void
.end method
