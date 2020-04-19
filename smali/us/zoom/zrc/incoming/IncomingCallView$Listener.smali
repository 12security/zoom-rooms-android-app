.class public interface abstract Lus/zoom/zrc/incoming/IncomingCallView$Listener;
.super Ljava/lang/Object;
.source "IncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/incoming/IncomingCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAcceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Lus/zoom/zrc/incoming/IncomingCallView;Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V
.end method

.method public abstract onDeclineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Lus/zoom/zrc/incoming/IncomingCallView;Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V
.end method
