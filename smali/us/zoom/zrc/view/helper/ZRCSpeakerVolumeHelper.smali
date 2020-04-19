.class public Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;
.super Ljava/lang/Object;
.source "ZRCSpeakerVolumeHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final SPEAKER_STREAM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ZRCSpeakerVolumeHelper"

.field private static sInstance:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;


# instance fields
.field private mSeekBarSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/SeekBar;",
            "Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    .line 27
    new-instance v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$1;-><init>(Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;)V

    iput-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->updateVolumeSeekBars()V

    return-void
.end method

.method private decreaseMercuryVolume()V
    .locals 9

    .line 184
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSpeakerVolume()F

    move-result v1

    const/4 v2, 0x3

    .line 188
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-double v3, v3

    float-to-double v5, v1

    const-wide v7, 0x406fe00000000000L    # 255.0

    .line 189
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    const/4 v3, 0x0

    .line 190
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 191
    sget-object v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrease volume to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseNormalVolume()V

    return-void
.end method

.method private decreaseNormalVolume()V
    .locals 5

    .line 171
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSpeakerVolume()F

    move-result v0

    const/high16 v1, 0x41cc0000    # 25.5f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    :goto_0
    const-string v1, "decrease volume to %f"

    const/4 v2, 0x1

    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lus/zoom/zrc/model/Model;->changeSpeakerVolume(FZ)V

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 179
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupNormalVolumeControl(Landroid/widget/SeekBar;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 232
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const-string v1, "audio"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;
    .locals 1

    .line 37
    sget-object v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->sInstance:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    invoke-direct {v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;-><init>()V

    sput-object v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->sInstance:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    .line 40
    :cond_0
    sget-object v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->sInstance:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    return-object v0
.end method

.method private increaseMercuryVolume()V
    .locals 9

    .line 157
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSpeakerVolume()F

    move-result v1

    const/4 v2, 0x3

    .line 161
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-double v3, v3

    float-to-double v5, v1

    const-wide v7, 0x406fe00000000000L    # 255.0

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    const/4 v3, 0x0

    .line 163
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 164
    sget-object v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increase volume to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseNormalVolume()V

    return-void
.end method

.method private increaseNormalVolume()V
    .locals 5

    .line 143
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSpeakerVolume()F

    move-result v0

    const/high16 v1, 0x41cc0000    # 25.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    :cond_0
    const-string v1, "increase volume to %f"

    const/4 v2, 0x1

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lus/zoom/zrc/model/Model;->changeSpeakerVolume(FZ)V

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 151
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupNormalVolumeControl(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processMercuryVolumeChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->processNormalVolumeChanged(Landroid/widget/SeekBar;IZ)V

    .line 132
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x3

    .line 134
    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 136
    sget-object v0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume change to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1, p3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private processNormalVolumeChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 116
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 117
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 119
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;

    mul-int/lit8 v3, p2, 0x64

    .line 120
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/2addr v3, v1

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v2, v3}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;->onProgressChanged(I)V

    goto :goto_0

    .line 123
    :cond_2
    sget v0, Lus/zoom/zrcbox/R$id;->speaker_volume_is_persistent:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "seek volume to %d"

    const/4 v1, 0x1

    .line 124
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    .line 126
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    int-to-float p2, p2

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3, p2, v1}, Lus/zoom/zrc/model/Model;->changeSpeakerVolume(FZ)V

    :cond_4
    return-void
.end method

.method private processVolumeChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 213
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInMercuryAndUseAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->processMercuryVolumeChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->processNormalVolumeChanged(Landroid/widget/SeekBar;IZ)V

    :goto_0
    return-void
.end method

.method private setupMercuryVolumeControl(Landroid/widget/SeekBar;)V
    .locals 9

    .line 102
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupNormalVolumeControl(Landroid/widget/SeekBar;)V

    .line 103
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSpeakerVolume()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x3

    .line 106
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-double v3, v2

    int-to-double v5, v0

    const-wide v7, 0x406fe00000000000L    # 255.0

    .line 107
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p1, v1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 109
    sget-object p1, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup volume: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", the max is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setupNormalVolumeControl(Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSpeakerVolume()F

    move-result v0

    float-to-int v0, v0

    .line 91
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 94
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;

    mul-int/lit8 v0, v0, 0x64

    .line 95
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    div-int/2addr v0, p1

    if-eqz v1, :cond_1

    .line 97
    invoke-interface {v1, v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;->onProgressChanged(I)V

    :cond_1
    return-void
.end method

.method private updateVolumeSeekBars()V
    .locals 3

    .line 221
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 223
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInMercuryAndUseAsSpeaker()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupMercuryVolumeControl(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupNormalVolumeControl(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseVolume()V
    .locals 1

    .line 73
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInMercuryAndUseAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseMercuryVolume()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseNormalVolume()V

    :goto_0
    return-void
.end method

.method public increaseVolume()V
    .locals 1

    .line 81
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInMercuryAndUseAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseMercuryVolume()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseNormalVolume()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged fromUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->processVolumeChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "onStopTrackingTouch "

    const/4 v1, 0x0

    .line 208
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->processVolumeChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public releaseVolumeControl(Landroid/widget/SeekBar;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_1
    return-void
.end method

.method public setupVolumeControl(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupVolumeControl(Landroid/widget/SeekBar;Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;)V

    return-void
.end method

.method public setupVolumeControl(Landroid/widget/SeekBar;Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 53
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInMercuryAndUseAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupMercuryVolumeControl(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupNormalVolumeControl(Landroid/widget/SeekBar;)V

    .line 58
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->mSeekBarSet:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->updateVolumeSeekBars()V

    return-void
.end method
