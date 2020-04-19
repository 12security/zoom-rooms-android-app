.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.super Lus/zoom/zrc/camera_control/ctrl/CameraController;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$GoToPresetCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;,
        Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;
    }
.end annotation


# static fields
.field public static final MINIMAL_AMOUNT_SWITCHABLE_CAMERAS:I = 0x2


# instance fields
.field private currentType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraController;-><init>()V

    .line 41
    sget-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    iput-object v0, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->currentType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/ConfApp;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->ctrlLocalCam(Lus/zoom/zrcsdk/ConfApp;II)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->ctrlShareCam(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;II)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->goToPresetCam(Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/PTApp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p6}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->namePreset(Lus/zoom/zrcsdk/PTApp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->setCameraPreset(Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrcsdk/PTApp;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->turnCameraIntelligentZoomOn(Lus/zoom/zrc/model/AppModel;Lus/zoom/zrcsdk/PTApp;Z)V

    return-void
.end method

.method private basicCameraControl(Lus/zoom/zrcsdk/ConfApp;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    .line 504
    invoke-virtual {p1, v0, v1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->controlCamera(ILjava/lang/String;II)I

    return-void
.end method

.method private ctrlLocalCam(Lus/zoom/zrcsdk/ConfApp;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->controlMyCamera(II)I

    return-void
.end method

.method private ctrlShareCam(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;II)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 494
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4}, Lus/zoom/zrcsdk/ConfApp;->controlShareCamera(Ljava/lang/String;II)I

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSwitchableCameraList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 165
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 173
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private goToPresetCam(Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lus/zoom/zrcsdk/PTApp;->goToCameraPreset(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private namePreset(Lus/zoom/zrcsdk/PTApp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    move v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 537
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->nameCameraPreset(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private setCameraPreset(Lus/zoom/zrcsdk/PTApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lus/zoom/zrcsdk/PTApp;->setCameraPreset(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private turnCameraIntelligentZoomOn(Lus/zoom/zrc/model/AppModel;Lus/zoom/zrcsdk/PTApp;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p2, p3}, Lus/zoom/zrcsdk/PTApp;->setCameraIntelligentZoomOn(Z)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canCurrentCameraCanBeControlled(Lus/zoom/zrc/model/AppModel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCan_control_camera()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canSwitchCamera(Lus/zoom/zrc/model/AppModel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCanSwitchCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkPrivilegeForChangingPreset(Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$View;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isSettingsLocked()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 144
    :cond_1
    invoke-interface {p2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->showPassCodeForLockDialog()V

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public currentSelectedCamera(Lus/zoom/zrc/model/AppModel;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 1

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
    .locals 1

    .line 570
    iget-object v0, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->currentType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-object v0
.end method

.method public isCameraIntelligentZoomAvailable(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCameraIntelligentZoomAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCameraIntelligentZoomOn(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCameraIntelligentZoomOn()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_self_video_mirrored()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCurrentCameraSharing(Lus/zoom/zrc/model/AppModel;)Z
    .locals 2

    .line 584
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCurrentCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVideoOn(Lus/zoom/zrc/model/AppModel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic run(Lus/zoom/zrc/camera_control/model/Executable;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lus/zoom/zrc/camera_control/ctrl/CameraController;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void
.end method

.method public setCurrentCameraControlType(Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->currentType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method

.method public sizeOfCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)I
    .locals 0

    .line 183
    invoke-static {p1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
