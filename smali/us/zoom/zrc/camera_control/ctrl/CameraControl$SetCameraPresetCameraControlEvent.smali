.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;
.super Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetCameraPresetCameraControlEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 416
    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/model/CameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 8

    .line 424
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;->getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getIndex()I

    move-result v1

    if-ltz v1, :cond_3

    .line 431
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 434
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->access$400(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 429
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index can not be negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
