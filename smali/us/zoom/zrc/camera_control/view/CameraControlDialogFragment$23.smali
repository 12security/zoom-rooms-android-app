.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$23;
.super Lus/zoom/androidlib/util/EventAction;
.source "CameraControlDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showPassCodeForLockDialog()V
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

    .line 791
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$23;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 3

    .line 794
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$23;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$802(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Z)Z

    .line 795
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    .line 796
    check-cast p1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 797
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$23;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->correct_passcode_for_changing_camera_preset:I

    invoke-virtual {v0, v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
