.class public interface abstract Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;
.super Ljava/lang/Object;
.source "IReserveOtherRoomEventsListener.java"


# virtual methods
.method public abstract onZoomCalendarServiceBatchListEventsResult(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onZoomCalendarServiceDeleteEventResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onZoomCalendarServiceListEventsResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V
.end method

.method public abstract onZoomCalendarServiceScheduleEventResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
.end method
