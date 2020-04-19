.class public Lus/zoom/zrc/lightbar/LightBarManager;
.super Ljava/lang/Object;
.source "LightBarManager.java"


# static fields
.field private static final BIND_LIGHTBAR_SERVICE:Landroid/content/Intent;

.field private static final LIGHTBAR_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static instance:Lus/zoom/zrc/lightbar/LightBarManager;


# instance fields
.field private delayedTask:Ljava/lang/Runnable;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private signalInterface:Lus/zoom/zrc/lightbar/ISignalTransportInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "us.zoom.zrc.lightbar"

    const-string v2, "us.zoom.zrc.lightbar.CrestronLightBarService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/lightbar/LightBarManager;->LIGHTBAR_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "us.zoom.zrc.lightbar.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/lightbar/LightBarManager;->BIND_LIGHTBAR_SERVICE:Landroid/content/Intent;

    .line 21
    sget-object v0, Lus/zoom/zrc/lightbar/LightBarManager;->BIND_LIGHTBAR_SERVICE:Landroid/content/Intent;

    sget-object v1, Lus/zoom/zrc/lightbar/LightBarManager;->LIGHTBAR_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/lightbar/LightBarManager;Ljava/lang/String;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/lightbar/LightBarManager;->sendSignal(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/lightbar/LightBarManager;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/lightbar/LightBarManager;->sendSignal(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$202(Lus/zoom/zrc/lightbar/LightBarManager;Lus/zoom/zrc/lightbar/ISignalTransportInterface;)Lus/zoom/zrc/lightbar/ISignalTransportInterface;
    .locals 0

    .line 14
    iput-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager;->signalInterface:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    return-object p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/lightbar/LightBarManager;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lus/zoom/zrc/lightbar/LightBarManager;->onBindSuccess()V

    return-void
.end method

.method private bindServiceIfNeeded()V
    .locals 4

    .line 116
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v1, Lus/zoom/zrc/lightbar/LightBarManager$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/lightbar/LightBarManager$4;-><init>(Lus/zoom/zrc/lightbar/LightBarManager;)V

    iput-object v1, p0, Lus/zoom/zrc/lightbar/LightBarManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 143
    :try_start_0
    sget-object v1, Lus/zoom/zrc/lightbar/LightBarManager;->BIND_LIGHTBAR_SERVICE:Landroid/content/Intent;

    iget-object v2, p0, Lus/zoom/zrc/lightbar/LightBarManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getDefault()Lus/zoom/zrc/lightbar/LightBarManager;
    .locals 1

    .line 33
    sget-object v0, Lus/zoom/zrc/lightbar/LightBarManager;->instance:Lus/zoom/zrc/lightbar/LightBarManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lus/zoom/zrc/lightbar/LightBarManager;

    invoke-direct {v0}, Lus/zoom/zrc/lightbar/LightBarManager;-><init>()V

    sput-object v0, Lus/zoom/zrc/lightbar/LightBarManager;->instance:Lus/zoom/zrc/lightbar/LightBarManager;

    .line 36
    :cond_0
    sget-object v0, Lus/zoom/zrc/lightbar/LightBarManager;->instance:Lus/zoom/zrc/lightbar/LightBarManager;

    return-object v0
.end method

.method private onBindSuccess()V
    .locals 1

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager;->delayedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager;->delayedTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private sendSignal(Ljava/lang/String;I)V
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager;->signalInterface:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    invoke-interface {v0, p1, p2}, Lus/zoom/zrc/lightbar/ISignalTransportInterface;->sendAnalogSignal(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSignal failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendSignal(Ljava/lang/String;Z)V
    .locals 1

    .line 101
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager;->signalInterface:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    invoke-interface {v0, p1, p2}, Lus/zoom/zrc/lightbar/ISignalTransportInterface;->sendDigitalSignal(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSignal failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendSignalIfBound(Ljava/lang/Runnable;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/lightbar/LightBarManager;->signalInterface:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lus/zoom/zrc/lightbar/LightBarManager;->delayedTask:Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0}, Lus/zoom/zrc/lightbar/LightBarManager;->bindServiceIfNeeded()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 46
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lus/zoom/zrc/lightbar/LightBarManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public setLightBarAvailable()V
    .locals 1

    .line 53
    new-instance v0, Lus/zoom/zrc/lightbar/LightBarManager$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/lightbar/LightBarManager$1;-><init>(Lus/zoom/zrc/lightbar/LightBarManager;)V

    invoke-direct {p0, v0}, Lus/zoom/zrc/lightbar/LightBarManager;->sendSignalIfBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLightBarBusy()V
    .locals 1

    .line 66
    new-instance v0, Lus/zoom/zrc/lightbar/LightBarManager$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/lightbar/LightBarManager$2;-><init>(Lus/zoom/zrc/lightbar/LightBarManager;)V

    invoke-direct {p0, v0}, Lus/zoom/zrc/lightbar/LightBarManager;->sendSignalIfBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setup()V
    .locals 1

    .line 40
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/lightbar/LightBarManager;->turnOffLightBar()V

    :cond_0
    return-void
.end method

.method public turnOffLightBar()V
    .locals 1

    .line 79
    new-instance v0, Lus/zoom/zrc/lightbar/LightBarManager$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/lightbar/LightBarManager$3;-><init>(Lus/zoom/zrc/lightbar/LightBarManager;)V

    invoke-direct {p0, v0}, Lus/zoom/zrc/lightbar/LightBarManager;->sendSignalIfBound(Ljava/lang/Runnable;)V

    return-void
.end method
