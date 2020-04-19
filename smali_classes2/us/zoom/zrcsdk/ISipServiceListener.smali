.class public interface abstract Lus/zoom/zrcsdk/ISipServiceListener;
.super Ljava/lang/Object;
.source "ISipServiceListener.java"


# virtual methods
.method public abstract onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onJoinSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onSIPCallForegroundCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onSIPCallInviteToJoinMeetingNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onSIPCallMergeCallResultNotification(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
.end method

.method public abstract onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
.end method

.method public abstract onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onSipDialOutResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
.end method

.method public abstract onUpdateMySipPhoneAudioResult(I)V
.end method

.method public abstract onUpdateMySipPhoneAudioStatus(Z)V
.end method

.method public abstract onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
.end method

.method public abstract onUpgradeSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method
