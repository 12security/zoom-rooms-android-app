.class public Lus/zoom/zrcsdk/ConfApp;
.super Ljava/lang/Object;
.source "ConfApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native allowRecordingImpl(ZI)I
.end method

.method private native answerHostRequestUnmuteAudioImp(Z)I
.end method

.method private native answerHostRequestUnmuteVideoImp(Z)I
.end method

.method private native audioTroubleShootingEnableImp(Z)I
.end method

.method private native callOutPSTNUserImpl(Ljava/lang/String;Ljava/lang/String;ZZZZ)I
.end method

.method private native cancelEnteringMeetingPasswordImpl()I
.end method

.method private native cancelInvitingLegacyRoomSystemWithIpOrE164NumberImp(Ljava/lang/String;I)I
.end method

.method private native cancelSpolightUserImp(I)I
.end method

.method private native cancelWaitingForHostImpl()I
.end method

.method private native changeHostImpl(I)I
.end method

.method private native claimHostImp(Ljava/lang/String;)I
.end method

.method private native controlCameraForImpl(ILjava/lang/String;IIZ)I
.end method

.method private native controlClosedCaptionVisibleImp(ZI)I
.end method

.method private native controlVideoPositionImp(II)I
.end method

.method private native enterShareOnAllScreensImpl()I
.end method

.method private native exitMeetingImpl(Z)I
.end method

.method private native expelUserImpl(I)I
.end method

.method private native farEndswitchCameraForVideoImpl(I)I
.end method

.method private native getAllMeetingInfoImpl()I
.end method

