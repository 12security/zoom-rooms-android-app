.class public Lus/zoom/zrc/ZRCTonePlayer;
.super Ljava/lang/Object;
.source "ZRCTonePlayer.java"


# static fields
.field private static final DTMF_VOLUME:I = 0x46

.field private static final DURATION_MS:I = 0x78

.field private static sInstance:Lus/zoom/zrc/ZRCTonePlayer;


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Lus/zoom/zrc/ZRCTonePlayer$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ZRCTonePlayer$1;-><init>(Lus/zoom/zrc/ZRCTonePlayer;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ZRCTonePlayer;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lus/zoom/zrc/ZRCTonePlayer;->playDTMFInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/ZRCTonePlayer;
    .locals 1

    .line 42
    sget-object v0, Lus/zoom/zrc/ZRCTonePlayer;->sInstance:Lus/zoom/zrc/ZRCTonePlayer;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lus/zoom/zrc/ZRCTonePlayer;

    invoke-direct {v0}, Lus/zoom/zrc/ZRCTonePlayer;-><init>()V

    sput-object v0, Lus/zoom/zrc/ZRCTonePlayer;->sInstance:Lus/zoom/zrc/ZRCTonePlayer;

    .line 45
    :cond_0
    sget-object v0, Lus/zoom/zrc/ZRCTonePlayer;->sInstance:Lus/zoom/zrc/ZRCTonePlayer;

    return-object v0
.end method

.method private getToneTypeFromKey(Ljava/lang/String;)I
    .locals 1

    const-string v0, "0"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "1"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "2"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-string v0, "3"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const-string v0, "4"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const-string v0, "5"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    const-string v0, "6"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    const-string v0, "7"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    :cond_7
    const-string v0, "8"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x8

    return p1

    :cond_8
    const-string v0, "9"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    return p1

    :cond_9
    const-string v0, "*"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xa

    return p1

    :cond_a
    const-string v0, "#"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0xb

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method private playDTMFInternal(Ljava/lang/String;)V
    .locals 5

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 111
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/ZRCTonePlayer;->getToneTypeFromKey(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 113
    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 114
    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x78

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, ""

    const-string v2, "playDTMF exception:"

    const/4 v3, 0x1

    .line 117
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 120
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public playDTMF(Ljava/lang/String;)V
    .locals 6

    .line 52
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronMercury()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ZRCTonePlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandler:Landroid/os/Handler;

    .line 67
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_3

    .line 70
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/16 v3, 0x46

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, ""

    const-string v3, "playDTMF exception:"

    const/4 v4, 0x1

    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 76
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 79
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 76
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 6

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 95
    :try_start_1
    iget-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, ""

    const-string v3, "release exception:"

    const/4 v4, 0x1

    .line 97
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lus/zoom/zrc/ZRCTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 101
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
