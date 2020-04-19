.class public Lus/zoom/zrc/ZRCActivity;
.super Lus/zoom/zrc/base/app/ZRCActivityBase;
.source "ZRCActivity.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;
.implements Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;
.implements Lus/zoom/zrc/model/AppEngine$IWebEvent;
.implements Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/ZRCActivity$ReportItemInfo;,
        Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_POLICY_NONE:I = 0x0

.field public static final BRIGHTNESS_POLICY_OPERATION_TIME:I = 0x1

.field public static final RESULT_CODE:I = 0x11


# instance fields
.field protected batteryStatus:Landroid/content/Intent;

.field private brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

.field private certItemVerifyFailedDialogFragment:Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

.field private dispatchTouchListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field protected intentFilter:Landroid/content/IntentFilter;

.field private isSupportAutoRotate:Z

.field protected isTablet:Z

.field private mPTEventListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field private shouldDismissWaitingDialogOnStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lus/zoom/zrc/ZRCActivity;->shouldDismissWaitingDialogOnStop:Z

    .line 67
    new-instance v0, Lus/zoom/zrc/ZRCActivity$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCActivity$1;-><init>(Lus/zoom/zrc/ZRCActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->dispatchTouchListeners:Ljava/util/Set;

    .line 98
    new-instance v0, Lus/zoom/zrc/ZRCActivity$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCActivity$2;-><init>(Lus/zoom/zrc/ZRCActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->mPTEventListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lus/zoom/zrc/ZRCActivity;->isSupportAutoRotate:Z

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ZRCActivity;Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/ZRCActivity;->audioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/ZRCActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/ZRCActivity;->handleShowWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;->handleDismissWaitingDialog()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/ZRCActivity;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/ZRCActivity;->handleCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V

    return-void
.end method

.method public static addDispatchTouchListener(Landroidx/fragment/app/Fragment;Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 86
    instance-of v0, p0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v0, :cond_0

    .line 87
    check-cast p0, Lus/zoom/zrc/ZRCActivity;

    iget-object p0, p0, Lus/zoom/zrc/ZRCActivity;->dispatchTouchListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private audioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 2

    .line 316
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 320
    :cond_2
    instance-of v0, p0, Lus/zoom/zrc/login/LoginActivity;

    if-eqz v0, :cond_3

    return-void

    .line 321
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 324
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 325
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 328
    :cond_5
    new-instance p1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;-><init>()V

    .line 329
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 331
    check-cast p1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    const-class v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private handleCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 3

    .line 473
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->dismissWaitingDialog()V

    .line 474
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->certItemVerifyFailedDialogFragment:Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->certItemVerifyFailedDialogFragment:Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    .line 477
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->certItemVerifyFailedDialogFragment:Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->certItemVerifyFailedDialogFragment:Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V

    :cond_1
    return-void
.end method

.method private handleDismissWaitingDialog()V
    .locals 1

    .line 405
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private handleShowWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 1

    .line 392
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static removeDispatchTouchListener(Landroidx/fragment/app/Fragment;Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 93
    instance-of v0, p0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v0, :cond_0

    .line 94
    check-cast p0, Lus/zoom/zrc/ZRCActivity;

    iget-object p0, p0, Lus/zoom/zrc/ZRCActivity;->dispatchTouchListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected backToLoginActivity()V
    .locals 1

    .line 362
    new-instance v0, Lus/zoom/zrc/ZRCActivity$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCActivity$3;-><init>(Lus/zoom/zrc/ZRCActivity;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected checkIsInit()Z
    .locals 3

    .line 274
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppEngine;->isInited()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/EntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method

.method public dismissWaitingDialog()V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/ZRCActivity$6;

    const-string v2, "dismissWaitingDialog"

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/ZRCActivity$6;-><init>(Lus/zoom/zrc/ZRCActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 453
    invoke-static {p1}, Lus/zoom/zrc/utils/VolumeKeyUtils;->isVolumeKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {p1}, Lus/zoom/zrc/utils/VolumeKeyUtils;->handleVolumeKey(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 456
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 461
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->dispatchTouchListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;

    .line 462
    invoke-interface {v1, p1}, Lus/zoom/zrc/ZRCActivity$DispatchTouchListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 465
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBrightnessHelper()Lus/zoom/zrc/base/app/ScreenBrightnessHelper;
    .locals 1

    .line 502
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    return-object v0
.end method

.method protected handleBatteryChange(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "status"

    const/4 v1, -0x1

    .line 227
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v6, "level"

    .line 230
    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "scale"

    .line 231
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v1, v1, v6

    int-to-float p1, p1

    div-float p1, v1, p1

    .line 233
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isNoBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 p1, 0x42c80000    # 100.0f

    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    const/high16 p1, 0x42c80000    # 100.0f

    const/4 v0, 0x1

    .line 245
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrc/model/AppModel;->setBatteryLevel(F)V

    .line 246
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/AppModel;->setBatteryCharging(Z)V

    .line 249
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 253
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    if-eq v2, v1, :cond_5

    const/4 v2, 0x7

    if-eq v2, v1, :cond_5

    const/4 v2, 0x6

    if-eq v2, v1, :cond_5

    const/16 v2, 0xa

    if-eq v2, v1, :cond_5

    const/16 v2, 0xb

    if-eq v2, v1, :cond_5

    return-void

    .line 262
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getBatteryLevel()F

    move-result v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    const-string v1, "report battery level:%f, charging:%b"

    .line 263
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lus/zoom/zrcsdk/PTApp;->reportControllerBatteryLevel(FZ)I

    .line 265
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/model/AppModel;->setBatteryReportTime(J)V

    goto :goto_2

    .line 266
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/AppModel;->getBatteryReportTime()J

    move-result-wide v6

    sub-long/2addr v1, v6

    const-wide/32 v6, 0x927c0

    cmp-long v8, v1, v6

    if-lez v8, :cond_7

    const-string v1, "report battery level:%f, charging:%b"

    .line 267
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lus/zoom/zrcsdk/PTApp;->reportControllerBatteryLevel(FZ)I

    .line 269
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/model/AppModel;->setBatteryReportTime(J)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected handleBroadcastReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, p2}, Lus/zoom/zrc/ZRCActivity;->handleBatteryChange(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0, p2}, Lus/zoom/zrc/ZRCActivity;->handlePowerConnect(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p0, p2}, Lus/zoom/zrc/ZRCActivity;->handlePowerDisconnected(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handlePowerConnect(Landroid/content/Intent;)V
    .locals 1

    .line 222
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/PTApp;->reportControllerChargingState(Z)I

    return-void
.end method

.method protected handlePowerDisconnected(Landroid/content/Intent;)V
    .locals 1

    .line 218
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/PTApp;->reportControllerChargingState(Z)I

    return-void
.end method

.method public onCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 3

    .line 485
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/ZRCActivity$7;

    const-string v2, "onCertItemVerifyFailed"

    invoke-direct {v1, p0, v2, p1}, Lus/zoom/zrc/ZRCActivity$7;-><init>(Lus/zoom/zrc/ZRCActivity;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onClose(I)V
    .locals 0

    return-void
.end method

.method public onConnect(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 157
    sget-object v0, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lus/zoom/zrc/ZRCApplication;->sAppLocale:Ljava/util/Locale;

    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->changeLocaleTo(Landroid/content/Context;Ljava/util/Locale;)V

    .line 161
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->setBrightnessPolicy(I)V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->requestWindowFeature(I)Z

    .line 165
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 167
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x200080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 169
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 170
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 172
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInYealinkCP960()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    .line 173
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 176
    :cond_1
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/zrc/ZRCActivity;->isTablet:Z

    .line 177
    iget-boolean v1, p0, Lus/zoom/zrc/ZRCActivity;->isTablet:Z

    if-eqz v1, :cond_4

    .line 178
    iget-boolean v1, p0, Lus/zoom/zrc/ZRCActivity;->isSupportAutoRotate:Z

    if-eqz v1, :cond_3

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    const/16 v1, 0xd

    .line 180
    invoke-virtual {p0, v1}, Lus/zoom/zrc/ZRCActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    .line 182
    invoke-virtual {p0, v1}, Lus/zoom/zrc/ZRCActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    .line 185
    invoke-virtual {p0, v1}, Lus/zoom/zrc/ZRCActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 188
    :cond_4
    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->setRequestedOrientation(I)V

    .line 190
    :goto_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->disableFinishActivityByGesture(Z)V

    .line 193
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 194
    iget-object p1, p0, Lus/zoom/zrc/ZRCActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lus/zoom/zrc/ZRCActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity;->certItemVerifyFailedDialogFragment:Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;

    .line 199
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/model/AppEngine;->addZRConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;)V

    .line 200
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/model/AppEngine;->addSipServiceListener(Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;)V

    .line 201
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->mPTEventListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 202
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/model/AppEngine;->addWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 287
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->onDestroy()V

    .line 288
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;)V

    .line 289
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeSipServiceListener(Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;)V

    .line 290
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ZRCActivity;->mPTEventListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 291
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    .line 292
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 337
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->batteryStatus:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->batteryStatus:Landroid/content/Intent;

    .line 341
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeCertItemVerifyFailedListener(Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;)V

    .line 342
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->onPause()V

    .line 343
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 297
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->onResume()V

    .line 298
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->onResume()V

    .line 299
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    .line 300
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->walkWithAppState()V

    .line 301
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/ZRCActivity;->audioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    .line 302
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addCertItemVerifyFailedListener(Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;)V

    .line 303
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lus/zoom/zrc/ZRCActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/ZRCActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ZRCActivity;->batteryStatus:Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->batteryStatus:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->handleBatteryChange(Landroid/content/Intent;)V

    return-void
.end method

.method public onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 0

    return-void
.end method

.method public onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 0

    return-void
.end method

.method public onSendEmailResult(I)V
    .locals 0

    return-void
.end method

.method public onSendFailed(I)V
    .locals 2

    .line 379
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object p1

    const-string v0, "onSendFailed"

    new-instance v1, Lus/zoom/zrc/ZRCActivity$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ZRCActivity$4;-><init>(Lus/zoom/zrc/ZRCActivity;)V

    invoke-virtual {p1, v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onSendFeedbackFinisheResult(I)V
    .locals 0

    return-void
.end method

.method public onSendReportResult(I)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getLogfilePath()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 309
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->onStop()V

    .line 310
    iget-boolean v0, p0, Lus/zoom/zrc/ZRCActivity;->shouldDismissWaitingDialogOnStop:Z

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->dismissWaitingDialog()V

    :cond_0
    return-void
.end method

.method public onUpdateMySipPhoneAudioResult(I)V
    .locals 0

    return-void
.end method

.method public onUpdateMySipPhoneAudioStatus(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 0

    return-void
.end method

.method protected setBrightnessPolicy(I)V
    .locals 1

    .line 498
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity;->brightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->setBrightnessPolicy(I)V

    return-void
.end method

.method public setShouldDismissWaitingDialogOnStop(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lus/zoom/zrc/ZRCActivity;->shouldDismissWaitingDialogOnStop:Z

    return-void
.end method

.method protected setSupportAutoRotate()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lus/zoom/zrc/ZRCActivity;->isSupportAutoRotate:Z

    return-void
.end method

.method public showWaitingDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0}, Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lus/zoom/zrc/ZRCActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    const-string v1, "showWaitingDialog"

    new-instance v2, Lus/zoom/zrc/ZRCActivity$5;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/ZRCActivity$5;-><init>(Lus/zoom/zrc/ZRCActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method protected walkWithAppState()V
    .locals 0

    return-void
.end method
