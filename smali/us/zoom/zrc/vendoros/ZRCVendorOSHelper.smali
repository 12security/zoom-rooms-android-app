.class public Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;
.super Ljava/lang/Object;
.source "ZRCVendorOSHelper.java"


# static fields
.field private static final CLASS_VENDOR_OS_MANAGER:Ljava/lang/String; = "us.zoom.zr.vendoros.VendorOSManager"

.field private static final TEST_VENDOROS:Z = false

.field private static myInstance:Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;


# instance fields
.field private vendorOSManager:Lus/zoom/zr/vendoros/VendorOSManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;
    .locals 1

    .line 41
    sget-object v0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->myInstance:Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    invoke-direct {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;-><init>()V

    sput-object v0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->myInstance:Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    .line 44
    :cond_0
    sget-object v0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->myInstance:Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    return-object v0
.end method

.method private getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 319
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getVendorOSManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/VendorOSManager;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "get instance of VendorOSManager error"

    const/4 v0, 0x0

    .line 325
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 329
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zr/vendoros/VendorOSManager;->getSystemManager()Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object p1

    return-object p1
.end method

.method private getTestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method private getVendorOSManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/VendorOSManager;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 282
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->hasVendorOSManagerClass()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 286
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->vendorOSManager:Lus/zoom/zr/vendoros/VendorOSManager;

    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getVendorOSManagerInstance(Landroid/content/Context;)Lus/zoom/zr/vendoros/VendorOSManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->vendorOSManager:Lus/zoom/zr/vendoros/VendorOSManager;

    .line 289
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->vendorOSManager:Lus/zoom/zr/vendoros/VendorOSManager;

    return-object p1
.end method

.method private getVendorOSManagerInstance(Landroid/content/Context;)Lus/zoom/zr/vendoros/VendorOSManager;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 295
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->hasVendorOSManagerClass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "us.zoom.zr.vendoros.VendorOSManager"

    .line 301
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 302
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zr/vendoros/VendorOSManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v3, "getVendorOSManager() error: %s"

    .line 312
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v3, "getVendorOSManager() error: %s"

    .line 310
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v3, "getVendorOSManager() error: %s"

    .line 308
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v3, "getVendorOSManager() error: %s"

    .line 306
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception p1

    const-string v3, "getVendorOSManager() error: %s"

    .line 304
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private hasVendorOSManagerClass()Z
    .locals 1

    :try_start_0
    const-string v0, "us.zoom.zr.vendoros.VendorOSManager"

    .line 270
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method accessZoomCloudForCommand(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 338
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsAccessZoomCloud4Command()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "get instance of ISystemManager error"

    const/4 v0, 0x0

    .line 344
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 348
    :cond_1
    invoke-interface {v0, p1}, Lus/zoom/zr/vendoros/system/ISystemManager;->accessZoomCloudForCommand(Ljava/lang/String;)V

    return-void
.end method

.method getActivationCode()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 380
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsActivationCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 384
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    const/4 v2, 0x0

    .line 386
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 390
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getActivationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 3

    .line 394
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 398
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    const/4 v2, 0x0

    .line 400
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 404
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFirmwareVersion()Ljava/lang/String;
    .locals 3

    .line 408
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 412
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    const/4 v2, 0x0

    .line 414
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 418
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPairingCode()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 359
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsPairingCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 363
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    const/4 v2, 0x0

    .line 365
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 369
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getPairingCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenBrightness()F
    .locals 3

    .line 445
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsChangeScreenBrightness()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    return v1

    .line 449
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    const/4 v2, 0x0

    .line 451
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 455
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getScreenBrightness()F

    move-result v0

    return v0
.end method

.method public getWorkMode()I
    .locals 3

    .line 535
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsGetWorkMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 539
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 541
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 545
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getWorkMode()I

    move-result v0

    return v0
.end method

.method public launchSystemSettings(Landroid/content/Context;)V
    .locals 1

    .line 422
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsLaunchSystemSettings()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "get instance of ISystemManager error"

    const/4 v0, 0x0

    .line 428
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 432
    :cond_1
    invoke-interface {v0, p1}, Lus/zoom/zr/vendoros/system/ISystemManager;->launchSystemSettings(Landroid/content/Context;)V

    return-void
.end method

.method public reportWorkMode(I)V
    .locals 1

    .line 554
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsGetWorkMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "get instance of ISystemManager error"

    const/4 v0, 0x0

    .line 560
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 564
    :cond_1
    invoke-interface {v0, p1}, Lus/zoom/zr/vendoros/system/ISystemManager;->reportWorkMode(I)V

    return-void
.end method

.method public restartSystem()Z
    .locals 3

    .line 490
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsRestartSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 496
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 500
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->restartSystem()Z

    move-result v0

    return v0
.end method

.method public setScreenBrightness(F)Z
    .locals 2

    .line 471
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsChangeScreenBrightness()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "get instance of ISystemManager error"

    .line 477
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 481
    :cond_1
    invoke-interface {v0, p1}, Lus/zoom/zr/vendoros/system/ISystemManager;->setScreenBrightness(F)Z

    move-result p1

    return p1
.end method

.method public shutdownSystem()Z
    .locals 3

    .line 509
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsShutdownSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 513
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 515
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 519
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->shutdownSystem()Z

    move-result v0

    return v0
.end method

.method supportsAccessZoomCloud4Command()Z
    .locals 3

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 87
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 91
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    const-string v0, "system has no capability to access zoom cloud for command"

    .line 93
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    return v2
.end method

.method supportsActivationCode()Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 135
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 139
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    const-string v0, "system has no capability to get activation code"

    .line 141
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public supportsChangeScreenBrightness()Z
    .locals 3

    .line 225
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 229
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 231
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 235
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    const-string v0, "system has no capability to change screen brightness"

    .line 237
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGetWorkMode()Z
    .locals 3

    .line 249
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 255
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 259
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    const-string v0, "system has no capability to get work mode"

    .line 261
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLaunchSystemSettings()Z
    .locals 3

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 159
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 163
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    const-string v0, "system has no capability to launch system settings"

    .line 165
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method supportsPairingCode()Z
    .locals 3

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 111
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 115
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    const-string v0, "system has no capability to get pairing code"

    .line 117
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public supportsRestartSystem()Z
    .locals 3

    .line 177
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 183
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 187
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    const-string v0, "system has no capability to restart system"

    .line 189
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public supportsShutdownSystem()Z
    .locals 3

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getSystemManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/system/ISystemManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get instance of ISystemManager error"

    .line 207
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 211
    :cond_1
    invoke-interface {v0}, Lus/zoom/zr/vendoros/system/ISystemManager;->getCapability()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    const-string v0, "system has no capability to shutdown system"

    .line 213
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method supportsSystemManager()Z
    .locals 3

    .line 59
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->hasVendorOSManagerClass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getVendorOSManager(Landroid/content/Context;)Lus/zoom/zr/vendoros/VendorOSManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 67
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zr/vendoros/VendorOSManager;->getCapability()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    const-string v0, "vendor OS has no capability for system management"

    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    return v2
.end method

.method public supportsVendorOS()Z
    .locals 1

    .line 51
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->hasVendorOSManagerClass()Z

    move-result v0

    return v0
.end method
