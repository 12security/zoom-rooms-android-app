.class public Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.super Ljava/lang/Object;
.source "SimpleIZRMeetingEventListener.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchUserChangedEntityNotification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBatchUserChangedNotification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 0

    return-void
.end method

.method public onClaimHostNotification(I)V
    .locals 0

    return-void
.end method

.method public onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
    .locals 0

    return-void
.end method

.method public onClosedCaptionResult(Z)V
    .locals 0

    return-void
.end method

.method public onComDeviceListNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCurrentSelectedMicrophoneMuted(Z)V
    .locals 0

    return-void
.end method

.method public onHostChangedNotification(IZ)V
    .locals 0

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 0

    return-void
.end method

.method public onInviteRoomSystemManuallyResult(Z)V
    .locals 0

    return-void
.end method

.method public onMeetingCloudRecordingErrorNotification(I)V
    .locals 0

    return-void
.end method

.method public onMeetingEndedNotification(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMeetingExitedNotification(I)V
    .locals 0

    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 0

    return-void
.end method

.method public onMessageEventNotification(I)V
    .locals 0

    return-void
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 0

    return-void
.end method

.method public onNeedWaitForHost(Z)V
    .locals 0

    return-void
.end method

.method public onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 0

    return-void
.end method

.method public onRoomSystemCallingStatus(I)V
    .locals 0

    return-void
.end method

.method public onShareCameraResult(Z)V
    .locals 0

    return-void
.end method

.method public onSpeakerTestingNotification(IZ)V
    .locals 0

    return-void
.end method

.method public onSpeakerTestingResult(IFZ)V
    .locals 0

    return-void
.end method

.method public onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
    .locals 0

    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateGalleryVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 0

    return-void
.end method

.method public onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;II)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingLockStatus(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateMeetingParticipantsStatus()V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingUserRecordingStatus(IZZZ)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMyAudioResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 0

    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    return-void
.end method
