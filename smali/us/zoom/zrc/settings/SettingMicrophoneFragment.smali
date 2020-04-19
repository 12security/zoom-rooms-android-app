.class public Lus/zoom/zrc/settings/SettingMicrophoneFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingMicrophoneFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingMicrophoneFragment"


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

.field private advancedNoiseSuppressionModeLayout:Landroid/view/View;

.field private agcCancellationLayout:Landroid/view/View;

.field private agcCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private backBtn:Landroid/view/View;

.field private echoCancellationLayout:Landroid/view/View;

.field private echoCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private manuallySelectedDevice:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

.field private microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

.field private noSoftwareAudioProcessingLayout:Landroid/view/View;

.field private pickupRange:Landroid/view/View;

.field private pickupRangeRadioGroup:Landroid/widget/RadioGroup;

.field private reduceReverberationLayout:Landroid/widget/LinearLayout;

.field private reduceReverberationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private selectedAdvancedNoiseMode:Landroid/widget/TextView;

.field private softwareAudioProcessingLayout:Landroid/view/View;

.field private softwareAudioProcessingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private suppressExcessiveNoiseLayout:Landroid/view/View;

.field private suppressExcessiveNoiseSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private testRecordingButton:Landroid/widget/TextView;

.field private testRecordingLayout:Landroid/view/View;

.field private testRecordingStatus:Landroid/widget/TextView;

.field private title:Landroid/view/View;

.field private unmuteMicView:Landroid/widget/TextView;

.field private volumeValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onWarningBadgeTapped()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCheckedChangedForEchoCancellationSwitch(Z)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCheckedChangedForSuppressExcessiveNoiseSwitch(Z)V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnlockForSuppressExcessiveNoiseSwitch()V

    return-void
.end method

