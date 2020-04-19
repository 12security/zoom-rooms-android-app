.class public interface abstract Lus/zoom/zrc/model/AppEngine$ILoginEvent;
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
    name = "ILoginEvent"
.end annotation


# virtual methods
.method public abstract onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedRoomList(Ljava/util/List;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onUserRefreshZAKReturn(ILjava/lang/String;)V
.end method

.method public abstract onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V
.end method

.method public abstract onZoomPresenceLoginFailed(I)V
.end method

.method public abstract onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
