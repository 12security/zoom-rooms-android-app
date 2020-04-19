.class public Lus/zoom/zrc/settings/SettingMenuFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private aboutLayout:Landroid/view/View;

.field private audioLogDescription:Landroid/widget/TextView;

.field private audioLogLayout:Landroid/view/View;

.field private audioLogSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private backBtn:Landroid/view/View;

.field private cameraLayout:Landroid/view/View;

.field private cameraTv:Landroid/widget/TextView;

.field private cecControlLayout:Landroid/view/View;

.field private cecControlTv:Landroid/widget/TextView;

.field private closedCaptionFontSizeLayout:Landroid/view/View;

.field private closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

.field private closedCaptionLayout:Landroid/view/View;

.field private closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private currentView:Landroid/view/View;

.field private displayTopBannerSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private doneBtn:Landroid/view/View;

.field private lastSelectedView:Landroid/view/View;

.field private lockLayout:Landroid/view/View;

.field private lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private lockTips:Landroid/view/View;

.field private microLayout:Landroid/view/View;

.field private microWarningBadge:Landroid/widget/ImageView;

.field private microphoneTv:Landroid/widget/TextView;

.field private phoneLayout:Landroid/view/View;

.field private profileLayout:Landroid/view/View;

.field private profileTv:Landroid/widget/TextView;

.field private roomNameLayout:Landroid/view/View;

.field private roomNameTv:Landroid/widget/TextView;

.field private selectedWhiteboardCamera:Landroid/widget/TextView;

.field private signOut:Landroid/widget/TextView;

.field private speakerLayout:Landroid/view/View;

.field private speakerTv:Landroid/widget/TextView;

.field private sysSelectedCameraTips:Landroid/widget/TextView;

.field private sysSelectedMicTips:Landroid/widget/TextView;

.field private sysSelectedSpeakerTips:Landroid/widget/TextView;

.field private title:Landroid/view/View;

.field private ultrasoundSharingLayout:Landroid/view/View;

.field private virtualBackgroundLayout:Landroid/view/View;

.field private whiteboardCameraLayout:Landroid/view/View;