.method private native inviteAttendeesImpl(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private native inviteLegacyRoomSystemWithIpOrE164NumberImpl(Ljava/lang/String;I)I
.end method

.method private native listParticipantsImp(II)I
.end method

.method private native lockMeetingImpl(Z)I
.end method

.method private native mirrorOwnVideoImpl(ZLjava/lang/String;)I
.end method

.method private native muteAllAudioImpl(Z)I
.end method

.method private native muteOnEntryImpl(Z)I
.end method

.method private native muteUserAudioImpl(IZ)I
.end method

.method private native muteUserVideoImp(IZ)I
.end method

.method private native optimizeVideoSharingImpl(Z)I
.end method

.method private native pinShareSourceOnScreenImp(IIZ)I
.end method

.method private native pinUserImp(II)I
.end method

.method private native requestAgreeRecordingConsentImpl(Z)I
.end method

.method private native requestAllowAttendeesUnmuteThemselvesImpl(Z)I
.end method

.method private native requestAssignClosedCaptionImpl(IZ)I
.end method

.method private native requestAssignCohostImpl(IZ)I
.end method

.method private native requestDisplayTopBannerImpl(Z)I
.end method

.method private native requestEnableWaitingRoomOnEntryImpl(Z)I
.end method

.method private native requestMeetingChatDisplaySettingsIsShowChatListOnZRImpl(Z)I
.end method

.method private native requestMeetingChatDisplaySettingsIsShowChatNotificationOnZRImpl(Z)I
.end method

.method private native requestMeetingChatMessageImpl(II)I
.end method

.method private native requestMuteShareAudioImpl(IZ)I
.end method

.method private native requestRaiseHandImpl(IZ)I
.end method

.method private native requestShowAudioParticipantsImpl(Z)I
.end method

.method private native requestSilentModeActionImpl([IZ)I
.end method

.method private native requestSilentModeAdmitAllImpl()I
.end method

.method private native requestUpdateVirtualBackgroundImpl(ZLjava/lang/String;Z)I
.end method

.method private native sendDTMFImp(Ljava/lang/String;I)I
.end method

.method private native sendMeetingPasswordImpl(Ljava/lang/String;)I
.end method

.method private native setCloudRecordingNotificationEmailImpl(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method private native setMeetingRecordingImpl(ZZLjava/lang/String;)I
.end method

.method private native setMeetingShareSettingReqImp(Z)I
.end method

.method private native setPinUserInstructionVisibleImp(Z)I
.end method

.method private native shareBlackMagicImpl(Z)I
.end method

.method private native shareCameraImp(ZLjava/lang/String;)I
.end method

.method private native showPinShareSourceOnScreenInstructionImp(Z)I
.end method

.method private native showSharingInstructionImpl(ZZZI)I
.end method

.method private native spotlightUserImp(I)I
.end method

.method private native stopSharingImpl()I
.end method

.method private native stopZRWSharingImpl()I
.end method

.method private native switchCameraForVideoImpl()I
.end method

.method private native switchToFloatingShareForSingleScreenImpl(Z)I
.end method

.method private native switchVideoToCameraImpl(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I
.end method

.method private native turnVideoPageImpl(ZZ)I
.end method

.method private native unpinUserFromAllScreensImp(I)I
.end method

.method private native updateAudioStatusImpl(Z)I
.end method

.method private native updateMyCameraPanTiltSpeedPercentageImp(I)I
.end method

.method private native updateShareCameraPanTiltSpeedPercentageImp(ILjava/lang/String;)I
.end method

.method private native updateVideoStatusImpl(Z)I
.end method

.method private native updateWallviewStyleImpl(I)I
.end method

.method private native zrwPinShareSourceOnScreenImp(IIZ)I
.end method


# virtual methods
.method public addZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V
    .locals 1

    .line 25
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V

    return-void
.end method

.method public allowRecording(ZI)I
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->allowRecordingImpl(ZI)I

    move-result p1

    return p1
.end method

.method public answerHostRequestUnmuteAudio(Z)Z
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->answerHostRequestUnmuteAudioImp(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public answerHostRequestUnmuteVideo(Z)I
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->answerHostRequestUnmuteVideoImp(Z)I

    move-result p1

    return p1
.end method

.method public audioTroubleShootingEnable(Z)I
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->audioTroubleShootingEnableImp(Z)I

    move-result p1

    return p1
.end method

.method public callOutPSTNUser(Ljava/lang/String;Ljava/lang/String;ZZZZ)Z
    .locals 7

    .line 140
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lus/zoom/zrcsdk/ConfApp;->callOutPSTNUserImpl(Ljava/lang/String;Ljava/lang/String;ZZZZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cancelEnteringMeetingPassword()I
    .locals 1

    .line 69
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->cancelEnteringMeetingPasswordImpl()I

    move-result v0

    return v0
.end method

.method public cancelInvitingLegacyRoomSystemWithIpOrE164Number(Ljava/lang/String;I)I
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->cancelInvitingLegacyRoomSystemWithIpOrE164NumberImp(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public cancelSpolightUser(I)I
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->cancelSpolightUserImp(I)I

    move-result p1

    return p1
.end method

.method public cancelWaitingForHost()I
    .locals 1

    .line 55
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->cancelWaitingForHostImpl()I

    move-result v0

    return v0
.end method

.method public changeHost(I)I
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->changeHostImpl(I)I

    move-result p1

    return p1
.end method

.method public claimHost(Ljava/lang/String;)I
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->claimHostImp(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public controlCamera(ILjava/lang/String;II)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 184
    invoke-direct/range {v0 .. v5}, Lus/zoom/zrcsdk/ConfApp;->controlCameraForImpl(ILjava/lang/String;IIZ)I

    move-result p1

    return p1
.end method

.method public controlClosedCaptionVisible(ZI)I
    .locals 0

    .line 338
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->controlClosedCaptionVisibleImp(ZI)I

    move-result p1

    return p1
.end method

.method public controlMyCamera(II)I
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0, v1, v0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->controlCamera(ILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public controlShareCamera(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0, p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->controlCamera(ILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public controlVideoPosition(II)I
    .locals 0

    .line 322
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->controlVideoPositionImp(II)I

    move-result p1

    return p1
.end method

.method public enterShareOnAllScreens()I
    .locals 1

    .line 350
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->enterShareOnAllScreensImpl()I

    move-result v0

    return v0
.end method

.method public exitMeeting(Z)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->exitMeetingImpl(Z)I

    move-result p1

    return p1
.end method

.method public expelUser(I)I
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->expelUserImpl(I)I

    move-result p1

    return p1
.end method

.method public farEndCameraControlWith(IIIZ)I
    .locals 6

    const-string v2, ""

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 235
    invoke-direct/range {v0 .. v5}, Lus/zoom/zrcsdk/ConfApp;->controlCameraForImpl(ILjava/lang/String;IIZ)I

    move-result p1

    return p1
.end method

.method public farEndswitchCameraForVideo(I)I
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->farEndswitchCameraForVideoImpl(I)I

    move-result p1

    return p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public inviteAttendees(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)I"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 256
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/ConfApp;->inviteAttendeesImpl(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public inviteLegacyRoomSystemWithIpOrE164Number(Ljava/lang/String;I)I
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->inviteLegacyRoomSystemWithIpOrE164NumberImpl(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public listParticipants(II)I
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->listParticipantsImp(II)I

    move-result p1

    return p1
.end method

.method public lockMeeting(Z)I
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->lockMeetingImpl(Z)I

    move-result p1

    return p1
.end method

.method public mirrorOwnVideo(Z)I
    .locals 1

    const-string v0, ""

    .line 276
    invoke-direct {p0, p1, v0}, Lus/zoom/zrcsdk/ConfApp;->mirrorOwnVideoImpl(ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mirrorShareVideo(ZLjava/lang/String;)I
    .locals 0

    .line 283
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->mirrorOwnVideoImpl(ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteAllAudio(Z)I
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->muteAllAudioImpl(Z)I

    move-result p1

    return p1
.end method

.method public muteOnEntry(Z)I
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->muteOnEntryImpl(Z)I

    move-result p1

    return p1
.end method

.method public muteUserAudio(IZ)I
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->muteUserAudioImpl(IZ)I

    move-result p1

    return p1
.end method

.method public muteUserVideo(IZ)I
    .locals 0

    .line 326
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->muteUserVideoImp(IZ)I

    move-result p1

    return p1
.end method

.method public optimizeVideoSharing(Z)I
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->optimizeVideoSharingImpl(Z)I

    move-result p1

    return p1
.end method

.method public pinShareSourceOnScreen(IIZ)I
    .locals 0

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->pinShareSourceOnScreenImp(IIZ)I

    move-result p1

    return p1
.end method

.method public pinUser(II)I
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->pinUserImp(II)I

    move-result p1

    return p1
.end method

.method public removeZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V
    .locals 1

    .line 29
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V

    return-void
.end method

.method public requestAgreeRecordingConsent(Z)Z
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestAgreeRecordingConsentImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestAllowAttendeesUnmuteThemselves(Z)Z
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestAllowAttendeesUnmuteThemselvesImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestAssignClosedCaption(IZ)Z
    .locals 0

    .line 399
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestAssignClosedCaptionImpl(IZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestAssignCohost(IZ)Z
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestAssignCohostImpl(IZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestDisplayTopBanner(Z)Z
    .locals 0

    .line 427
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestDisplayTopBannerImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestEnableShowingPreview(Z)Z
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 443
    invoke-direct {p0, v1, v0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestUpdateVirtualBackgroundImpl(ZLjava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public requestEnableWaitingRoomOnEntry(Z)Z
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestEnableWaitingRoomOnEntryImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestMeetingChatDisplaySettingsIsShowChatListOnZR(Z)Z
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestMeetingChatDisplaySettingsIsShowChatListOnZRImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestMeetingChatDisplaySettingsIsShowChatNotificationOnZR(Z)Z
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestMeetingChatDisplaySettingsIsShowChatNotificationOnZRImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestMeetingChatMessage(II)Z
    .locals 0

    .line 431
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestMeetingChatMessageImpl(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestMuteShareAudio(IZ)Z
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestMuteShareAudioImpl(IZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestRaiseHand(IZ)Z
    .locals 0

    .line 391
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestRaiseHandImpl(IZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestShowAudioParticipants(Z)Z
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestShowAudioParticipantsImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestSilentModeAction([IZ)Z
    .locals 0

    .line 403
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestSilentModeActionImpl([IZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestSilentModeAdmitAll()Z
    .locals 1

    .line 407
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->requestSilentModeAdmitAllImpl()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestUpdateVirtualBackground(ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrcsdk/ConfApp;->requestUpdateVirtualBackgroundImpl(ZLjava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public respondFarEndCameraControlWith(ZI)I
    .locals 6

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v0, p0

    move v1, p2

    move v5, p1

    .line 224
    invoke-direct/range {v0 .. v5}, Lus/zoom/zrcsdk/ConfApp;->controlCameraForImpl(ILjava/lang/String;IIZ)I

    move-result p1

    return p1
.end method

.method public sendDTMF(Ljava/lang/String;I)I
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->sendDTMFImp(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public sendMeetingPassword(Ljava/lang/String;)I
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->sendMeetingPasswordImpl(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCloudRecordingNotificationEmail(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/ConfApp;->setCloudRecordingNotificationEmailImpl(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public setMeetingRecording(ZZLjava/lang/String;)I
    .locals 0

    .line 156
    invoke-static {p3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->setMeetingRecordingImpl(ZZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setMeetingShareSetting(Z)I
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->setMeetingShareSettingReqImp(Z)I

    move-result p1

    return p1
.end method

.method public setPinUserInstructionVisible(Z)I
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->setPinUserInstructionVisibleImp(Z)I

    move-result p1

    return p1
.end method

.method public shareBlackMagic(Z)I
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->shareBlackMagicImpl(Z)I

    move-result p1

    return p1
.end method

.method public shareCamera(ZLjava/lang/String;)I
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->shareCameraImp(ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public showPinShareSourceOnScreenInstruction(Z)I
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->showPinShareSourceOnScreenInstructionImp(Z)I

    move-result p1

    return p1
.end method

.method public showSharingInstruction(ZZZI)I
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/ConfApp;->showSharingInstructionImpl(ZZZI)I

    move-result p1

    return p1
.end method

.method public spotlightUser(I)I
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->spotlightUserImp(I)I

    move-result p1

    return p1
.end method

.method public stopSharing()I
    .locals 1

    .line 265
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->stopSharingImpl()I

    move-result v0

    return v0
.end method

.method public stopZRWSharing()I
    .locals 1

    .line 269
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->stopZRWSharingImpl()I

    move-result v0

    return v0
.end method

.method public switchCameraForVideo()I
    .locals 1

    .line 209
    invoke-direct {p0}, Lus/zoom/zrcsdk/ConfApp;->switchCameraForVideoImpl()I

    move-result v0

    return v0
.end method

.method public switchToFloatingShareForSingleScreen(Z)I
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->switchToFloatingShareForSingleScreenImpl(Z)I

    move-result p1

    return p1
.end method

.method public switchVideoToCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->switchVideoToCameraImpl(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result p1

    return p1
.end method

.method public turnVideoPage(ZZ)I
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPageImpl(ZZ)I

    move-result p1

    return p1
.end method

.method public unpinUserFromAllScreens(I)I
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->unpinUserFromAllScreensImp(I)I

    move-result p1

    return p1
.end method

.method public updateAudioStatus(Z)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateAudioStatusImpl(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateMyCameraPanTiltSpeedPercentage(I)I
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateMyCameraPanTiltSpeedPercentageImp(I)I

    move-result p1

    return p1
.end method

.method public updateShareCameraPanTiltSpeedPercentage(ILjava/lang/String;)I
    .locals 0

    .line 371
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->updateShareCameraPanTiltSpeedPercentageImp(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateVideoStatus(Z)I
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateVideoStatusImpl(Z)I

    move-result p1

    return p1
.end method

.method public updateWallviewStyle(I)I
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyleImpl(I)I

    move-result p1

    return p1
.end method

.method public zrwPinShareSourceOnScreen(IIZ)I
    .locals 0

    .line 379
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->zrwPinShareSourceOnScreenImp(IIZ)I

    move-result p1

    return p1
.end method
