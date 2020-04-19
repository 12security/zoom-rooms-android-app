.class public Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.super Ljava/lang/Object;
.source "SimpleIZRPtEventListener.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRPtEvent;
.implements Lus/zoom/zrc/model/AppEngine$IZRIMEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddLegacyRoom(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
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

.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    return-void
.end method

.method public onDynamicContactsBasicInfoNotification(III)V
    .locals 0

    return-void
.end method

.method public onFinishRebuildContactData()V
    .locals 0

    return-void
.end method

.method public onFinishReceivingLegacyRoomList(Z)V
    .locals 0

    return-void
.end method

.method public onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onImConnectingResultNotification(I)V
    .locals 0

    return-void
.end method

.method public onImFinishTransportingContactsNotification()V
    .locals 0

    return-void
.end method

.method public onImMyPresenceChangedNotification(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImReconnectingNotification()V
    .locals 0

    return-void
.end method

.method public onImStartTransportingContactsNotification()V
    .locals 0

    return-void
.end method

.method public onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 0

    return-void
.end method

.method public onMeetingErrorNotification(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 0

    return-void
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 0

    return-void
.end method

.method public onNeedWaitForHost(ZI)V
    .locals 0

    return-void
.end method

.method public onOtherDeviceLoginNotification(I)V
    .locals 0

    return-void
.end method

.method public onScreenInformationNotification(II)V
    .locals 0

    return-void
.end method

.method public onScreenResolutionStatusChangedTo(I)V
    .locals 0

    return-void
.end method

.method public onSearchBuddyOnWebDidFinishWithResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

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

.method public onStartInstantMeetingNotification(ZI)V
    .locals 0

    return-void
.end method

.method public onStartReceivingLegacyRoomList(Z)V
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

.method public onUpdateMeetingList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
    .locals 0

    return-void
.end method

.method public onVerifyConnectionFinished(I)V
    .locals 0

    return-void
.end method

.method public onZoomPresenceSignedOutNotification()V
    .locals 0

    return-void
.end method