.field private whiteboardCameraMenuLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingMenuFragment;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->onViewBackgroundChange(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/settings/SettingMenuFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/SettingMenuFragment;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->onCheckedChangedForClosedCaptionSwitch(Z)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/SettingMenuFragment;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->onCheckedChangedForUltrasoundSharingSwitch(Z)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/SettingMenuFragment;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->onCheckedChangedForLockSettingsSwitch(Z)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/settings/SettingMenuFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onUnlockForLockSettingsSwitch()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/settings/SettingMenuFragment;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->onCheckedChangedForAudioLogSwitch(Z)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/settings/SettingMenuFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/settings/SettingMenuFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/settings/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    return-object p0
.end method

.method private alignTextViewToTextRight(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 440
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 441
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result p2

    add-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private announceMenuSelectedForAccessibility(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 630
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuilder;)V

    .line 632
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private closedCaptionProgressChanged(Landroid/widget/SeekBar;)V
    .locals 3

    .line 871
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 872
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    .line 873
    invoke-static {v0, p1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->correctValue(II)I

    move-result v1

    .line 874
    invoke-static {v0, p1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->convertToFontSize(II)I

    move-result p1

    .line 875
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->setFontSize(I)V

    if-eq v1, v0, :cond_0

    .line 877
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 879
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrcsdk/ConfApp;->controlClosedCaptionVisible(ZI)I

    const/16 p1, 0x66

    .line 880
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    return-void
.end method

.method private initVirtualBackgroundMenuLayout(Landroid/view/View;)V
    .locals 1

    .line 325
    sget v0, Lus/zoom/zrcbox/R$id;->virtual_background_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->virtualBackgroundLayout:Landroid/view/View;

    .line 326
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->virtualBackgroundLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    sget v0, Lus/zoom/zrcbox/R$id;->iv_virtual_background_right_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 329
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 330
    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    return-void
.end method

.method private initWhiteboardCameraMenuLayout(Landroid/view/View;)V
    .locals 1

    .line 334
    sget v0, Lus/zoom/zrcbox/R$id;->whiteboard_camera_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraMenuLayout:Landroid/view/View;

    .line 335
    sget v0, Lus/zoom/zrcbox/R$id;->whiteboard_camera_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    sget v0, Lus/zoom/zrcbox/R$id;->tv_selected_whiteboard_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->selectedWhiteboardCamera:Landroid/widget/TextView;

    return-void
.end method

.method private onCheckedChangedForAudioLogSwitch(Z)V
    .locals 1

    .line 924
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->audioTroubleShootingEnable(Z)I

    return-void
.end method

.method private onCheckedChangedForClosedCaptionSwitch(Z)V
    .locals 3

    .line 368
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->isVisible()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    .line 372
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->getFontSize()I

    move-result v1

    .line 374
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lus/zoom/zrcsdk/ConfApp;->controlClosedCaptionVisible(ZI)I

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    .line 376
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->setVisible(Z)V

    .line 377
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->onUpdateClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    :cond_1
    const/16 p1, 0x65

    .line 379
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    return-void
.end method

.method private onCheckedChangedForLockSettingsSwitch(Z)V
    .locals 1

    .line 396
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 397
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    .line 398
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsLocked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onCheckedChangedForUltrasoundSharingSwitch(Z)V
    .locals 1

    .line 383
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->setUltrasoundSharingEnabled(Z)V

    return-void
.end method

.method private onSettingsLockedChanged()V
    .locals 2

    .line 884
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    return-void
.end method

.method private onShowWarningBadgeIcon()V
    .locals 4

    .line 541
    invoke-static {}, Lus/zoom/zrc/settings/MediaDeviceUtils;->warningOfCombinedMicrophone()Z

    move-result v0

    .line 542
    invoke-static {}, Lus/zoom/zrc/settings/MediaDeviceUtils;->warningOfVirtualAudioDevice()Z

    move-result v1

    .line 543
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 546
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microWarningBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 556
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->currentView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microLayout:Landroid/view/View;

    if-ne v0, v1, :cond_4

    .line 557
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microWarningBadge:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->warningbadgeselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 559
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microWarningBadge:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->warningbadge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 554
    :cond_5
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microWarningBadge:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->warningbadge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 563
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microWarningBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private onSignOutClick()V
    .locals 3

    .line 663
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show pass code entry dialog"

    const/4 v1, 0x0

    .line 664
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMenuFragment$9;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$9;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 673
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut()V

    return-void
.end method

.method private onUnlockForLockSettingsSwitch()V
    .locals 3

    .line 387
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingMenuFragment$8;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$8;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onUpdateRoomScreenInfoView()V
    .locals 7

    .line 523
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    .line 524
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    .line 525
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfCecAdapterAttachedScreens()I

    move-result v2

    .line 526
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v0

    .line 528
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsHdmiCecControl()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlTv:Landroid/widget/TextView;

    .line 531
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$string;->screen_detail:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 533
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x1

    .line 534
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    .line 531
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onUpdateViewContent()V
    .locals 0

    .line 636
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateRoomInfoView()V

    .line 637
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateDeviceInfoView()V

    .line 638
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateJoinOnlyModeStatus()V

    .line 639
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onUpdateRoomScreenInfoView()V

    .line 640
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateClosedCaptionView()V

    .line 641
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateAudioTroubleShootingView()V

    .line 642
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onSettingsLockedChanged()V

    .line 643
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateRoomProfiles()V

    .line 644
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateVirtualBackgroundView()V

    .line 645
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateWhiteboardCameraMenuLayout()V

    .line 646
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateSelectedWhiteboardCameraName()V

    return-void
.end method

.method private onViewBackgroundChange(Landroid/view/View;)V
    .locals 2

    .line 606
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 610
    sget v1, Lus/zoom/zrcbox/R$drawable;->settings_menu_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 611
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->setSelectedForFirstChildViewAccessibility(Landroid/view/View;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 614
    sget v0, Lus/zoom/zrcbox/R$drawable;->settings_menu_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x1

    .line 615
    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->setSelectedForFirstChildViewAccessibility(Landroid/view/View;Z)V

    .line 617
    :cond_2
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    .line 619
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->announceMenuSelectedForAccessibility(Landroid/view/View;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private showContentFragment(Ljava/lang/String;)V
    .locals 3

    .line 446
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "parentFragment"

    const-string v2, "fragmentClass"

    .line 447
    invoke-static {v1, v0, v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 448
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_RIGHT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_LEFT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private signOut()V
    .locals 5

    .line 677
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 681
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsSignoutZR()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 682
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 685
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 686
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    :cond_1
    if-nez v0, :cond_2

    .line 689
    new-instance v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;-><init>()V

    :cond_2
    const/4 v1, 0x4

    .line 691
    iput v1, v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    .line 692
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 693
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out_tips:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setVerticalStyle(Z)V

    .line 696
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lus/zoom/zrc/settings/SettingMenuFragment$10;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$10;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 704
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out_zrc_only:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lus/zoom/zrc/settings/SettingMenuFragment$11;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$11;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 711
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lus/zoom/zrc/settings/SettingMenuFragment$12;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$12;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 717
    invoke-virtual {v0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setCancelable(Z)V

    .line 718
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 719
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    goto :goto_0

    .line 722
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->logout(Z)V

    const-string v0, "on click %s, work mode is %s"

    .line 723
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 678
    :cond_4
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->logout(Z)V

    return-void
.end method

.method private updateAudioTroubleShootingView()V
    .locals 4

    .line 906
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 908
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getMeetingAudioTroubleShootingStatus()Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 911
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 915
    :cond_2
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record()Z

    move-result v0

    .line 917
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 919
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    goto :goto_3

    .line 912
    :cond_3
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateClosedCaptionView()V
    .locals 4

    .line 583
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->isAvailable()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 585
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 590
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 592
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 595
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->getFontSize()I

    move-result v0

    .line 598
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 599
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->convertToValue(II)I

    move-result v0

    .line 600
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 601
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void

    .line 587
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateCloudPbxView()V
    .locals 2

    .line 568
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 572
    :cond_2
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 574
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onViewBackgroundChange(Landroid/view/View;)V

    .line 575
    const-class v0, Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateDeviceInfoView()V
    .locals 6

    .line 460
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 466
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getNumberOfCombinedDevices()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v4

    if-lez v4, :cond_2

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 471
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 473
    :cond_2
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :goto_0
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 478
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->alternative_device:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 482
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->no_device:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 484
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->none:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 488
    :goto_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 490
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 492
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 494
    :cond_5
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->alternative_device:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 498
    :cond_6
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->no_device:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerTv:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->none:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 504
    :goto_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 506
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 508
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 510
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->alternative_device:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 514
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->no_device:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 516
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraTv:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->none:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 519
    :goto_3
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onShowWarningBadgeIcon()V

    return-void
.end method

.method private updateJoinOnlyModeStatus()V
    .locals 2

    .line 650
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockTips:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockTips:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :cond_1
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateUltrasoundVisibility()V

    return-void
.end method

.method private updateRoomInfoView()V
    .locals 2

    .line 456
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameTv:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRoomProfiles()V
    .locals 3

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    .line 150
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    if-ne v0, v1, :cond_4

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onViewBackgroundChange(Landroid/view/View;)V

    .line 144
    const-class v0, Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateSelectedWhiteboardCameraName()V
    .locals 2

    .line 360
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->selectedWhiteboardCamera:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->selectedWhiteboardCamera:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUltrasoundVisibility()V
    .locals 2

    .line 888
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->ultrasoundSharingLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 899
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateVirtualBackgroundView()V
    .locals 3

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->virtualBackgroundLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualBackgrounds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->virtualBackgroundLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 166
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->virtualBackgroundLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateWhiteboardCameraMenuLayout()V
    .locals 2

    .line 342
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isZRCMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraMenuLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lastSelectedView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 350
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onViewBackgroundChange(Landroid/view/View;)V

    .line 351
    const-class v0, Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraMenuLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 8

    .line 729
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->ultrasoundSharingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->ultrasoundSharingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->doneBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->backBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 741
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isZRPMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 747
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    .line 748
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 750
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->doneBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 742
    :cond_6
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->ultrasoundSharingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->doneBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->backBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v5, :cond_7

    const/16 v0, 0xb

    .line 757
    new-array v0, v0, [Ljava/lang/Integer;

    sget v7, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v2

    sget v7, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    sget v7, Lus/zoom/zrcbox/R$id;->close_caption_layout:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v5

    sget v7, Lus/zoom/zrcbox/R$id;->microphone_layout:I

    .line 758
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v4

    sget v4, Lus/zoom/zrcbox/R$id;->speaker_layout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget v4, Lus/zoom/zrcbox/R$id;->camera_layout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lus/zoom/zrcbox/R$id;->cec_control_layout:I

    .line 759
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lus/zoom/zrcbox/R$id;->phone_layout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->rl_ultrasound_sharing:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget v3, Lus/zoom/zrcbox/R$id;->audio_log_layout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget v3, Lus/zoom/zrcbox/R$id;->audio_log_description:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 757
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 761
    new-array v1, v5, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->room_name_wrap_layout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget v2, Lus/zoom/zrcbox/R$id;->about_wrap_layout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_3

    .line 763
    :cond_7
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_a

    .line 765
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 766
    new-array v0, v3, [Ljava/lang/Integer;

    sget v1, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lus/zoom/zrcbox/R$id;->close_caption_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lus/zoom/zrcbox/R$id;->iv_microphone_arrow:I

    .line 767
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 766
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 769
    :cond_8
    new-array v0, v6, [Ljava/lang/Integer;

    sget v1, Lus/zoom/zrcbox/R$id;->close_caption_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 772
    :goto_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v1

    if-nez v1, :cond_9

    .line 773
    new-array v1, v5, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->room_name_wrap_layout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget v2, Lus/zoom/zrcbox/R$id;->about_wrap_layout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 775
    :cond_9
    new-array v0, v5, [Ljava/lang/Integer;

    sget v1, Lus/zoom/zrcbox/R$id;->room_name_wrap_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$id;->camera_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 776
    new-array v1, v6, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->about_wrap_layout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 780
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    sget v1, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lus/zoom/zrcbox/R$id;->iv_microphone_arrow:I

    .line 781
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lus/zoom/zrcbox/R$id;->about_wrap_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 780
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 783
    new-array v0, v6, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->room_name_wrap_layout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 785
    :goto_3
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->batchHideView(Ljava/util/List;)V

    .line 786
    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 791
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 792
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onSignOutClick()V

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->backBtn:Landroid/view/View;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->doneBtn:Landroid/view/View;

    if-ne p1, v0, :cond_1

    goto/16 :goto_1

    .line 798
    :cond_1
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->currentView:Landroid/view/View;

    .line 799
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->onViewBackgroundChange(Landroid/view/View;)V

    .line 800
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onShowWarningBadgeIcon()V

    .line 801
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 802
    const-class p1, Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 803
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microLayout:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 805
    const-class p1, Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x67

    .line 806
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerLayout:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 808
    const-class p1, Lus/zoom/zrc/settings/SettingSpeakerFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x68

    .line 809
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraLayout:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 811
    const-class p1, Lus/zoom/zrc/settings/SettingCameraFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x69

    .line 812
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlLayout:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 814
    const-class p1, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x6b

    .line 815
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 817
    const-class p1, Lus/zoom/zrc/settings/SettingCloudPbxFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x6a

    .line 818
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->aboutLayout:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 820
    const-class p1, Lus/zoom/zrc/settings/SettingAboutFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x6c

    .line 821
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 823
    const-class p1, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x70

    .line 824
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->virtualBackgroundLayout:Landroid/view/View;

    if-ne p1, v0, :cond_a

    .line 826
    const-class p1, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x71

    .line 827
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :cond_a
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->whiteboardCameraLayout:Landroid/view/View;

    if-ne p1, v0, :cond_b

    .line 829
    const-class p1, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->showContentFragment(Ljava/lang/String;)V

    const/16 p1, 0x72

    .line 830
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void

    .line 795
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onBack()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 186
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ClosedCaptionResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SetCloseCaptionResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateUltrasoundWhiteList:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_menu_list_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 194
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_sign_out:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    .line 195
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object p2

    if-nez p2, :cond_0

    .line 196
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->unpair:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :goto_0
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->backBtn:Landroid/view/View;

    .line 201
    sget p2, Lus/zoom/zrcbox/R$id;->done:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->doneBtn:Landroid/view/View;

    .line 202
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->title:Landroid/view/View;

    .line 203
    sget p2, Lus/zoom/zrcbox/R$id;->tv_room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameTv:Landroid/widget/TextView;

    .line 204
    sget p2, Lus/zoom/zrcbox/R$id;->tv_microphone_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    .line 205
    sget p2, Lus/zoom/zrcbox/R$id;->tv_speaker_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerTv:Landroid/widget/TextView;

    .line 206
    sget p2, Lus/zoom/zrcbox/R$id;->tv_camera_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraTv:Landroid/widget/TextView;

    .line 207
    sget p2, Lus/zoom/zrcbox/R$id;->profile_selected_source:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileTv:Landroid/widget/TextView;

    .line 208
    sget p2, Lus/zoom/zrcbox/R$id;->tv_screen_control_by_cec:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlTv:Landroid/widget/TextView;

    .line 209
    sget p2, Lus/zoom/zrcbox/R$id;->mic_system_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedMicTips:Landroid/widget/TextView;

    .line 210
    sget p2, Lus/zoom/zrcbox/R$id;->speaker_system_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    .line 211
    sget p2, Lus/zoom/zrcbox/R$id;->camera_system_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    .line 212
    sget p2, Lus/zoom/zrcbox/R$id;->warning_badge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microWarningBadge:Landroid/widget/ImageView;

    .line 215
    sget p2, Lus/zoom/zrcbox/R$id;->close_caption_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionLayout:Landroid/view/View;

    .line 216
    sget p2, Lus/zoom/zrcbox/R$id;->close_caption_font_size_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeLayout:Landroid/view/View;

    .line 217
    sget p2, Lus/zoom/zrcbox/R$id;->close_caption_seekbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    .line 218
    sget p2, Lus/zoom/zrcbox/R$id;->close_caption_checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 219
    sget p2, Lus/zoom/zrcbox/R$id;->display_top_banner_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 220
    sget p3, Lus/zoom/zrcbox/R$id;->display_top_banner_switch:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->displayTopBannerSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 221
    sget p3, Lus/zoom/zrcbox/R$id;->display_top_banner_des:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 222
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSupportDisplayTopBanner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->displayTopBannerSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->isDisplayTopBanner()Z

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 227
    :cond_1
    sget p2, Lus/zoom/zrcbox/R$id;->room_name_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    .line 228
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    new-instance p3, Lus/zoom/zrc/settings/SettingMenuFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$1;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 234
    sget p2, Lus/zoom/zrcbox/R$id;->microphone_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microLayout:Landroid/view/View;

    .line 235
    sget p2, Lus/zoom/zrcbox/R$id;->speaker_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerLayout:Landroid/view/View;

    .line 236
    sget p2, Lus/zoom/zrcbox/R$id;->camera_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraLayout:Landroid/view/View;

    .line 237
    sget p2, Lus/zoom/zrcbox/R$id;->device_profile_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    .line 238
    sget p2, Lus/zoom/zrcbox/R$id;->cec_control_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlLayout:Landroid/view/View;

    .line 239
    sget p2, Lus/zoom/zrcbox/R$id;->phone_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    .line 240
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 241
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_3
    sget p2, Lus/zoom/zrcbox/R$id;->about:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->aboutLayout:Landroid/view/View;

    .line 244
    sget p2, Lus/zoom/zrcbox/R$id;->locked_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockLayout:Landroid/view/View;

    .line 246
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->initVirtualBackgroundMenuLayout(Landroid/view/View;)V

    .line 247
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->initWhiteboardCameraMenuLayout(Landroid/view/View;)V

    .line 249
    sget p2, Lus/zoom/zrcbox/R$id;->lock_settings_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 250
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 251
    sget p2, Lus/zoom/zrcbox/R$id;->rl_ultrasound_sharing:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->ultrasoundSharingLayout:Landroid/view/View;

    .line 252
    sget p2, Lus/zoom/zrcbox/R$id;->ctv_ultrasound_sharing:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 253
    sget p3, Lus/zoom/zrcbox/R$id;->ll_unlock_message:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockTips:Landroid/view/View;

    .line 255
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->doneBtn:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->phoneLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->aboutLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 268
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v0, Lus/zoom/zrc/settings/SettingMenuFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$2;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p3, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 275
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->displayTopBannerSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v0, Lus/zoom/zrc/settings/SettingMenuFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$3;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p3, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isDebugConfigEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 286
    new-instance p3, Lus/zoom/zrc/settings/SettingMenuFragment$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$4;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMenuFragment$5;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$5;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->lockSettingsSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMenuFragment$6;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$6;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 312
    sget p2, Lus/zoom/zrcbox/R$id;->audio_log_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogLayout:Landroid/view/View;

    .line 313
    sget p2, Lus/zoom/zrcbox/R$id;->audio_log_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogDescription:Landroid/widget/TextView;

    .line 314
    sget p2, Lus/zoom/zrcbox/R$id;->audio_log_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 315
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->audioLogSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/settings/SettingMenuFragment$7;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingMenuFragment$7;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 840
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 841
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    .line 842
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->getFontSize()I

    move-result p3

    invoke-static {p2, p1, p3}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->convertToFontSize(III)I

    move-result p3

    .line 843
    invoke-static {p3, p1}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->convertToValue(II)I

    move-result p1

    .line 844
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->setFontSize(I)V

    if-eq p1, p2, :cond_1

    .line 846
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionFontSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lus/zoom/zrc/settings/SettingMenuFragment$13;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment$13;-><init>(Lus/zoom/zrc/settings/SettingMenuFragment;I)V

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 853
    :cond_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->isVisible()Z

    move-result p2

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->controlClosedCaptionVisible(ZI)I

    const/16 p1, 0x66

    .line 854
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingsUsageTrack;->sendUsageTrackForSettingsTab(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionProgressChanged(Landroid/widget/SeekBar;)V

    :goto_0
    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 172
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ClosedCaptionResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-eq p2, p1, :cond_1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->SetCloseCaptionResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateUltrasoundWhiteList:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_2

    .line 178
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateUltrasoundVisibility()V

    goto :goto_1

    .line 174
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 175
    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 104
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-eq p1, p2, :cond_d

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne p1, p2, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_1

    .line 107
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateDeviceInfoView()V

    goto/16 :goto_2

    .line 108
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomScreenInfo:I

    if-ne p1, p2, :cond_2

    .line 109
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onUpdateRoomScreenInfoView()V

    goto/16 :goto_2

    .line 110
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_3

    .line 111
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onSettingsLockedChanged()V

    goto/16 :goto_2

    .line 112
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->closedCaptionInfo:I

    if-ne p1, p2, :cond_4

    .line 113
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateClosedCaptionView()V

    goto :goto_2

    .line 114
    :cond_4
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingAudioTroubleShootingStatus:I

    if-ne p1, p2, :cond_5

    .line 115
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateAudioTroubleShootingView()V

    goto :goto_2

    .line 116
    :cond_5
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->displayTopBanner:I

    if-ne p1, p2, :cond_6

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->displayTopBannerSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    if-eqz p1, :cond_e

    .line 118
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isDisplayTopBanner()Z

    move-result p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    goto :goto_2

    .line 120
    :cond_6
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-eq p1, p2, :cond_c

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p1, p2, :cond_7

    goto :goto_0

    .line 122
    :cond_7
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualAudioDeviceList:I

    if-ne p1, p2, :cond_8

    .line 123
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onShowWarningBadgeIcon()V

    .line 124
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateDeviceInfoView()V

    goto :goto_2

    .line 125
    :cond_8
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomProfiles:I

    if-ne p1, p2, :cond_9

    .line 126
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateRoomProfiles()V

    goto :goto_2

    .line 127
    :cond_9
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualBackgrounds:I

    if-ne p1, p2, :cond_a

    .line 128
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateVirtualBackgroundView()V

    goto :goto_2

    .line 129
    :cond_a
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraInfo:I

    if-ne p1, p2, :cond_b

    .line 130
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateWhiteboardCameraMenuLayout()V

    goto :goto_2

    .line 131
    :cond_b
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selectedWhiteboardCamera:I

    if-ne p1, p2, :cond_e

    .line 132
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateSelectedWhiteboardCameraName()V

    goto :goto_2

    .line 121
    :cond_c
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateCloudPbxView()V

    goto :goto_2

    .line 105
    :cond_d
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->updateRoomInfoView()V

    :cond_e
    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 427
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 428
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 429
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->onUpdateViewContent()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 867
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->closedCaptionProgressChanged(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 404
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 406
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInMeeting()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isInPhoneCall()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingMenuFragment;->isTablet()Z

    move-result p2

    if-nez p2, :cond_1

    .line 407
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->iv_microphone_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {p2, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 409
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->roomNameTv:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 410
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerTv:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 411
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedSpeakerTips:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->speakerTv:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->alignTextViewToTextRight(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 412
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraTv:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 413
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->profileTv:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 414
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->sysSelectedCameraTips:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cameraTv:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->alignTextViewToTextRight(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 415
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->cecControlTv:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 416
    sget p2, Lus/zoom/zrcbox/R$id;->phone_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {p2, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 418
    sget p2, Lus/zoom/zrcbox/R$id;->about_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {p2, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 420
    sget p2, Lus/zoom/zrcbox/R$id;->tv_selected_whiteboard_camera:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 421
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment;->microphoneTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method
