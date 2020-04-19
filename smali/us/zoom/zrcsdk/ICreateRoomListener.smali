.class public interface abstract Lus/zoom/zrcsdk/ICreateRoomListener;
.super Ljava/lang/Object;
.source "ICreateRoomListener.java"


# virtual methods
.method public abstract onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
.end method

.method public abstract onAssignRoomLocationResult(ILjava/lang/String;)V
.end method

.method public abstract onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedListCalendarResult(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V
.end method

.method public abstract onUpdateRoomResult(I)V
.end method
