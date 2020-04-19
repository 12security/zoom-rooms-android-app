.class public Lus/zoom/zrc/utils/VolumeKeyUtils;
.super Ljava/lang/Object;
.source "VolumeKeyUtils.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static toastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lus/zoom/zrc/utils/VolumeKeyUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVolumeLockedOrDisabledToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 3

    .line 63
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_speaker_volume_adjustable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget v0, Lus/zoom/zrcbox/R$string;->volume_is_not_adjustable:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    .line 69
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->isSettingsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isSpeakerVolumeControlLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget v0, Lus/zoom/zrcbox/R$string;->volume_is_locked:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleVolumeKey(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 41
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->shouldDisableVolumeChange()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInTrioAndUseAsSpeaker()Z

    move-result v2

    if-nez v2, :cond_3

    .line 52
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->runInYealinkCP960AndUseAsSpeaker()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 53
    :cond_3
    :goto_0
    invoke-static {v0, p0}, Lus/zoom/zrc/utils/VolumeKeyUtils;->handleVolumeKeyForSpeakerDevices(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static handleVolumeKeyForSpeakerDevices(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 80
    :pswitch_0
    invoke-static {p0}, Lus/zoom/zrc/utils/VolumeKeyUtils;->getVolumeLockedOrDisabledToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 83
    sget-object p1, Lus/zoom/zrc/utils/VolumeKeyUtils;->toastRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lus/zoom/zrc/utils/VolumeKeyUtils;->toastRef:Ljava/lang/ref/WeakReference;

    .line 86
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string p0, "volume key is blocked because volume control disabled in lock state."

    .line 88
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 91
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_6

    .line 101
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result p0

    if-nez p0, :cond_4

    .line 102
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInYealinkCP960()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_4
    const/16 p0, 0x18

    .line 103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p0, p1, :cond_5

    const-string p0, "increase CP960/Trio volume by key"

    .line 104
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseVolume()V

    goto :goto_1

    :cond_5
    const-string p0, "decrease CP960/Trio volume by key"

    .line 107
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseVolume()V

    :goto_1
    return v0

    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isVolumeKey(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static logSpeakerDevicesForVolumeKey()V
    .locals 4

    .line 120
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInYealinkCP960()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The speaker is not selected to CP960, but \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 125
    :cond_2
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The speaker is not selected to Trio, but \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
