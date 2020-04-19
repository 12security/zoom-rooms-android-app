.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;
.super Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MirrorCameraControlEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 302
    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/model/CameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 4

    .line 307
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;->getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;

    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v1

    .line 312
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v2

    .line 313
    sget-object v3, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v1, v3, :cond_1

    if-eqz v2, :cond_4

    .line 315
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ConfApp;->mirrorOwnVideo(Z)I

    goto :goto_0

    .line 317
    :cond_1
    sget-object v3, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v1, v3, :cond_4

    .line 318
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isLocalCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 321
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ConfApp;->mirrorOwnVideo(Z)I

    :cond_2
    return-void

    .line 325
    :cond_3
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored()Z

    move-result v2

    .line 326
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lus/zoom/zrcsdk/ConfApp;->mirrorShareVideo(ZLjava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method
