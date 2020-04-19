.class public Lus/zoom/zrp/ZRPPanelActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "ZRPPanelActivity.java"

# interfaces
.implements Lus/zoom/zrp/ZRPPanelFragment$Listener;
.implements Lus/zoom/zrp/ZRPReserveFragment$Listener;


# instance fields
.field private backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

.field private panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

.field private reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

.field private settingsFragment:Lus/zoom/zrp/ZRPSettingsFragment;

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/ZRPPanelActivity;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelActivity;->timerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrp/ZRPPanelActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelActivity;->loadBackgroundImageToView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initBackgroundImage()V
    .locals 3

    .line 247
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->getZRPPanelBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 248
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    new-instance v1, Lus/zoom/zrp/ZRPPanelActivity$2;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelActivity$2;-><init>(Lus/zoom/zrp/ZRPPanelActivity;)V

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->addListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    .line 257
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZrpBackgroundImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private loadBackgroundImageToView(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x4c

    .line 264
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    sget v1, Lus/zoom/zrcbox/R$id;->zrp_main_background:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {p1}, Lus/zoom/zrc/utils/ZRCImageLoader;->deleteUselessFiles()V

    :cond_0
    return-void
.end method

.method private onTimerForCheckOperationTime()V
    .locals 3

    .line 191
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getBrightnessHelper()Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isDimControllerScreenEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isOutOfOperationTime()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->setDimScreen(Z)V

    return-void
.end method

.method private onTimerForRefreshCalendarAccessToken()V
    .locals 1

    .line 187
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->refreshCalendarAccessToken()V

    return-void
.end method

.method private onZRPBackgroundImageChanged()V
    .locals 3

    .line 234
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZrpBackgroundImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    .line 239
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->deleteUselessFiles()V

    .line 240
    sget v0, Lus/zoom/zrcbox/R$id;->zrp_main_background:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/zoom/zrp/ZRPPanelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected handleBatteryChange(Landroid/content/Intent;)V
    .locals 6

    .line 201
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->handleBatteryChange(Landroid/content/Intent;)V

    const-string v0, "status"

    const/4 v1, -0x1

    .line 202
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "level"

    .line 205
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    .line 206
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v1, v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    const/16 p1, 0x400

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    if-nez v0, :cond_2

    .line 209
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->setSupportAutoRotate()V

    .line 60
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setLayoutFullScreen(Landroid/view/Window;)V

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setStatusBarColor(Landroid/view/Window;I)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPPanelActivity;->setBrightnessPolicy(I)V

    .line 66
    sget p1, Lus/zoom/zrcbox/R$layout;->zrp_main_layout:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPPanelActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->checkIsInit()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelActivity;->initBackgroundImage()V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 75
    sget v0, Lus/zoom/zrcbox/R$id;->zrp_main_content:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/ZRPPanelFragment;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    .line 76
    sget-object v0, Lus/zoom/zrp/ZRPSettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/ZRPSettingsFragment;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->settingsFragment:Lus/zoom/zrp/ZRPSettingsFragment;

    .line 77
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {v0}, Lus/zoom/zrp/ZRPPanelFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    .line 79
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 80
    sget v1, Lus/zoom/zrcbox/R$id;->zrp_main_content:I

    iget-object v2, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 81
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 83
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-virtual {v0, p0}, Lus/zoom/zrp/ZRPPanelFragment;->setListener(Lus/zoom/zrp/ZRPPanelFragment$Listener;)V

    .line 85
    sget-object v0, Lus/zoom/zrp/ZRPReserveFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrp/ZRPReserveFragment;

    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity;->reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

    .line 86
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity;->reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1, p0}, Lus/zoom/zrp/ZRPReserveFragment;->setListener(Lus/zoom/zrp/ZRPReserveFragment$Listener;)V

    .line 90
    :cond_2
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->startGettingReleaseNote()V

    .line 92
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 123
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onDestroy()V

    .line 125
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lus/zoom/zrc/lightbar/LightBarManager;->getDefault()Lus/zoom/zrc/lightbar/LightBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/lightbar/LightBarManager;->turnOffLightBar()V

    .line 127
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendZRPStateEvent(I)V

    .line 128
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->cancelGettingReleaseNote()V

    .line 131
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->backgroundImageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    :cond_1
    return-void
.end method

.method public onExitReserveFragment()V
    .locals 1

    .line 158
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lus/zoom/zrp/ZRPPanelFragment;->startCloseReserveViewAnimation()V

    :cond_0
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
    .locals 2

    .line 117
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onPause()V

    .line 118
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallback(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedPropertyChangedCallback(Landroidx/databinding/Observable;I)V

    .line 228
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrpBackgroundImgUrl:I

    if-ne p1, p2, :cond_0

    .line 229
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelActivity;->onZRPBackgroundImageChanged()V

    :cond_0
    return-void
.end method

.method public onReserveButtonClicked()V
    .locals 3

    .line 150
    new-instance v0, Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {v0}, Lus/zoom/zrp/ZRPReserveFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

    .line 151
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/ZRPReserveFragment;->setSelfRoom(Z)V

    .line 152
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-virtual {v0, p0}, Lus/zoom/zrp/ZRPReserveFragment;->setListener(Lus/zoom/zrp/ZRPReserveFragment$Listener;)V

    .line 153
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->reserveFragment:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lus/zoom/zrp/ZRPReserveFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 103
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->timerHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrp/ZRPPanelActivity$1;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelActivity$1;-><init>(Lus/zoom/zrp/ZRPPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity;->timerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSettingsClicked()V
    .locals 3

    .line 140
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->settingsFragment:Lus/zoom/zrp/ZRPSettingsFragment;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lus/zoom/zrp/ZRPSettingsFragment;

    invoke-direct {v0}, Lus/zoom/zrp/ZRPSettingsFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->settingsFragment:Lus/zoom/zrp/ZRPSettingsFragment;

    .line 143
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->settingsFragment:Lus/zoom/zrp/ZRPSettingsFragment;

    invoke-virtual {v0}, Lus/zoom/zrp/ZRPSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity;->settingsFragment:Lus/zoom/zrp/ZRPSettingsFragment;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lus/zoom/zrp/ZRPSettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrp/ZRPSettingsFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTimer()V
    .locals 4

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelActivity;->panelFragment:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/ZRPPanelFragment;->onTimer(Ljava/util/Calendar;)V

    .line 169
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 170
    instance-of v3, v2, Lus/zoom/zrp/ZRPReserveFragment;

    if-eqz v3, :cond_0

    .line 171
    check-cast v2, Lus/zoom/zrp/ZRPReserveFragment;

    .line 172
    invoke-virtual {v2}, Lus/zoom/zrp/ZRPReserveFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {v2, v0}, Lus/zoom/zrp/ZRPReserveFragment;->onTimer(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 179
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelActivity;->onTimerForCheckOperationTime()V

    .line 182
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->checkIfNeedGetProfileAmendment()V

    .line 183
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelActivity;->onTimerForRefreshCalendarAccessToken()V

    return-void
.end method
