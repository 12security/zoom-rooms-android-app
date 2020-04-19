.class public interface abstract Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;
.super Ljava/lang/Object;
.source "PhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/PhoneCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneCallView"
.end annotation


# virtual methods
.method public abstract delayDismiss()V
.end method

.method public abstract dismissImmediately()V
.end method

.method public abstract setCallProvider(Ljava/lang/CharSequence;)V
.end method

.method public abstract setCallStatus(Ljava/lang/CharSequence;)V
.end method

.method public abstract setCallerInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract setCallerParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
.end method

.method public abstract setHangupButtonEnabled(Z)V
.end method

.method public abstract setKeypadButtonEnabled(Z)V
.end method

.method public abstract setKeypadButtonHidden(Z)V
.end method

.method public abstract setMuteButtonEnabled(Z)V
.end method

.method public abstract setMuteButtonHidden(Z)V
.end method

.method public abstract setMuteState(Z)V
.end method

.method public abstract setRoomName(Ljava/lang/CharSequence;)V
.end method

.method public abstract setRoomNameLabelHidden(Z)V
.end method

.method public abstract setSpeakerVolumeControlHidden(Z)V
.end method

.method public abstract setStartMeetingButtonHidden(Z)V
.end method

.method public abstract startDurationTimerForFirstCall(J)V
.end method

.method public abstract stopDurationTimerForFirstCall()V
.end method
