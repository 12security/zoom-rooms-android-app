.class Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRPReserveControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/reserve/ZRPReserveControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 136
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/notification/INotification;->onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 137
    sget-object v0, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    if-ne v0, p1, :cond_0

    .line 138
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onTimeOrTimeConfigChange()V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceListEventsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 140
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1, p2}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onReceivedListCalendarEventsWithRoomResult(Lcom/google/common/collect/ImmutableMap;)V

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceBatchListEventsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    .line 142
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1, p2}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onReceivedBatchListCalendarEventsWithRoomResult(Lcom/google/common/collect/ImmutableMap;)V

    :cond_2
    :goto_0
    return-void
.end method
