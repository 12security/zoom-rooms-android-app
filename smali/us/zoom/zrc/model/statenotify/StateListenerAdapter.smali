.class abstract Lus/zoom/zrc/model/statenotify/StateListenerAdapter;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "StateListenerAdapter.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;
.implements Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;
.implements Lus/zoom/zrc/model/AppEngine$IPresentationEvent;
.implements Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;
.implements Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(II)V
    .locals 0

    return-void
.end method

.method public onClose(I)V
    .locals 0

    return-void
.end method

.method public onConnect(I)V
    .locals 0

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 0

    return-void
.end method

.method public onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 0

    return-void
.end method

.method public onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 0

    return-void
.end method

.method public onSendFailed(I)V
    .locals 0

    return-void
.end method

.method public onStartSharingMeetingNotification(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateMySipPhoneAudioResult(I)V
    .locals 0

    return-void
.end method

.method public onUpdateMySipPhoneAudioStatus(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 0

    return-void
.end method

.method public onZRMeetingStatusChange(I)V
    .locals 0

    return-void
.end method
