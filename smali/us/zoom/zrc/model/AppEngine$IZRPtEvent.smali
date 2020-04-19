.class public interface abstract Lus/zoom/zrc/model/AppEngine$IZRPtEvent;
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
    name = "IZRPtEvent"
.end annotation


# virtual methods
.method public abstract onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
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

.method public abstract onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
.end method

.method public abstract onMeetingErrorNotification(ILjava/lang/String;)V
.end method

.method public abstract onMeetingNeedsPassword(ZZ)V
.end method

.method public abstract onMicrophoneTestingNotification(I)V
.end method

.method public abstract onNeedWaitForHost(ZI)V
.end method

.method public abstract onOtherDeviceLoginNotification(I)V
.end method

.method public abstract onScreenInformationNotification(II)V
.end method

.method public abstract onScreenResolutionStatusChangedTo(I)V
.end method

.method public abstract onSpeakerTestingNotification(IZ)V
.end method

.method public abstract onSpeakerTestingResult(IFZ)V
.end method

.method public abstract onStartInstantMeetingNotification(ZI)V
.end method

.method public abstract onSwitchCameraForVideoResult(Z)V
.end method

.method public abstract onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
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

.method public abstract onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
.end method

.method public abstract onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
.end method

.method public abstract onVerifyConnectionFinished(I)V
.end method

.method public abstract onZoomPresenceSignedOutNotification()V
.end method
