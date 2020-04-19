.class public interface abstract Lus/zoom/zrcsdk/IPtEventListener;
.super Ljava/lang/Object;
.source "IPtEventListener.java"


# virtual methods
.method public abstract onAddLegacyRoom(Ljava/lang/String;Z)V
.end method

.method public abstract onAnswerIncomingCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
.end method

.method public abstract onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
.end method

.method public abstract onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
.end method

.method public abstract onCalibrateScreenSequenceResult(IILjava/lang/String;I)V
.end method

.method public abstract onCallStatus(I)V
.end method

.method public abstract onCloseUpcomingMeetingAlertResult(I)V
.end method

.method public abstract onComDeviceListNotification(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation
.end method

.method public abstract onDynamicContactsBasicInfoNotification(III)V
.end method

.method public abstract onFinishReceivingLegacyRoomList(Z)V
.end method

.method public abstract onGoingToBeInMeetingNotification(IZ)V
.end method

.method public abstract onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onImConnectingResultNotification(I)V
.end method

.method public abstract onImFinishTransportingContactsNotification()V
.end method

.method public abstract onImMyPresenceChangedNotification(ILjava/lang/String;)V
.end method

.method public abstract onImReconnectingNotification()V
.end method

.method public abstract onImStartTransportingContactsNotification()V
.end method

.method public abstract onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
.end method

.method public abstract onJoinMeetingResult(Z)V
.end method

.method public abstract onJoinTestMeetingResult(Z)V
.end method

.method public abstract onLaunchSharingMeetingResult(ILjava/lang/String;ZI)V
.end method

.method public abstract onListMeetingResult(I)V
.end method

.method public abstract onMeetWithIMUsersResult(Z)V
.end method

.method public abstract onMeetingEndedNotification(ILjava/lang/String;)V
.end method

.method public abstract onMeetingErrorNotification(ILjava/lang/String;)V
.end method

.method public abstract onMicrophoneTestingNotification(I)V
.end method

.method public abstract onOtherDeviceLoginNotification(IZ)V
.end method

.method public abstract onScreenInformationNotification(II)V
.end method

.method public abstract onScreenResolutionStatusChangedTo(I)V
.end method

.method public abstract onSearchBuddyOnWebDidFinishWithResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSendProblemReportNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSetMicrophoneVolumeResult(ILjava/lang/String;I)V
.end method

.method public abstract onSetSpeakerVolumeResult(ILjava/lang/String;I)V
.end method

.method public abstract onShowUpcomingMeetingAlertResult(ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
.end method

.method public abstract onSpeakerTestingNotification(IZ)V
.end method

.method public abstract onSpeakerTestingResult(IFZ)V
.end method

.method public abstract onStartInstantMeetingNotification(ZI)V
.end method

.method public abstract onStartMeetingResult(ZLjava/lang/String;)V
.end method

.method public abstract onStartPmiResult(ZLjava/lang/String;ILus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/lang/String;)V
.end method

.method public abstract onStartReceivingLegacyRoomList(Z)V
.end method

.method public abstract onStartSharingMeetingNotification(Z)V
.end method

.method public abstract onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
.end method

.method public abstract onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V
.end method

.method public abstract onUltrasoundPlayerCandidateNotification(Ljava/lang/String;)V
.end method

.method public abstract onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
.end method

.method public abstract onUpdateFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V
.end method

.method public abstract onUpdateFeatureListHideSelfVideo(Z)V
.end method

.method public abstract onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
.end method

.method public abstract onUpdateLocalViewStatus(Z)V
.end method

.method public abstract onUpdateMeetingList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V
.end method

.method public abstract onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
.end method

.method public abstract onUpdateSpeakerVolume(F)V
.end method

.method public abstract onUpdateVirtualBackgroundList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateWBCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V
.end method

.method public abstract onUpdateWBCameraList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateZRCSDeviceList(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V
.end method

.method public abstract onUpdateZoomRoomsVersion(Ljava/lang/String;)V
.end method

.method public abstract onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
.end method

.method public abstract onUpgradeDeviceROMNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onVerifyConnectionFinished(I)V
.end method

.method public abstract onWindowsPasswordChanged(I)V
.end method

.method public abstract onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onZoomPresenceSignedOutNotification()V
.end method
