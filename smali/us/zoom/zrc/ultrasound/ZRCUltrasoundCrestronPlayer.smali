.class public Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;
.super Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
.source "ZRCUltrasoundCrestronPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$StopTask;,
        Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;
    }
.end annotation


# static fields
.field private static final WAV_FILE_PATH:Ljava/lang/String; = "/sdcard/Android/data/us.zoom.zrc/files/direct_share_signal.wav"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field


# instance fields
.field private mSignalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/os/HandlerThread;

    const-class v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkThread:Landroid/os/HandlerThread;

    .line 37
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkHandler:Landroid/os/Handler;

    .line 40
    new-instance p1, Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-direct {p1}, Lus/zoom/ultrasound/UltrasoundGenerator;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mSignalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;
    .locals 0

    .line 24
    iget-object p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mSignalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic isIdle()Z
    .locals 1

    .line 24
    invoke-super {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isIdle()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/us.zoom.zrc/files/direct_share_signal.wav"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onAudioFocusChange(I)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->onAudioFocusChange(I)V

    return-void
.end method

.method protected playInternal(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z
    .locals 3

    .line 51
    sget-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->FEEDBACK_DETECT:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method release()V
    .locals 1

    .line 75
    invoke-super {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->release()V

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method shouldMaxStreamVolumeWhenPlaying()Z
    .locals 1

    .line 65
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronMercury()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method shouldRequireAudioFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected stopInternal()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$StopTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$StopTask;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
