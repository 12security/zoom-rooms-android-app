.class public Lus/zoom/ultrasound/UltrasoundGenerator;
.super Ljava/lang/Object;
.source "UltrasoundGenerator.java"


# static fields
.field private static final MAXULTRASOUNDINFOLEN:I = 0xc

.field private static final TAG:Ljava/lang/String; = "UltrasoundGenerator"


# instance fields
.field private action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field private bitsPerSample:I

.field private bufferSizeInBytes:I

.field private code:Ljava/lang/String;

.field private mNativeContext:J

.field private mSignalWeakened:Z

.field private numChannels:I

.field private pcmBuffer:Ljava/nio/ByteBuffer;

.field private samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->pcmBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bitsPerSample:I

    .line 20
    iput v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->numChannels:I

    .line 21
    iput v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->samplingRate:I

    .line 22
    iput v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bufferSizeInBytes:I

    .line 31
    iget-wide v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 32
    invoke-direct {p0}, Lus/zoom/ultrasound/UltrasoundGenerator;->nativeInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    sget-object v1, Lus/zoom/ultrasound/UltrasoundGenerator;->TAG:Ljava/lang/String;

    const-string v2, "nativeInit failed!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native convertMonoToStereoImpl()Z
.end method

.method private generateSignal(ILjava/lang/String;)Z
    .locals 4

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 143
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 146
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-direct {p0, p1, v1}, Lus/zoom/ultrasound/UltrasoundGenerator;->generateSignalImpl(I[I)Z

    move-result p1

    return p1
.end method

.method private native generateSignalImpl(I[I)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeRelease()Z
.end method

.method private native restoreSignalImpl()Z
.end method

.method private native weakenSignalImpl(II)Z
.end method


# virtual methods
.method public convertMonoToStereo()Z
    .locals 1

    .line 138
    invoke-direct {p0}, Lus/zoom/ultrasound/UltrasoundGenerator;->convertMonoToStereoImpl()Z

    move-result v0

    return v0
.end method

.method public generate(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z
    .locals 2

    .line 127
    iput-object p1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 128
    iput-object p2, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->code:Ljava/lang/String;

    .line 129
    iget p1, p1, Lus/zoom/ultrasound/ZRCUltrasoundAction;->value:I

    invoke-direct {p0, p1, p2}, Lus/zoom/ultrasound/UltrasoundGenerator;->generateSignal(ILjava/lang/String;)Z

    .line 130
    iget-object p1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->pcmBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    .line 131
    sget-object p1, Lus/zoom/ultrasound/UltrasoundGenerator;->TAG:Ljava/lang/String;

    const-string p2, "generate ultrasound signal error!"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getAction()Lus/zoom/ultrasound/ZRCUltrasoundAction;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    return-object v0
.end method

.method public getBitsPerSample()I
    .locals 1

    .line 49
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bitsPerSample:I

    return v0
.end method

.method public getBufferSizeInBytes()I
    .locals 1

    .line 63
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bufferSizeInBytes:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 2

    .line 71
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bufferSizeInBytes:I

    invoke-virtual {p0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getFrameSizeInBytes()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getByteRate()I
    .locals 2

    .line 77
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->numChannels:I

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->samplingRate:I

    mul-int v0, v0, v1

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int v0, v0, v1

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameSizeInBytes()I
    .locals 2

    .line 67
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->numChannels:I

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int v0, v0, v1

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 55
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->numChannels:I

    return v0
.end method

.method public getPcmBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 81
    iget-object v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->pcmBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .line 59
    iget v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->samplingRate:I

    return v0
.end method

.method public release()V
    .locals 3

    .line 102
    invoke-direct {p0}, Lus/zoom/ultrasound/UltrasoundGenerator;->nativeRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lus/zoom/ultrasound/UltrasoundGenerator;->TAG:Ljava/lang/String;

    const-string v1, "nativeRelease failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->mNativeContext:J

    return-void
.end method

.method public restoreSignal()Z
    .locals 2

    .line 118
    iget-boolean v0, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->mSignalWeakened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lus/zoom/ultrasound/UltrasoundGenerator;->restoreSignalImpl()Z

    .line 120
    iput-boolean v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->mSignalWeakened:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->action:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bitsPerSample:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",numChannels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->numChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",samplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bufferSizeInFrames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lus/zoom/ultrasound/UltrasoundGenerator;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bufferSizeInBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->bufferSizeInBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | pcmBuffer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->pcmBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakenSignal(II)Z
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lus/zoom/ultrasound/UltrasoundGenerator;->weakenSignalImpl(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lus/zoom/ultrasound/UltrasoundGenerator;->mSignalWeakened:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
