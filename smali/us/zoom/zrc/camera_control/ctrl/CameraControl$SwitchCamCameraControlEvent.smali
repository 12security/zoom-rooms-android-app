.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;
.super Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchCamCameraControlEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 257
    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/model/CameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 7

    .line 262
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;->getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;

    if-eqz v0, :cond_8

    .line 263
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 266
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCurrentCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v1, v2, :cond_7

    .line 271
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanSwitchToSpecificCamera()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 275
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSwitchableCameraList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 276
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-nez v1, :cond_5

    if-nez v5, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    .line 284
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 285
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    move-result-object v0

    invoke-interface {v0, v4}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onSwitchCameraForVideoResult(Z)V

    goto :goto_3

    .line 279
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getToTargetCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_6

    .line 280
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ConfApp;->switchCameraForVideo()I

    goto :goto_3

    .line 282
    :cond_6
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getToTargetCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ConfApp;->switchVideoToCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    return-void
.end method
