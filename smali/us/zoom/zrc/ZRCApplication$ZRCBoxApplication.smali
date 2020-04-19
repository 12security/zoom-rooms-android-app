.class Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;
.super Lus/zoom/zrc/ZRCApplication$IZRCApplication;
.source "ZRCApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZRCBoxApplication"
.end annotation


# instance fields
.field private mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

.field private mRestrictionReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeConfigReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;-><init>(Lus/zoom/zrc/ZRCApplication$1;)V

    .line 212
    new-instance v0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$1;-><init>(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mRestrictionReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$2;-><init>(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mTimeConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication$3;-><init>(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/ZRCApplication$1;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->readRestrictionConfigures()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;Landroid/content/Intent;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->handleTimeConfigChanges(Landroid/content/Intent;)V

    return-void
.end method

.method private adjustFontScale(Landroid/content/res/Configuration;)V
    .locals 3

    .line 361
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 362
    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 363
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 364
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lus/zoom/zrc/ZRCApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 367
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 368
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method private checkIntentTrioSettings()V
    .locals 3

    .line 390
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "polycom://settings-menu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/ZRCApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 395
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 396
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lus/zoom/zrc/ZRCApplication;->access$702(Lus/zoom/zrc/ZRCApplication;Z)Z

    return-void
.end method

.method private handleTimeConfigChanges(Landroid/content/Intent;)V
    .locals 2

    .line 400
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.TIME_SET"

    .line 404
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 405
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_1
    return-void
.end method

.method private initEmoji()V
    .locals 2

    .line 410
    new-instance v0, Landroidx/emoji/bundled/BundledEmojiCompatConfig;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/emoji/bundled/BundledEmojiCompatConfig;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-static {v0}, Landroidx/emoji/text/EmojiCompat;->init(Landroidx/emoji/text/EmojiCompat$Config;)Landroidx/emoji/text/EmojiCompat;

    return-void
.end method

.method private readRestrictionConfigures()V
    .locals 3

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const-string v1, "restrictions"

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, "get RestrictionsManager failed!!!"

    const/4 v2, 0x0

    .line 378
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 382
    :cond_1
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "policy_block_unknown_ssl_cert"

    .line 383
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    const-string v2, "policy_block_unknown_ssl_cert"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/ZRCSdkContext;->setPolicyBlockUnknownSSLCert(Ljava/lang/String;)V

    .line 386
    :cond_2
    invoke-static {}, Lus/zoom/zrc/login/AutoLoginManager;->getInstance()Lus/zoom/zrc/login/AutoLoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/AutoLoginManager;->receiveCode(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 349
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 350
    invoke-direct {p0, v0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->adjustFontScale(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onCreate()V
    .locals 5

    .line 246
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$raw;->zcacert:I

    const-string v2, "zcacert.pem"

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/RawFileUtil;->installRawFile(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    new-instance v0, Lus/zoom/zrc/sdk/imp/MainThreadHandler;

    invoke-direct {v0}, Lus/zoom/zrc/sdk/imp/MainThreadHandler;-><init>()V

    .line 249
    new-instance v1, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;

    invoke-direct {v1}, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;-><init>()V

    .line 250
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    new-instance v3, Lus/zoom/zrc/sdk/imp/SDKContext;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lus/zoom/zrc/sdk/imp/SDKContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v0, v1}, Lus/zoom/zrcsdk/ZRCSdk;->init(Lus/zoom/zrcsdk/ContextImp;Lus/zoom/zrcsdk/HandlerImp;Lus/zoom/zrcsdk/HandlerImp;)V

    .line 253
    invoke-static {}, Lus/zoom/zrc/logging/ZRCAppLogger;->getInstance()Lus/zoom/zrc/logging/ZRCAppLogger;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->init()V

    const-string v0, "ZRC is launching ......"

    const/4 v1, 0x0

    .line 254
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->setup()V

    .line 258
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->initNativeModules()V

    .line 260
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->setup()V

    .line 261
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->setLanguageIDtoWeb()V

    .line 263
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->setupHistoryOptionListener()V

    .line 264
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppEngine;->init()V

    .line 265
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->init(Landroid/content/Context;)V

    .line 266
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->init()V

    .line 267
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->init(Landroid/content/Context;)V

    .line 268
    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/AvatarLoader;->init()V

    const-string v0, "debug"

    const-string v1, "release"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lus/zoom/zrc/utils/CrashHandler;->init()V

    .line 272
    invoke-static {}, Lus/zoom/zrc/utils/CrashHandler;->getInstance()Lus/zoom/zrc/utils/CrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/CrashHandler;->sendCrashLogToServer()V

    .line 275
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->getDeviceInfoForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/ZRCSdk;->initNativeCrashHandler(ZLjava/lang/String;)V

    .line 277
    new-instance v0, Landroid/content/res/Configuration;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 278
    invoke-direct {p0, v0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->adjustFontScale(Landroid/content/res/Configuration;)V

    .line 280
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ActivityLauncher;->setup()V

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 283
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->readRestrictionConfigures()V

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mRestrictionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/ZRCApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mTimeConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/ZRCApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    invoke-static {}, Lus/zoom/zrc/lightbar/LightBarManager;->getDefault()Lus/zoom/zrc/lightbar/LightBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/lightbar/LightBarManager;->setup()V

    .line 294
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->setup()V

    .line 296
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->checkIntentTrioSettings()V

    .line 298
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    .line 300
    invoke-direct {p0}, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->initEmoji()V

    .line 302
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->init()V

    return-void
.end method

.method onLocaleChanged()V
    .locals 1

    .line 355
    invoke-super {p0}, Lus/zoom/zrc/ZRCApplication$IZRCApplication;->onLocaleChanged()V

    .line 356
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->setLanguageIDtoWeb()V

    .line 357
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestGetReleaseNote()V

    return-void
.end method

.method onLowMemory()V
    .locals 4

    const-string v0, "onLowMemory: memory:%s"

    const/4 v1, 0x1

    .line 339
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$600()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method onTerminate()V
    .locals 2

    .line 308
    invoke-static {}, Lus/zoom/zrc/logging/ZRCAppLogger;->getInstance()Lus/zoom/zrc/logging/ZRCAppLogger;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->release()V

    .line 310
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ActivityLauncher;->release()V

    .line 311
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->release()V

    .line 312
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->releaseHistoryOptionListener()V

    .line 313
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppEngine;->destory()V

    .line 314
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->destroy()V

    .line 315
    invoke-static {}, Lus/zoom/zrc/ZRCTonePlayer;->getInstance()Lus/zoom/zrc/ZRCTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCTonePlayer;->release()V

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 318
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mRestrictionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mTimeConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$500()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->release(Landroid/content/Context;)V

    .line 324
    invoke-static {}, Lus/zoom/zrc/lightbar/LightBarManager;->getDefault()Lus/zoom/zrc/lightbar/LightBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/lightbar/LightBarManager;->release()V

    .line 326
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->release()V

    .line 328
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ZRCApplication$ZRCBoxApplication;->mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    .line 330
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->release()V

    .line 332
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->release()V

    const-string v0, "ZRC has been terminated!!!"

    const/4 v1, 0x0

    .line 334
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method onTrimMemory(I)V
    .locals 3

    const-string v0, "onTrimMemory: level:%d memory:%s"

    const/4 v1, 0x2

    .line 344
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->access$600()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
