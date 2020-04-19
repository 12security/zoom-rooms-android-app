.class public Lus/zoom/zrc/base/app/ScreenBrightnessHelper;
.super Ljava/lang/Object;
.source "ScreenBrightnessHelper.java"


# static fields
.field private static final BRIGHTNESS_DIM:F = 0.1f

.field private static final BRIGHTNESS_NORMAL:F = 0.7f


# instance fields
.field private brightnessPolicy:I

.field private isDimScreen:Z

.field private modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->brightnessPolicy:I

    .line 31
    new-instance v0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper$1;-><init>(Lus/zoom/zrc/base/app/ScreenBrightnessHelper;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->window:Landroid/view/Window;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/app/ScreenBrightnessHelper;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->onOperationTimeStatusChanged()V

    return-void
.end method

.method private dimScreenBrightness()V
    .locals 3

    .line 113
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->getCurrentScreenBrightness()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->updateScreenBrightness(F)V

    const-string v0, "dim screen for out of operation time"

    const/4 v1, 0x0

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen:Z

    :cond_1
    return-void
.end method

.method private getCurrentScreenBrightness()F
    .locals 4

    .line 134
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsChangeScreenBrightness()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getScreenBrightness()F

    move-result v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get screen brightness from vendor os: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->window:Landroid/view/Window;

    if-nez v0, :cond_1

    const-string v0, "WIRED: getCurrentScreenBrightness window is null!"

    .line 143
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 148
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return v0
.end method

.method private handleDimScreen(Z)V
    .locals 2

    .line 101
    iget v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->brightnessPolicy:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 106
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->dimScreenBrightness()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->recoveryScreenBrightness()V

    :goto_0
    return-void
.end method

.method private onOperationTimeStatusChanged()V
    .locals 2

    .line 88
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v0

    .line 89
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isDimControllerScreenEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isOutOfOperationTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isShouldDimScreenFromZR()Z

    move-result v0

    .line 95
    :goto_0
    iget-boolean v1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen:Z

    if-eq v0, v1, :cond_2

    .line 96
    invoke-direct {p0, v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->handleDimScreen(Z)V

    :cond_2
    return-void
.end method

.method private recoveryScreenBrightness()V
    .locals 4

    .line 123
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->getCurrentScreenBrightness()F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->updateScreenBrightness(F)V

    const-string v1, "brighten screen from %f"

    const/4 v2, 0x1

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-boolean v3, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen:Z

    return-void
.end method

.method private updateScreenBrightness(F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsChangeScreenBrightness()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->setScreenBrightness(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "successfully request vendor os to set screen brightness to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to request vendor os set screen brightness to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->window:Landroid/view/Window;

    if-nez v1, :cond_3

    const-string p1, "WIRED: updateScreenBrightness window is null!"

    .line 167
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 171
    :cond_3
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 172
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 173
    iget-object p1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->window:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_4
    :goto_1
    const-string v1, "WIRED: updateScreenBrightness brightness to %f"

    const/4 v2, 0x1

    .line 153
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isDimScreen()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 60
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 49
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 51
    iget v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->brightnessPolicy:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 52
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isShouldDimScreenFromZR()Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->handleDimScreen(Z)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->recoveryScreenBrightness()V

    :goto_0
    return-void
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iget-boolean p1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen:Z

    if-eqz p1, :cond_0

    .line 66
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->recoveryScreenBrightness()V

    .line 68
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 69
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    :cond_0
    return-void
.end method

.method public setBrightnessPolicy(I)V
    .locals 0

    .line 45
    iput p1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->brightnessPolicy:I

    return-void
.end method

.method public setDimScreen(Z)V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen:Z

    if-eq v0, p1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->handleDimScreen(Z)V

    :cond_0
    return-void
.end method
