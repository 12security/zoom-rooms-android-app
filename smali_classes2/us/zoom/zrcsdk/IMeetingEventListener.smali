.class public interface abstract Lus/zoom/zrcsdk/IMeetingEventListener;
.super Ljava/lang/Object;
.source "IMeetingEventListener.java"


# virtual methods
.method public abstract onAllowAttendeesUnmuteThemselvesNotification(Z)V
.end method

.method public abstract onAllowRecordingNotification(IZZZ)V
.end method

.method public abstract onAnswerHostRequestUnmuteAudioResult(Z)V
.end method

.method public abstract onAnswerHostRequestUnmuteVideoResult(Z)V
.end method

.method public abstract onAudioRequestUnmuteByhostNotification(IZ)V
.end method

.method public abstract onBatchUserChangedNotification(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCameraControlResult(IIIIZLjava/lang/String;I)V
.end method

.method public abstract onCameraIntelligentZoomNotification(ZZ)V
.end method

.method public abstract onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
.end method

.method public abstract onClaimHostNotification(I)V
.end method

.method public abstract onCloseCaptionControlResult(ILjava/lang/String;ZI)V
.end method

.method public abstract onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
.end method

.method public abstract onClosedCaptionResult(Z)V
.end method

.method public abstract onCurrentSelectedMicrophoneMuted(Z)V
.end method

.method public abstract onDisplayTopBannerNotification(Z)V
.end method

.method public abstract onEnableWaitingRoomOnEntryNotification(Z)V
.end method

.method public abstract onExitMeetingResult(Z)V
.end method

.method public abstract onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
.end method

.method public abstract onHostChangedNotification(IZ)V
.end method

.method public abstract onInSilentModeNotification(Z)V
.end method

.method public abstract onInviteRoomSystemManuallyResult(Z)V
.end method

.method public abstract onListMeetingParticipantNotification(I)V
.end method

.method public abstract onMeetingChatDisplaySettingsNotification(ZZ)V
.end method

.method public abstract onMeetingChatMessageNotification(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMeetingCloudRecordingErrorNotification(I)V
.end method

.method public abstract onMeetingExitedNotification(I)V
.end method

.method public abstract onMeetingNeedsPassword(ZZ)V
.end method

.method public abstract onMessageEventNotification(I)V
.end method

.method public abstract onMirrorVideoResult(ILjava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onNeedWaitForHost(ZI)V
.end method

.method public abstract onPSTNCallOutNotification(I)V
.end method

.method public abstract onPSTNCallOutResult(ILjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
.end method

.method public abstract onRecordingConsentNotification(Z)V
.end method

.method public abstract onRoomSystemCallingStatus(I)V
.end method

.method public abstract onRoomSystemCallingUserInfo(ILjava/lang/String;)V
.end method

.method public abstract onSelectedVirtualBackgroundNotification(Ljava/lang/String;)V
.end method

.method public abstract onSetMeetingPasswordResult(Z)V
.end method

.method public abstract onSetMeetingRecordingResult(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onShareBlackMagicResult(Z)V
.end method

.method public abstract onShareCameraResult(Z)V
.end method

.method public abstract onShowSharingInstructionResult(IZZZI)V
.end method

.method public abstract onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
.end method

.method public abstract onSwitchCameraForVideoResult(Z)V
.end method

.method public abstract onTreatedCameraControlRequestNotification(ZI)V
.end method

.method public abstract onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
.end method

.method public abstract onUpdateCanRaiseHandForAttendee(Z)V
.end method

.method public abstract onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onUpdateIsOnEntryMuted(Z)V
.end method

.method public abstract onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
.end method

.method public abstract onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
.end method

.method public abstract onUpdateMeetingChatMessageCount(I)V
.end method

.method public abstract onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
.end method

.method public abstract onUpdateMeetingLockStatus(Z)V
.end method

.method public abstract onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
.end method

.method public abstract onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
.end method

.method public abstract onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCAudioStatus;)V
.end method

.method public abstract onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
.end method

.method public abstract onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCVideoStatus;)V
.end method

.method public abstract onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
.end method

.method public abstract onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
.end method

.method public abstract onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
.end method

.method public abstract onUpdateMyAudioResult(Z)V
.end method

.method public abstract onUpdateMyVideoLayoutResult(Z)V
.end method

.method public abstract onUpdateMyVideoResult(Z)V
.end method

.method public abstract onUpdateRoomProfiles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateShowAudioParticipants(Z)V
.end method

.method public abstract onUpdateVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
.end method

.method public abstract onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
.end method

.method public abstract onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
.end method

.method public abstract onVideoRequestUnmuteByhostNotification(I)V
.end method

.method public abstract onZRWPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
.end method

.method public abstract onZRWUserChangeNotification(II)V
.end method
