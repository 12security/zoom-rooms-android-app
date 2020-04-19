.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 283
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 286
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$100(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$200(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$200(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v0, v1, :cond_1

    .line 292
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 293
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored()Z

    move-result p1

    if-eq p1, p2, :cond_2

    .line 294
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->switchVideoMirror()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_self_video_mirrored()Z

    move-result p1

    if-eq p1, p2, :cond_2

    .line 298
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->switchVideoMirror()V

    :cond_2
    :goto_0
    return-void
.end method
