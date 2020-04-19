.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;
.super Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
.source "ZRCUltrasoundAudioTrackStreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;
    }
.end annotation


# static fields
.field private static final DEBUG_SIGNAL_WEAKEN:Z = false

.field private static final GENERATE_PCM_LOG_FILE:Z = false

.field private static final SIGNAL_WEAKEN_COUNT:I = 0x4


# instance fields
.field private mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field private final mChannelMask:I

.field private mCode:Ljava/lang/String;

.field private volatile mIsIdle:Z

.field private final mLock:Ljava/lang/Object;

.field mMockAudioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMockSignalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile mPlaying:Z

.field private volatile mStarting:Z

.field private volatile mStopping:Z

.field private mStreamThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mLock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mIsIdle:Z

    .line 50
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSW()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 51
    iput p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mChannelMask:I

    .line 52
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->TAG:Ljava/lang/String;

    const-string v1, "play ultrasonic with CHANNEL_OUT_STEREO"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 54
    iput p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mChannelMask:I

    .line 55
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->TAG:Ljava/lang/String;

    const-string v1, "play ultrasonic with CHANNEL_OUT_MONO"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)I
    .locals 0

    .line 24
    iget p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mChannelMask:I

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStarting:Z

    return p0
.end method

.method static synthetic access$102(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStarting:Z

    return p1
.end method

.method static synthetic access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStopping:Z

    return p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStopping:Z

    return p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Lus/zoom/ultrasound/ZRCUltrasoundAction;
    .locals 0

    .line 24
    iget-object p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStreamThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$702(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mIsIdle:Z

    return p1
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mIsIdle:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mPlaying:Z

    return v0
.end method

.method protected playInternal(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStreamThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)V

    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStreamThread:Ljava/lang/Thread;

    .line 74
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStreamThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 76
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 77
    iput-object p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mCode:Ljava/lang/String;

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStarting:Z

    const/4 p2, 0x0

    .line 80
    iput-boolean p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStopping:Z

    .line 81
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mPlaying:Z

    .line 82
    iput-boolean p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mIsIdle:Z

    return p1

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected stopInternal()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v1, "000000"

    .line 91
    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mCode:Ljava/lang/String;

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStarting:Z

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mStopping:Z

    .line 95
    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mPlaying:Z

    return v1

    :catchall_0
    move-exception v1

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
