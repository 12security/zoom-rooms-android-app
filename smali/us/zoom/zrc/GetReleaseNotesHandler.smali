.class public Lus/zoom/zrc/GetReleaseNotesHandler;
.super Landroid/os/Handler;
.source "GetReleaseNotesHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_PULLING_SETTINGS_FROM_WEB_INTERVAL:J = 0x5265c00L

.field private static final MIN_PULLING_SETTINGS_FROM_WEB_INTERVAL:J = 0xdbba0L

.field private static instance:Lus/zoom/zrc/GetReleaseNotesHandler;

.field private static lastPullingSettingsFromWebTime:J

.field private static timeIntervalForGetReleaseNote:J


# instance fields
.field private timerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lus/zoom/zrc/GetReleaseNotesHandler;

    invoke-direct {v0}, Lus/zoom/zrc/GetReleaseNotesHandler;-><init>()V

    sput-object v0, Lus/zoom/zrc/GetReleaseNotesHandler;->instance:Lus/zoom/zrc/GetReleaseNotesHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static cancelGettingReleaseNote()V
    .locals 2

    .line 110
    sget-object v0, Lus/zoom/zrc/GetReleaseNotesHandler;->instance:Lus/zoom/zrc/GetReleaseNotesHandler;

    iget-boolean v1, v0, Lus/zoom/zrc/GetReleaseNotesHandler;->timerRunning:Z

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {v0}, Lus/zoom/zrc/GetReleaseNotesHandler;->stopTimer()V

    const-string v0, "stop get release note after"

    const/4 v1, 0x0

    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static getTimeIntervalForGetReleaseNote()J
    .locals 5

    .line 76
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const-wide/32 v1, 0xdbba0

    const/16 v3, 0xa

    if-ne v3, v0, :cond_0

    return-wide v1

    .line 80
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getReleaseNotesRefreshInterval()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    const-wide/32 v0, 0x5265c00

    cmp-long v2, v3, v0

    if-lez v2, :cond_2

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method private static logTimerIntervalForGetReleaseNotes()Ljava/lang/String;
    .locals 6

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getReleaseNotesRefreshInterval()J

    move-result-wide v1

    const-string v3, "interval="

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-wide v3, Lus/zoom/zrc/GetReleaseNotesHandler;->timeIntervalForGetReleaseNote:J

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInMillis(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    sget-wide v3, Lus/zoom/zrc/GetReleaseNotesHandler;->timeIntervalForGetReleaseNote:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v3, ", but from web "

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 124
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, ", standalone ZRP is connecting to PNS..."

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onTimeForPullingSettingsFromWeb(Landroid/content/Context;)V
    .locals 10

    .line 39
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isConnectedToZoomRoom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppEngine;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 51
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 53
    sget-wide v2, Lus/zoom/zrc/GetReleaseNotesHandler;->lastPullingSettingsFromWebTime:J

    sub-long v2, v0, v2

    .line 54
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->getTimeIntervalForGetReleaseNote()J

    move-result-wide v4

    .line 56
    sget-wide v6, Lus/zoom/zrc/GetReleaseNotesHandler;->timeIntervalForGetReleaseNote:J

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_3

    .line 57
    sput-wide v4, Lus/zoom/zrc/GetReleaseNotesHandler;->timeIntervalForGetReleaseNote:J

    const-string v6, "time interval for get release note changed: %s"

    const/4 v7, 0x1

    .line 58
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->logTimerIntervalForGetReleaseNotes()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    return-void

    .line 65
    :cond_4
    invoke-static {p1}, Lus/zoom/zrc/utils/AlarmAlertWakeLock;->acquireScreenCpuWakeLock(Landroid/content/Context;)V

    .line 68
    sput-wide v0, Lus/zoom/zrc/GetReleaseNotesHandler;->lastPullingSettingsFromWebTime:J

    const-string p1, "do get release note..."

    .line 69
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->requestGetReleaseNote()V

    .line 72
    invoke-static {}, Lus/zoom/zrc/utils/AlarmAlertWakeLock;->releaseCpuLock()V

    return-void
.end method

.method public static startGettingReleaseNote()V
    .locals 4

    .line 102
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->cancelGettingReleaseNote()V

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lus/zoom/zrc/GetReleaseNotesHandler;->lastPullingSettingsFromWebTime:J

    .line 104
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->getTimeIntervalForGetReleaseNote()J

    move-result-wide v0

    sput-wide v0, Lus/zoom/zrc/GetReleaseNotesHandler;->timeIntervalForGetReleaseNote:J

    const-string v0, "start get release note and %s"

    const/4 v1, 0x1

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->logTimerIntervalForGetReleaseNotes()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget-object v0, Lus/zoom/zrc/GetReleaseNotesHandler;->instance:Lus/zoom/zrc/GetReleaseNotesHandler;

    invoke-direct {v0}, Lus/zoom/zrc/GetReleaseNotesHandler;->startTimer()V

    return-void
.end method

.method private startTimer()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 92
    invoke-virtual {p0, p0, v0, v1}, Lus/zoom/zrc/GetReleaseNotesHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lus/zoom/zrc/GetReleaseNotesHandler;->timerRunning:Z

    return-void
.end method

.method private stopTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lus/zoom/zrc/GetReleaseNotesHandler;->timerRunning:Z

    .line 98
    invoke-virtual {p0, p0}, Lus/zoom/zrc/GetReleaseNotesHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 34
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/GetReleaseNotesHandler;->onTimeForPullingSettingsFromWeb(Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    .line 35
    invoke-virtual {p0, p0, v0, v1}, Lus/zoom/zrc/GetReleaseNotesHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
