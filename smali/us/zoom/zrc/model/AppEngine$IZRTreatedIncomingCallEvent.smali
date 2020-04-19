.class public interface abstract Lus/zoom/zrc/model/AppEngine$IZRTreatedIncomingCallEvent;
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
    name = "IZRTreatedIncomingCallEvent"
.end annotation


# virtual methods
.method public abstract onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
.end method

.method public abstract onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V
.end method
