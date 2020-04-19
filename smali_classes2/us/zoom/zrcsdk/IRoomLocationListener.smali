.class public interface abstract Lus/zoom/zrcsdk/IRoomLocationListener;
.super Ljava/lang/Object;
.source "IRoomLocationListener.java"


# virtual methods
.method public abstract onGetAllRoomsResult(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetLocationInfoResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
.end method

.method public abstract onGetRoomLocationIDResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
