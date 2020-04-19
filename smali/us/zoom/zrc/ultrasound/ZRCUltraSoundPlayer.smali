.class abstract Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
.super Ljava/lang/Object;
.source "ZRCUltraSoundPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ZRCUltraSoundPlayer"

.field private static sInstance:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;


# instance fields
.field private mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCode:Ljava/lang/String;

.field mMaxLoopCount:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRollbackRingMode:Ljava/lang/Integer;

.field private mRollbackVolume:Ljava/lang/Integer;

.field private mStreamType:I

.field private mToken:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mStreamType:I

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 36
    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mCode:Ljava/lang/String;

    const-string v0, "audio"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "notification"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
    .locals 3

    const-class v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    if-nez v1, :cond_1

    .line 46
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronMercury()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundAudioTrackStreamPlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    .line 52
    :cond_1
    :goto_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private raiseUltraSoundVolume()V
    .locals 7

    .line 131
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->shouldMaxStreamVolumeWhenPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackRingMode:Ljava/lang/Integer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 139
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v3, "change ringMode to normal"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "change ringMode to normal failed, CANNOT play the ultrasound !!!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_2
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 149
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackVolume:Ljava/lang/Integer;

    if-eq v0, v3, :cond_3

    .line 152
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 153
    sget-object v3, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v4, "raise streamType:%d volume to max: %d, rollback volume is:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackVolume:Ljava/lang/Integer;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private rollbackUltraSoundVolume()V
    .locals 6

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->shouldMaxStreamVolumeWhenPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_1

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "no permission to config ringer mode"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackRingMode:Ljava/lang/Integer;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 172
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackRingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 174
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rollback ring mode to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackRingMode:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_2
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "rollback ringMode to %s failed, no permission"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackRingMode:Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 181
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackVolume:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v1

    iget-object v5, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackVolume:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 183
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "rollback streamType:%d volume to: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackVolume:Ljava/lang/Integer;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mRollbackVolume:Ljava/lang/Integer;

    :cond_4
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 189
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    return-object v0
.end method

.method getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 194
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 196
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 197
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    if-ne v6, v1, :cond_0

    .line 198
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "preferred device:%s, sampleRates:%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iput-object v5, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_1
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method getStreamType()I
    .locals 1

    .line 63
    iget v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mStreamType:I

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isPlaying()Z
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method play(Ljava/lang/Object;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z
    .locals 4

    .line 71
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppEngine;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->FEEDBACK_DETECT:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    if-eq v0, v2, :cond_1

    if-ne p2, v2, :cond_1

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mCode:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->stopInternal()Z

    .line 86
    :cond_2
    invoke-virtual {p0, p2, p3}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->playInternal(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v2, "play:%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 v1, 0x1

    aput-object p3, v3, v1

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->shouldRequireAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getStreamType()I

    move-result v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 92
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->raiseUltraSoundVolume()V

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mToken:Ljava/lang/ref/WeakReference;

    .line 94
    iput-object p2, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 95
    iput-object p3, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mCode:Ljava/lang/String;

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method protected abstract playInternal(Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z
.end method

.method release()V
    .locals 0

    return-void
.end method

.method setMaxLoopCount(I)V
    .locals 0

    .line 59
    iput p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mMaxLoopCount:I

    return-void
.end method

.method setStreamType(I)V
    .locals 0

    .line 67
    iput p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mStreamType:I

    return-void
.end method

.method shouldMaxStreamVolumeWhenPlaying()Z
    .locals 1

    .line 122
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInYealinkCP960()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldRequireAudioFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method stop(Ljava/lang/Object;)Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mToken:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->shouldRequireAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 108
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->stopInternal()Z

    .line 109
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->rollbackUltraSoundVolume()V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mAction:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 111
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->mCode:Ljava/lang/String;

    .line 112
    sget-object p1, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v0, "stop ultrasound signal."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected abstract stopInternal()Z
.end method
