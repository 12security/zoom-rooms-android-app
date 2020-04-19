.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;
.super Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
.source "ZRCUltrasoundAudioTrackStaticPlayer.java"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected playInternal(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "deprecation"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-direct {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    .line 40
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0, p1, p2}, Lus/zoom/ultrasound/UltrasoundGenerator;->generate(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 41
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->TAG:Ljava/lang/String;

    const-string v0, "generate ultrasound signal error!"

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 45
    :cond_1
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generate ultrasound success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance p1, Landroid/media/AudioTrack;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->getStreamType()I

    move-result v3

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    .line 48
    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getSamplingRate()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    .line 51
    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInBytes()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    .line 57
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 64
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInFrames()I

    move-result v0

    iget v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mMaxLoopCount:I

    if-nez v1, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mMaxLoopCount:I

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 66
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->TAG:Ljava/lang/String;

    const-string v2, "playInternal setLoopPoints(%d, %d) error(%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    iget-object v4, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v4}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInFrames()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_5

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v2}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v3}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInBytes()I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    goto :goto_1

    .line 72
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {p1}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 74
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v3}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInBytes()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    :goto_1
    if-gez p1, :cond_6

    .line 78
    sget-object v2, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->TAG:Ljava/lang/String;

    const-string v3, "write buffer error(%d)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v2, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_6
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_7

    .line 85
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    move-result p1

    goto :goto_2

    .line 87
    :cond_7
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p1

    :goto_2
    if-eqz p1, :cond_8

    .line 90
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->TAG:Ljava/lang/String;

    const-string v2, "setVolume error(%d)"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    .line 94
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->TAG:Ljava/lang/String;

    const-string v1, "play ultra sound..."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected stopInternal()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->release()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStaticPlayer;->mGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
