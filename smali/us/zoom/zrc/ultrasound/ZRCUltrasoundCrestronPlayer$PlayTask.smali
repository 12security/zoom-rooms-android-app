.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;
.super Ljava/lang/Object;
.source "ZRCUltrasoundCrestronPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayTask"
.end annotation


# instance fields
.field private action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field private code:Ljava/lang/String;

.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 87
    iput-object p3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->code:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)V

    return-void
.end method

.method private int2Bytes(I)[B
    .locals 3

    const/4 v0, 0x4

    .line 105
    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-object v0
.end method

.method private preparePcmBuffer(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)V
    .locals 3

    .line 91
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 92
    iput-object p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->code:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/ultrasound/UltrasoundGenerator;->generate(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    .line 94
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string p2, "preparePcmBuffer: action:%s, code:%s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->code:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private short2Bytes(S)[B
    .locals 3

    const/4 v0, 0x2

    .line 114
    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method private string2Bytes(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x4

    .line 98
    new-array v1, v0, [B

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 100
    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private writeDataToFile(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 150
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method private writeHeaderToFile(Ljava/io/DataOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getByteRate()I

    move-result v0

    .line 123
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInBytes()I

    move-result v1

    add-int/lit8 v2, v1, 0x24

    .line 125
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/ultrasound/UltrasoundGenerator;->getNumChannels()I

    move-result v3

    int-to-short v3, v3

    .line 126
    iget-object v4, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v4}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/ultrasound/UltrasoundGenerator;->getSamplingRate()I

    move-result v4

    .line 128
    iget-object v5, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v5}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBitsPerSample()I

    move-result v5

    int-to-short v5, v5

    .line 129
    iget-object v6, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v6}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/ultrasound/UltrasoundGenerator;->getFrameSizeInBytes()I

    move-result v6

    int-to-short v6, v6

    const-string v7, "RIFF"

    .line 131
    invoke-direct {p0, v7}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->string2Bytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 132
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->int2Bytes(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const-string v2, "WAVE"

    .line 133
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->string2Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const-string v2, "fmt "

    .line 134
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->string2Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const/16 v2, 0x10

    .line 135
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->int2Bytes(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v2, 0x1

    .line 136
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->short2Bytes(S)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 137
    invoke-direct {p0, v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->short2Bytes(S)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 138
    invoke-direct {p0, v4}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->int2Bytes(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 139
    invoke-direct {p0, v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->int2Bytes(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 140
    invoke-direct {p0, v6}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->short2Bytes(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 141
    invoke-direct {p0, v5}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->short2Bytes(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    const-string v0, "data"

    .line 142
    invoke-direct {p0, v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->string2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 143
    invoke-direct {p0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->int2Bytes(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->code:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->preparePcmBuffer(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)Lus/zoom/ultrasound/UltrasoundGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getPcmBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "signal generate failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/Android/data/us.zoom.zrc/files/direct_share_signal.wav"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "create parent dir failed!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_1
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->writeHeaderToFile(Ljava/io/DataOutputStream;)V

    .line 175
    invoke-direct {p0, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$PlayTask;->writeDataToFile(Ljava/io/DataOutputStream;)V

    .line 177
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 178
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 180
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "write wave file success!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    sget-object v2, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v3, "write wav file for ultrasound filed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 182
    sget-object v2, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v3, "write wav file for ultrasound filed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