.method static synthetic access$1200(Lus/zoom/zrc/settings/SettingMicrophoneFragment;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onPickupRangeCheckedChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->selectMicrophone(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$1500(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$1600(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$1700(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$1800(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$1900(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->showNetworkMicrophoneDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnlockForEchoCancellationSwitch()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCheckedChangedForAgcCancellationSwitch(Z)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnlockForAgcCancellationSwitch()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCheckedChangedForAudioProcessingSwitch(Z)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnlockForAudioProcessingSwitch()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCheckedChangedForReduceReverberationSwitch(Z)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnlockForReduceReverberation()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->volumeValue:Landroid/widget/TextView;

    return-object p0
.end method

.method private canMicrophoneTestingBeStartedAutomatically()Z
    .locals 3

    .line 584
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 585
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isSipMuted()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_1

    .line 586
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 588
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 591
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCurrentSelectedMicrophoneMuted()Z

    move-result v0

    xor-int/2addr v0, v1

    :goto_1
    return v0
.end method

.method private currentSelectedMicrophoneMuted()V
    .locals 2

    .line 494
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->canMicrophoneTestingBeStartedAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 499
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStartTestingMicrophoneVolume()V

    goto :goto_0

    .line 501
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStopTestingMicrophoneVolume()V

    :goto_0
    return-void
.end method

.method private doStartTestingMicrophoneVolume()V
    .locals 2

    .line 562
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->manuallySelectedDevice:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->startTestingMicrophoneVolume(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->manuallySelectedDevice:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-void
.end method

.method private doStopTestingMicrophoneVolume()V
    .locals 1

    .line 567
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->stopTestingMicrophoneVolume()V

    return-void
.end method

.method private hasVirtualAudioDevice()Z
    .locals 3

    .line 887
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 888
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 889
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v0

    .line 890
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 891
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private onCheckedChangedForAgcCancellationSwitch(Z)V
    .locals 2

    .line 372
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onCheckedChangedForAgcCancellationSwitch deviceInfo is null"

    const/4 v0, 0x0

    .line 374
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 377
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_agc_disabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_1

    .line 379
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/PTApp;->enableAutomaticGainControl(Z)I

    move-result v1

    if-nez v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 380
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_agc_disabled(Z)V

    .line 381
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    :cond_1
    return-void
.end method

.method private onCheckedChangedForAudioProcessingSwitch(Z)V
    .locals 2

    .line 816
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 820
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_aec_disabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_1

    .line 822
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/PTApp;->enableAcousticEchoCancellation(Z)I

    move-result v1

    if-nez v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 823
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_aec_disabled(Z)V

    .line 824
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    :cond_1
    return-void
.end method

.method private onCheckedChangedForEchoCancellationSwitch(Z)V
    .locals 2

    .line 357
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onCheckedChangedForEchoCancellationSwitch deviceInfo is null"

    const/4 v0, 0x0

    .line 359
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 362
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_aec_disabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_1

    .line 364
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/PTApp;->enableAcousticEchoCancellation(Z)I

    move-result v1

    if-nez v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 365
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_aec_disabled(Z)V

    .line 366
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    :cond_1
    return-void
.end method

.method private onCheckedChangedForReduceReverberationSwitch(Z)V
    .locals 2

    .line 839
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isHighly_reverberant_room_on()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 845
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/PTApp;->setHighlyReverberantRoomOn(Z)I

    move-result v1

    if-nez v1, :cond_1

    .line 846
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setHighly_reverberant_room_on(Z)V

    .line 847
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    :cond_1
    return-void
.end method

.method private onCheckedChangedForSuppressExcessiveNoiseSwitch(Z)V
    .locals 3

    .line 338
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onCheckedChangedForSuppressExcessiveNoiseSwitch deviceInfo is null"

    const/4 v0, 0x0

    .line 340
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSuppressNoiseDisable()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 346
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSuppressNoiseDisable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_2

    .line 348
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lus/zoom/zrcsdk/PTApp;->setMicrophoneEnableSuppressNoise(Z)I

    move-result v1

    if-nez v1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 349
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setSuppressNoiseDisable(Z)V

    .line 350
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    :cond_2
    return-void
.end method

.method private onMicrophoneVolumeChanged(ILjava/lang/String;I)V
    .locals 2

    .line 909
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 914
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 919
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    int-to-float p1, p3

    .line 924
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setMic_volume(F)V

    .line 925
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MicrophoneVolumeView;->onUpdateDeviceInfoView()V

    :cond_3
    return-void
.end method

.method private onPickupRangeCheckedChanged(I)V
    .locals 4

    .line 736
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 737
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPickupRange()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 742
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPickupRange()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 745
    sget v3, Lus/zoom/zrcbox/R$id;->btn_pickup_range_small:I

    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 747
    :cond_1
    sget v3, Lus/zoom/zrcbox/R$id;->btn_pickup_range_middle:I

    if-ne v3, p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 749
    :cond_2
    sget v3, Lus/zoom/zrcbox/R$id;->btn_pickup_range_big:I

    if-ne v3, p1, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    if-ne v2, v1, :cond_4

    return-void

    .line 757
    :cond_4
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/PTApp;->setMicrophonePickupRange(I)I

    .line 758
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setMicPickupRange(I)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "onPickupRangeCheckedChanged settingsDeviceInfo or getMicPickupRange is null"

    .line 738
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onTestRecordingButtonClicked()V
    .locals 4

    const-string v0, "onTestRecordingButtonClicked"

    const/4 v1, 0x0

    .line 762
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    const-string v2, "onTestRecordingButtonClicked mediaDeviceInfo is NULL!"

    .line 766
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 769
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMicrophoneTestRecordingStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 775
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lus/zoom/zrcsdk/PTApp;->testMicrophoneStartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    :pswitch_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lus/zoom/zrcsdk/PTApp;->testMicrophoneStopRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onUnlockForAgcCancellationSwitch()V
    .locals 3

    .line 798
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMicrophoneFragment$18;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$18;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onUnlockForAudioProcessingSwitch()V
    .locals 3

    .line 780
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMicrophoneFragment$16;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$16;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onUnlockForEchoCancellationSwitch()V
    .locals 3

    .line 789
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMicrophoneFragment$17;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$17;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onUnlockForReduceReverberation()V
    .locals 3

    .line 830
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMicrophoneFragment$20;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$20;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onUnlockForSuppressExcessiveNoiseSwitch()V
    .locals 3

    .line 807
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMicrophoneFragment$19;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$19;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onUnmuteAndTestMicrophone()V
    .locals 3

    const-string v0, "onUnmuteAndTestMicrophone"

    const/4 v1, 0x0

    .line 597
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->updateMySipPhoneAudio(Z)Z

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 601
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 602
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->updateAudioStatus(Z)Z

    .line 604
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setCurrentSelectedMicrophoneMuted(Z)V

    .line 605
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStartTestingMicrophoneVolume()V

    return-void
.end method

.method private onUpdateAudioStatusView()V
    .locals 0

    .line 526
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateTestingMicrophoneView()V

    return-void
.end method

.method private onUpdateContentView()V
    .locals 0

    .line 418
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    .line 419
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateMeetingInfoView()V

    .line 420
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateAudioStatusView()V

    .line 421
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateSipCallRelativeView()V

    .line 422
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateSettingsLocked()V

    .line 423
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateLongPressTips()V

    return-void
.end method

.method private onUpdateDeviceInfoView()V
    .locals 9

    .line 427
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRange:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 434
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_agc_disabled()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 435
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_aec_disabled()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 436
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_aec_disabled()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 437
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    invoke-virtual {v2}, Lus/zoom/zrc/view/MicrophoneVolumeView;->onUpdateDeviceInfoView()V

    .line 439
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isHighly_reverberant_room_on()Z

    move-result v2

    .line 440
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v3, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 442
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMic_volume()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-long v2, v2

    .line 444
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->volumeValue:Landroid/widget/TextView;

    sget v6, Lus/zoom/zrcbox/R$string;->zrc_setting_volume:I

    new-array v7, v4, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    invoke-virtual {p0, v6, v7}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsHighlyReverberantRoom()Z

    move-result v5

    .line 450
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getAdvancedNoiseSuppressionMode()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_2

    .line 451
    iget-object v6, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->advancedNoiseSuppressionModeLayout:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v6, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 454
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 455
    sget v6, Lus/zoom/zrcbox/R$string;->moderate:I

    invoke-virtual {p0, v6}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    sget v6, Lus/zoom/zrcbox/R$string;->aggressive:I

    invoke-virtual {p0, v6}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    sget v6, Lus/zoom/zrcbox/R$string;->disable:I

    invoke-virtual {p0, v6}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v6, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->selectedAdvancedNoiseMode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getAdvancedNoiseSuppressionMode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->advancedNoiseSuppressionModeLayout:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    :goto_1
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsSoftwareAudioProcessing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->noSoftwareAudioProcessingLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 467
    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->noSoftwareAudioProcessingLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :goto_2
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_aec_disabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 473
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSuppressNoiseDisable()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 474
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSuppressNoiseDisable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    goto :goto_4

    .line 477
    :cond_5
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :goto_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPickupRange()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 480
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRange:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 482
    :cond_6
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRange:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 485
    :cond_7
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRange:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :goto_5
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updatePickupRange()V

    .line 490
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateDeviceSourceList(Ljava/util/List;)V

    return-void
.end method

.method private onUpdateMeetingInfoView()V
    .locals 0

    .line 518
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateTestingMicrophoneView()V

    return-void
.end method

.method private onUpdateSettingsLocked()V
    .locals 2

    .line 506
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    .line 507
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setLockedState(Z)V

    .line 508
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateMicrophoneVolumeEnable()V

    .line 509
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewDim(Landroid/view/View;Z)V

    .line 510
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewDim(Landroid/view/View;Z)V

    .line 511
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewDim(Landroid/view/View;Z)V

    .line 512
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewDim(Landroid/view/View;Z)V

    .line 513
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewDim(Landroid/view/View;Z)V

    .line 514
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRange:Landroid/view/View;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private onUpdateSipCallRelativeView()V
    .locals 0

    .line 522
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateTestingMicrophoneView()V

    return-void
.end method

.method private onViewAppear()V
    .locals 1

    .line 572
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->canMicrophoneTestingBeStartedAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStartTestingMicrophoneVolume()V

    :cond_0
    return-void
.end method

.method private onViewDisappear()V
    .locals 0

    .line 579
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStopTestingMicrophoneVolume()V

    return-void
.end method

.method private onWarningBadgeTapped()V
    .locals 1

    .line 853
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method

.method private selectMicrophone(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 661
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStopTestingMicrophoneVolume()V

    .line 662
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrcsdk/PTApp;->selectMicrophone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->manuallySelectedDevice:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 665
    invoke-static {p1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v0

    if-nez v0, :cond_1

    .line 666
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->showNetworkMicrophoneDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_1
    return-void
.end method

.method private showNetworkMicrophoneDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 883
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method private updateDeviceSourceList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 627
    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setDeviceSourceList(Ljava/util/List;I)V

    .line 628
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateLongPressTips()V
    .locals 2

    .line 901
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->advanced_options_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 905
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->hasVirtualAudioDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateMicrophoneTestRecordingStatus()V
    .locals 4

    .line 684
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMicrophoneTestRecordingStatus()I

    move-result v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMicrophoneTestRecordingStatus\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    .line 696
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->test_microphone:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 697
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingStatus:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 691
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->test_microphone_stop:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 692
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingStatus:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->test_microphone_detail:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 693
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateMicrophoneVolumeEnable()V
    .locals 4

    .line 615
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    .line 616
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_mic_volume_adjustable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 619
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setTouchable(Z)V

    return-void
.end method

.method private updateMicrophoneVolumeIndicator(I)V
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMicrophoneVolumeIndicator volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 610
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->getMax()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 611
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setProgress(I)V

    return-void
.end method

.method private updatePickupRange()V
    .locals 2

    .line 715
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPickupRange()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 719
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPickupRange()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 729
    :pswitch_0
    sget v1, Lus/zoom/zrcbox/R$id;->btn_pickup_range_big:I

    goto :goto_0

    .line 726
    :pswitch_1
    sget v1, Lus/zoom/zrcbox/R$id;->btn_pickup_range_middle:I

    goto :goto_0

    .line 723
    :pswitch_2
    sget v1, Lus/zoom/zrcbox/R$id;->btn_pickup_range_small:I

    .line 732
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTestingMicrophoneView()V
    .locals 6

    .line 530
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    .line 531
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMicRecordTest()Z

    move-result v1

    .line 533
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-ne v5, v2, :cond_3

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 537
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->canMicrophoneTestingBeStartedAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 540
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStopTestingMicrophoneVolume()V

    goto :goto_2

    .line 542
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 546
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 550
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->canMicrophoneTestingBeStartedAutomatically()Z

    move-result v0

    if-nez v0, :cond_4

    .line 551
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 553
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->doStopTestingMicrophoneVolume()V

    goto :goto_2

    .line 555
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 401
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isInMeeting()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 413
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->batchHideView(Ljava/util/List;)V

    .line 414
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 396
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 673
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 674
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnmuteAndTestMicrophone()V

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 676
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onTestRecordingButtonClicked()V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 678
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onBack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 152
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 159
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_microphone:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 160
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->title:Landroid/view/View;

    .line 161
    sget p2, Lus/zoom/zrcbox/R$id;->progressbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/MicrophoneVolumeView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    .line 162
    sget p2, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 163
    sget p3, Lus/zoom/zrcbox/R$id;->ctv_echo_cancellation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 164
    sget p3, Lus/zoom/zrcbox/R$id;->rl_echo_cancellation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationLayout:Landroid/view/View;

    .line 165
    sget p3, Lus/zoom/zrcbox/R$id;->rl_agc_cancellation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationLayout:Landroid/view/View;

    .line 166
    sget p3, Lus/zoom/zrcbox/R$id;->ctv_agc_cancellation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 167
    sget p3, Lus/zoom/zrcbox/R$id;->ctv_reduce_excessive_sound_reverberation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 168
    sget p3, Lus/zoom/zrcbox/R$id;->ll_reduce_excessive_sound_reverberation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationLayout:Landroid/widget/LinearLayout;

    .line 169
    sget p3, Lus/zoom/zrcbox/R$id;->zrc_setting_volume:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->volumeValue:Landroid/widget/TextView;

    .line 170
    sget p3, Lus/zoom/zrcbox/R$id;->rl_no_software_audio_process:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->noSoftwareAudioProcessingLayout:Landroid/view/View;

    .line 171
    sget p3, Lus/zoom/zrcbox/R$id;->rl_software_audio_processing:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingLayout:Landroid/view/View;

    .line 172
    sget p3, Lus/zoom/zrcbox/R$id;->ctv_software_audio_processing:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 173
    sget p3, Lus/zoom/zrcbox/R$id;->advanced_noise_suppression_mode_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->advancedNoiseSuppressionModeLayout:Landroid/view/View;

    .line 174
    sget p3, Lus/zoom/zrcbox/R$id;->advanced_noise_suppression_mode_tv:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->selectedAdvancedNoiseMode:Landroid/widget/TextView;

    .line 175
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->selectedAdvancedNoiseMode:Landroid/widget/TextView;

    invoke-static {p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 176
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isInMeeting()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isInPhoneCall()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isTablet()Z

    move-result p3

    if-nez p3, :cond_2

    .line 177
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->selectedAdvancedNoiseMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->settings_advanced_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :cond_2
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->advancedNoiseSuppressionModeLayout:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/settings/SettingMicrophoneFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$1;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance p3, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isInMeeting()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isInPhoneCall()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p3, v1, v2}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    .line 189
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    new-instance v1, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p3, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setOnSeeMoreClickListener(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;)V

    .line 205
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 209
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->backBtn:Landroid/view/View;

    .line 210
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    .line 213
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$3;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->echoCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$4;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 232
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$5;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$5;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->agcCancellationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$6;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$6;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 251
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$7;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$7;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 257
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->softwareAudioProcessingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$8;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$8;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 269
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$9;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$9;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 276
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->reduceReverberationSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$10;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$10;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 287
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->microphoneVolumeView:Lus/zoom/zrc/view/MicrophoneVolumeView;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$11;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$11;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setListener(Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;)V

    .line 294
    sget p2, Lus/zoom/zrcbox/R$id;->test_recording_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingLayout:Landroid/view/View;

    .line 295
    sget p2, Lus/zoom/zrcbox/R$id;->test_recording_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    .line 296
    sget p2, Lus/zoom/zrcbox/R$id;->test_recording_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingStatus:Landroid/widget/TextView;

    .line 297
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->testRecordingButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    sget p2, Lus/zoom/zrcbox/R$id;->ll_suppress_excessive_noise:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseLayout:Landroid/view/View;

    .line 300
    sget p2, Lus/zoom/zrcbox/R$id;->ctv_suppress_excessive_noise:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 302
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$12;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$12;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->suppressExcessiveNoiseSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$13;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$13;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 319
    sget p2, Lus/zoom/zrcbox/R$id;->ll_pickup_range:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRange:Landroid/view/View;

    .line 320
    sget p2, Lus/zoom/zrcbox/R$id;->rg_pickup_range:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    .line 321
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    .line 322
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/MicrophonePickupRangeButton;

    invoke-virtual {p2, v3}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setPickupRange(I)V

    .line 323
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/MicrophonePickupRangeButton;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setPickupRange(I)V

    .line 324
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/MicrophonePickupRangeButton;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setPickupRange(I)V

    .line 326
    :cond_5
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->pickupRangeRadioGroup:Landroid/widget/RadioGroup;

    new-instance p3, Lus/zoom/zrc/settings/SettingMicrophoneFragment$14;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$14;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 332
    sget p2, Lus/zoom/zrcbox/R$id;->unmute_mic_to_test:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    .line 333
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->unmuteMicView:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 710
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onDestroyView()V

    .line 711
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onViewDisappear()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onViewDisappear()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onViewAppear()V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 633
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    const-string p2, ""

    .line 634
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "item click to select microphone ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/Object;

    invoke-static {p2, p3, p5}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 638
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 641
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 642
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lus/zoom/zrc/settings/SettingMicrophoneFragment$15;

    invoke-direct {p4, p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$15;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-static {p2, p3, p4}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 653
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->selectMicrophone(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    const-string p2, "onItemClick: device id: %s, device name: %s "

    const/4 p3, 0x2

    .line 654
    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    const/4 p4, 0x1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 858
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 860
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    const-string p2, "onItemLongClick: device id: %s, device name: %s "

    const/4 p4, 0x2

    .line 863
    new-array p5, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p5, v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, p3

    invoke-static {p2, p5}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 865
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    sget p4, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, p4}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;

    invoke-direct {p5, p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-static {p2, p4, p5}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return p3

    .line 874
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->showNetworkMicrophoneDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    const-string p2, "onItemLongClick: device id: %s, device name: %s "

    .line 875
    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p3

    invoke-static {p2, p4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 126
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->MicrophoneTestingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 127
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 128
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateMicrophoneVolumeIndicator(I)V

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SetMicrophoneVolumeResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 131
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 132
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "deviceId"

    .line 133
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "volume"

    .line 134
    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 135
    invoke-direct {p0, p1, v0, p2}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onMicrophoneVolumeChanged(ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 99
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipMuted:I

    if-eq p1, p2, :cond_7

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->audioStatus:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    if-ne p1, p2, :cond_1

    .line 102
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateMeetingInfoView()V

    goto :goto_1

    .line 103
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p1, p2, :cond_2

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateSipCallRelativeView()V

    goto :goto_1

    .line 105
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_3

    .line 106
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateDeviceInfoView()V

    .line 107
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateMicrophoneVolumeEnable()V

    .line 108
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateLongPressTips()V

    goto :goto_1

    .line 109
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_4

    .line 110
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateSettingsLocked()V

    goto :goto_1

    .line 111
    :cond_4
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->microphoneTestRecordingStatus:I

    if-ne p1, p2, :cond_5

    .line 112
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateMicrophoneTestRecordingStatus()V

    goto :goto_1

    .line 113
    :cond_5
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualAudioDeviceList:I

    if-ne p1, p2, :cond_6

    .line 114
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 116
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->updateDeviceSourceList(Ljava/util/List;)V

    goto :goto_1

    .line 118
    :cond_6
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->currentSelectedMicrophoneMuted:I

    if-ne p1, p2, :cond_8

    .line 119
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->currentSelectedMicrophoneMuted()V

    .line 120
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateAudioStatusView()V

    goto :goto_1

    .line 100
    :cond_7
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateAudioStatusView()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 388
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 389
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 390
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUpdateContentView()V

    .line 391
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onViewAppear()V

    return-void
.end method
