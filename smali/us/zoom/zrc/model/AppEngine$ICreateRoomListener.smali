.class public interface abstract Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;
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
    name = "ICreateRoomListener"
.end annotation


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
