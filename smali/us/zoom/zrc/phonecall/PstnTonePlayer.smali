.class public Lus/zoom/zrc/phonecall/PstnTonePlayer;
.super Ljava/lang/Object;
.source "PstnTonePlayer.java"


# static fields
.field private static sInstance:Lus/zoom/zrc/phonecall/PstnTonePlayer;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/phonecall/PstnTonePlayer;
    .locals 1

    .line 20
    sget-object v0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->sInstance:Lus/zoom/zrc/phonecall/PstnTonePlayer;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lus/zoom/zrc/phonecall/PstnTonePlayer;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/PstnTonePlayer;-><init>()V

    sput-object v0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->sInstance:Lus/zoom/zrc/phonecall/PstnTonePlayer;

    .line 23
    :cond_0
    sget-object v0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->sInstance:Lus/zoom/zrc/phonecall/PstnTonePlayer;

    return-object v0
.end method


# virtual methods
.method public startRingTone()V
    .locals 2

    .line 27
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronMercury()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->stopRingTone()V

    .line 36
    :cond_1
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$raw;->ring:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 38
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stopRingTone()V
    .locals 1

    .line 42
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
