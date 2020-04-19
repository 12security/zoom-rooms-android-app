.class public interface abstract Lus/zoom/zrcsdk/ILoginListener;
.super Ljava/lang/Object;
.source "ILoginListener.java"


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
