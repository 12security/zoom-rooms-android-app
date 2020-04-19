.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;
.super Ljava/lang/Thread;
.source "ZRCUltrasoundAudioTrackStreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioStreamThread"
.end annotation


# instance fields
.field private action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field private audioData:[B

.field private audioTrack:Landroid/media/AudioTrack;

.field private code:Ljava/lang/String;

.field private logChannel:Ljava/nio/channels/FileChannel;

.field private loopCount:I

.field private maxLoopCount:I

.field private signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

.field private stopFinished:Z

.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

.field private weakenLevel:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)V
    .locals 1

    .line 116
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    .line 117
    iget-object v0, p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mMockSignalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mMockSignalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-direct {p1}, Lus/zoom/ultrasound/UltrasoundGenerator;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    :goto_0
    return-void
.end method

.method private handleAudioTrack()V
    .locals 5

    .line 260
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, -0x64

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 264
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioData:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 271
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioData:[B

    .line 273
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 275
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioData:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    :cond_3
    :goto_0
    if-gez v2, :cond_4

    .line 282
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "write buffer error(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0, v1, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private handlePcmLogFile()V
    .locals 5

    .line 247
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->logChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 253
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->logChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "handlePcmLogFile ex: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private prepareAudioTrack()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    iget-object v0, v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mMockAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    iget-object v0, v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mMockAudioTrack:Landroid/media/AudioTrack;

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_1

    .line 164
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_4

    .line 165
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-virtual {v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->getStreamType()I

    move-result v2

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    .line 166
    invoke-virtual {v1}, Lus/zoom/ultrasound/UltrasoundGenerator;->getSamplingRate()I

    move-result v3

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    .line 167
    invoke-static {v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)I

    move-result v4

    const/4 v5, 0x2

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    .line 169
    invoke-virtual {v1}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInBytes()I

    move-result v6

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 184
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 186
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 191
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "setVolume error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_4
    :goto_1
    return-void
.end method

.method private preparePcmBuffer(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->code:Ljava/lang/String;

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 153
    iput-object p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->code:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0, p1, p2}, Lus/zoom/ultrasound/UltrasoundGenerator;->generate(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    const/16 p1, 0xc

    .line 155
    iget-object p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {p2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 156
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {p1}, Lus/zoom/ultrasound/UltrasoundGenerator;->convertMonoToStereo()Z

    .line 158
    :cond_1
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string p2, "preparePcmBuffer: action:%s, code:%s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->code:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private preparePcmLogFile()V
    .locals 0

    return-void
.end method

.method private releaseAudioTrack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    return-void
.end method

.method private releasePcmBuffer()V
    .locals 1

    .line 306
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->release()V

    return-void
.end method

.method private releasePcmLogFile()V
    .locals 5

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->logChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "releasePcmLogFile ex: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private weakenPcmBuffer()V
    .locals 4

    .line 207
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 209
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    add-int/2addr v0, v3

    iput v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    .line 210
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    if-ge v0, v2, :cond_0

    .line 213
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v3, v0, v2}, Lus/zoom/ultrasound/UltrasoundGenerator;->weakenSignal(II)Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->restoreSignal()Z

    .line 218
    iput v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    .line 219
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$102(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z

    .line 221
    :goto_0
    iput v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->loopCount:I

    goto :goto_1

    .line 222
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    sub-int/2addr v0, v3

    iput v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    .line 225
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenLevel:I

    if-lez v0, :cond_2

    .line 228
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v1, v0, v2}, Lus/zoom/ultrasound/UltrasoundGenerator;->weakenSignal(II)Z

    goto :goto_1

    .line 230
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$202(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z

    .line 232
    iput-boolean v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->stopFinished:Z

    goto :goto_1

    .line 238
    :cond_3
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->loopCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->loopCount:I

    .line 239
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->maxLoopCount:I

    if-lez v0, :cond_4

    iget v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->loopCount:I

    if-le v2, v0, :cond_4

    .line 240
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$102(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z

    .line 241
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0, v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$202(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 311
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stream thread running..."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->preparePcmLogFile()V

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$300(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$400(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Lus/zoom/ultrasound/ZRCUltrasoundAction;

    move-result-object v1

    .line 318
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$500(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;)Ljava/lang/String;

    move-result-object v3

    .line 319
    iget-object v4, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    iget v4, v4, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->mMaxLoopCount:I

    iput v4, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->maxLoopCount:I

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-direct {p0, v1, v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->preparePcmBuffer(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->signalGenerator:Lus/zoom/ultrasound/UltrasoundGenerator;

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 324
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "signal generate failed!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->prepareAudioTrack()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->weakenPcmBuffer()V

    .line 336
    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->stopFinished:Z

    if-eqz v0, :cond_2

    .line 348
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->releasePcmLogFile()V

    .line 351
    :try_start_2
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->releaseAudioTrack()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 353
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v3, "releaseAudioTrack error"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->releasePcmBuffer()V

    .line 357
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$602(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 358
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;->access$702(Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;Z)Z

    .line 359
    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->audioTrack:Landroid/media/AudioTrack;

    .line 360
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stream thread stopFinished..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->handlePcmLogFile()V

    .line 341
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer$AudioStreamThread;->handleAudioTrack()V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xbb8

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 344
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** write buffer blocking, diff time is :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 331
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v3, "prepareAudioTrack error"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 320
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    return-void
.end method
