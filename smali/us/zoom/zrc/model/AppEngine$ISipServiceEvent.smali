.class public interface abstract Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;
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
    name = "ISipServiceEvent"
.end annotation


# virtual methods
.method public abstract onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
.end method

.method public abstract onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
.end method

.method public abstract onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
.end method

.method public abstract onUpdateMySipPhoneAudioResult(I)V
.end method

.method public abstract onUpdateMySipPhoneAudioStatus(Z)V
.end method

.method public abstract onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
.end method
