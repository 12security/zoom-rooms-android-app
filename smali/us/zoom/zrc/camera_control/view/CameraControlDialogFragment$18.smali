.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;
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

.field final synthetic val$isShowingPresetDefault:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;ZI)V
    .locals 0

    .line 656
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    iput-boolean p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->val$isShowingPresetDefault:Z

    iput p3, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 660
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->val$isShowingPresetDefault:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->val$index:I

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->setCameraDefaultPosition(ZI)V

    .line 663
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$600(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->dismiss()V

    return-void
.end method
