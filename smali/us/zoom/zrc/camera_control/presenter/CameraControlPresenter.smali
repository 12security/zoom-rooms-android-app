.class public Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;
.super Ljava/lang/Object;
.source "CameraControlPresenter.java"

# interfaces
.implements Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;


# static fields
.field private static final RUNNABLE_POST_DELAY:I = 0x12c


# instance fields
.field private final callbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

.field private final cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

.field private handler:Landroid/os/Handler;

.field private mAppModel:Lus/zoom/zrc/model/AppModel;

.field private final mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;

.field private mContext:Landroid/content/Context;

.field private mContinueManipulatingCameraRunnable:Lus/zoom/zrc/camera_control/model/EventRunnable;

.field private mPTApp:Lus/zoom/zrcsdk/PTApp;

.field private mStartContinueManipulatingCamera:Z

.field private manager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

.field private shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/view/ICameraControl$View;Landroid/content/Context;)V
    .locals 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$1;-><init>(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->callbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;-><init>(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContinueManipulatingCameraRunnable:Lus/zoom/zrc/camera_control/model/EventRunnable;

    .line 200
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-direct {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 201
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    .line 202
    iput-object p2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/view/ICameraControl$View;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/model/AppModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/model/CameraShareData;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mStartContinueManipulatingCamera:Z

    return p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/ctrl/CameraControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/model/EventRunnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContinueManipulatingCameraRunnable:Lus/zoom/zrc/camera_control/model/EventRunnable;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->toRemoveHandleCallback()V

    return-void
.end method

.method private handlePost(II)V
    .locals 7

    .line 612
    new-instance v6, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v3

    iget-object v4, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    const/4 v2, 0x1

    move-object v0, v6

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 613
    new-instance p2, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, v0, v6}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 614
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContinueManipulatingCameraRunnable:Lus/zoom/zrc/camera_control/model/EventRunnable;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/camera_control/model/EventRunnable;->setEvent(Lus/zoom/zrc/camera_control/model/CameraControlEvent;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 617
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->setStartContinueManipulatingCamera(Z)V

    .line 619
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContinueManipulatingCameraRunnable:Lus/zoom/zrc/camera_control/model/EventRunnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private querySelectedSharingCameraName()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 660
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v2

    .line 662
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 663
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 664
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private setStartContinueManipulatingCamera(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mStartContinueManipulatingCamera:Z

    return-void
.end method

.method private toRemoveHandleCallback()V
    .locals 2

    .line 605
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContinueManipulatingCameraRunnable:Lus/zoom/zrc/camera_control/model/EventRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uninstallCameraPresetsManager()V
    .locals 1

    .line 552
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->manager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    return-void
.end method


# virtual methods
.method public attachCameraControlListener(Lus/zoom/zrc/model/AppEngine;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->callbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addCameraControlListener(Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;)V

    return-void
.end method

.method public camDown(I)V
    .locals 8

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_0

    .line 287
    new-instance v7, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v6, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 288
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 289
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handlePost(II)V

    :cond_0
    return-void
.end method

.method public camLeft(I)V
    .locals 8

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored()Z

    move-result v0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 305
    :goto_1
    new-instance v7, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v6, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    move-object v1, v7

    move v2, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 306
    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 307
    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    .line 309
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handlePost(II)V

    :cond_2
    return-void
.end method

.method public camRight(I)V
    .locals 8

    .line 320
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored()Z

    move-result v0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    .line 324
    :goto_1
    new-instance v7, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v6, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    move-object v1, v7

    move v2, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 325
    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 326
    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    .line 328
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handlePost(II)V

    :cond_2
    return-void
.end method

.method public camUp(I)V
    .locals 8

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_0

    .line 271
    new-instance v7, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v6, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 272
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ShiftCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 273
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handlePost(II)V

    :cond_0
    return-void
.end method

.method public done(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;
    .locals 1

    .line 535
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->callbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    return-object v0
.end method

.method public injectAppModel(Lus/zoom/zrc/model/AppModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-void

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppModel instance can\'t be null forever. If null, something wrong must happen."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public injectConfApp(Lus/zoom/zrcsdk/ConfApp;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppModel instance can\'t be null forever. If null, something wrong must happen."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public injectPTApp(Lus/zoom/zrcsdk/PTApp;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 228
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PTApp instance can\'t be null forever. If null, something wrong must happen."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public installCameraPresetsManager()V
    .locals 2

    .line 543
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-static {}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->getManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->manager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    .line 547
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->manager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setCameraPresetsManager(Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;)V

    return-void
.end method

.method public isCurrentCameraSharing()Z
    .locals 2

    .line 650
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraSharing(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    return v0
.end method

.method public loadCameraControlView(Lus/zoom/zrc/camera_control/model/CameraShareData;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 478
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    .line 479
    sget-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 481
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->updateNavigationTitle(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setDoneHidden(Z)V

    .line 483
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setCameraSharingHintHidden(Z)V

    .line 484
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setBottomLineHidden(Z)V

    .line 487
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->canCurrentCameraCanBeControlled(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCanCurrentCameraBeControlledChanged(Z)V

    .line 490
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraPresetsChanged()V

    .line 493
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onOwnVideoMirroredChanged(Z)V

    .line 496
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->canSwitchCamera(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCanSwitchCameraChanged(Z)V

    .line 499
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isVideoOn(Lus/zoom/zrc/model/AppModel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onMyVideoStatusChanged(Z)V

    .line 502
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->currentSelectedCamera(Lus/zoom/zrc/model/AppModel;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCameraListChanged(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 505
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCameraIntelligentZoomOn(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCameraIntelligentZoomOnChanged(Z)V

    .line 508
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCameraIntelligentZoomAvailable(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCameraIntelligentZoomAvailableChanged(Z)V

    .line 511
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCameraIntelligentZoomAvailable(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 512
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCurrentCameraIntelligentZoomStatus()Z

    goto :goto_2

    .line 515
    :cond_1
    sget-object p2, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    if-ne p2, v0, :cond_4

    .line 516
    iget-object p2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-direct {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->querySelectedSharingCameraName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->updateShareCameraName(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isLocalCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 518
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object p2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCurrentCameraMirrored(Lus/zoom/zrc/model/AppModel;)Z

    move-result p2

    invoke-interface {p1, p2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onOwnVideoMirroredChanged(Z)V

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p2

    invoke-interface {p1, p2}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 522
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setCameraSharingHintHidden(Z)V

    .line 523
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setIntelligentZoomHidden(Z)V

    .line 524
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setSwitchCameraHidden(Z)V

    .line 525
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 526
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setDoneHidden(Z)V

    goto :goto_1

    .line 528
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setDoneHidden(Z)V

    .line 530
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setBottomLineHidden(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onGoToPreset(I)V
    .locals 3

    .line 447
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setCameraPresetClickable(Z)V

    .line 450
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-direct {v0, v1, v2, p1}, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;-><init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;I)V

    .line 451
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$GoToPresetCameraControlEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$GoToPresetCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {p1, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void
.end method

.method public onPresetOperations(I)V
    .locals 3

    .line 457
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->checkPrivilegeForChangingPreset(Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {v0, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->showPresetPopupWindow(I)V

    return-void
.end method

.method public provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;
    .locals 1

    .line 568
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    return-object v0
.end method

.method public provideSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;
    .locals 1

    .line 577
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 588
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 589
    iput-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    .line 591
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    if-eqz v0, :cond_1

    .line 592
    iput-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 594
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    if-eqz v0, :cond_2

    .line 595
    iput-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 597
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->uninstallCameraPresetsManager()V

    return-void
.end method

.method public removeCameraControlListener(Lus/zoom/zrc/model/AppEngine;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->callbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->removeCameraControlListener(Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;)V

    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .locals 3

    .line 389
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {v0, p1, p2}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setNameOfCameraPreset(ILjava/lang/String;)V

    .line 392
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->setNameForPreset(ILjava/lang/String;)V

    .line 395
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-direct {v0, v1, v2, p1, p2}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;-><init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;ILjava/lang/String;)V

    .line 396
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance p2, Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void
.end method

.method public saveCameraPosition(I)V
    .locals 3

    .line 424
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-direct {v0, v1, v2, p1}, Lus/zoom/zrc/camera_control/model/eventparam/SetCameraPresetEventParameters;-><init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;I)V

    .line 425
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SetCameraPresetCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {p1, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    .line 428
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->showProgressingDialog()V

    return-void
.end method

.method public setCameraDefaultPosition(ZI)V
    .locals 7

    .line 433
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->currentSelectedCamera(Lus/zoom/zrc/model/AppModel;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lus/zoom/zrcsdk/PTApp;->setCameraPresetDefaultPosition(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 4

    .line 339
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    iget-object v3, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->callbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-direct {v0, v1, v2, v3, p1}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;-><init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 340
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {p1, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void
.end method

.method public switchIntelligentZoom(Z)V
    .locals 4

    .line 371
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setIntelligentZoomEnable(ZJ)V

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->setIntelligentZoomEnable(ZJ)V

    .line 375
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-direct {v0, v1, v2, p1}, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;-><init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;Z)V

    .line 376
    iget-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {p1, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void
.end method

.method public switchVideoMirror()V
    .locals 4

    .line 359
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-nez v2, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    new-instance v3, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;

    invoke-virtual {v2}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;-><init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V

    .line 363
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v3}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$MirrorCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public toRenameOfPreset(I)V
    .locals 2

    const-string v0, ""

    .line 408
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->nameOfPresetAtIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    invoke-interface {v1, p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->showRenamePresetDialog(ILjava/lang/String;)V

    return-void
.end method

.method public updateCameraControlStatus()V
    .locals 3

    .line 672
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->canCurrentCameraCanBeControlled(Lus/zoom/zrc/model/AppModel;)Z

    move-result v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCanCurrentCameraBeControlledChanged(Z)V

    .line 674
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mCameraControlView:Lus/zoom/zrc/camera_control/view/ICameraControl$View;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->isCameraIntelligentZoomOn(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Z

    move-result v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/camera_control/view/ICameraControl$View;->onCameraIntelligentZoomOnChanged(Z)V

    :cond_0
    return-void
.end method

.method public zoomIn(I)V
    .locals 8

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_0

    .line 239
    new-instance v7, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;

    const/4 v2, 0x4

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v6, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 240
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 241
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    const/4 v0, 0x4

    .line 243
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handlePost(II)V

    :cond_0
    return-void
.end method

.method public zoomOut(I)V
    .locals 8

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->shareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_0

    .line 255
    new-instance v7, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;

    const/4 v2, 0x5

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object v6, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->mAppModel:Lus/zoom/zrc/model/AppModel;

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;-><init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V

    .line 256
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    .line 257
    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    const/4 v0, 0x5

    .line 259
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->handlePost(II)V

    :cond_0
    return-void
.end method
