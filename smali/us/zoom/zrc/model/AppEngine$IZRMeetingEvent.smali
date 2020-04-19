.class public interface abstract Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/AppEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IZRMeetingEvent"
.end annotation


# virtual methods
.method public abstract onBatchUserChangedEntityNotification(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBatchUserChangedNotification(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
.end method

.method public abstract onClaimHostNotification(I)V
.end method

.method public abstract onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
.end method

.method public abstract onClosedCaptionResult(Z)V
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

.method public abstract onCurrentSelectedMicrophoneMuted(Z)V
.end method

.method public abstract onHostChangedNotification(IZ)V
.end method

.method public abstract onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
.end method

.method public abstract onInviteRoomSystemManuallyResult(Z)V
.end method

.method public abstract onMeetingCloudRecordingErrorNotification(I)V
.end method

.method public abstract onMeetingEndedNotification(ILjava/lang/String;)V
.end method

.method public abstract onMeetingExitedNotification(I)V
.end method

.method public abstract onMeetingNeedsPassword(ZZ)V
.end method

.method public abstract onMessageEventNotification(I)V
.end method

.method public abstract onMicrophoneTestingNotification(I)V
.end method

.method public abstract onNeedWaitForHost(Z)V
.end method

.method public abstract onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
.end method

.method public abstract onRoomSystemCallingStatus(I)V
.end method

.method public abstract onShareCameraResult(Z)V
.end method

.method public abstract onSpeakerTestingNotification(IZ)V
.end method

.method public abstract onSpeakerTestingResult(IFZ)V
.end method

.method public abstract onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
.end method

.method public abstract onSwitchCameraForVideoResult(Z)V
.end method

.method public abstract onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
.end method

.method public abstract onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
.end method

.method public abstract onUpdateGalleryVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
.end method

.method public abstract onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
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

.method public abstract onUpdateMeetingParticipantsStatus()V
.end method

.method public abstract onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
.end method

.method public abstract onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
.end method

.method public abstract onUpdateMeetingUserRecordingStatus(IZZZ)V
.end method

.method public abstract onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
.end method

.method public abstract onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
.end method

.method public abstract onUpdateMyAudioResult(Z)V
.end method

.method public abstract onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
.end method

.method public abstract onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
.end method

.method public abstract onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
.end method
