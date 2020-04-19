.class Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;
.super Ljava/lang/Object;
.source "CameraControlPresenter.java"

# interfaces
.implements Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraIntelligentZoomFinished(Z)V
    .locals 3

    .line 174
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setIntelligentZoomEnable(ZJ)V

    return-void
.end method

.method public onCameraPresetActionFinished(Z)V
    .locals 1

    .line 76
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setCameraPresetClickable(Z)V

    return-void
.end method

.method public onCameraPresetsChanged()V
    .locals 5

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->numberOfPresets()I

    move-result v1

    const/4 v2, 0x3

    .line 91
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->recoverLost([I)V

    .line 94
    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v2}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object v2

    invoke-interface {v2, v1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setNumberOfPresets(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 98
    iget-object v3, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object v3

    invoke-virtual {v0, v2}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->nameOfPresetAtIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setNameOfCameraPreset(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->cameraPresetDefaultIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCameraPresetDefaultPositionUpdate(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$200(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$200(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$200(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->done(Landroid/app/Dialog;)V

    .line 159
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored()Z

    move-result p1

    invoke-interface {v0, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setMirrorMyVideoOn(Z)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->done(Landroid/app/Dialog;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/Map;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->setNamedPresets(Ljava/util/Map;II)V

    .line 122
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->onCameraPresetsChanged()V

    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 0

    return-void
.end method

.method public onVideoStatusChanged(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 143
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isVideoOn(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onMyVideoStatusChanged(Z)V

    :cond_0
    return-void
.end method
