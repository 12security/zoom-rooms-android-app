.class Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ParticipantListPtFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ParticipantListPtFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnParticipantsScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 476
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 482
    :pswitch_0
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-static {p2, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->access$202(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;Z)Z

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-static {p2, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->access$202(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;Z)Z

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->access$200(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 486
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 487
    sget-object p2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_PARTICIPANT_LIST_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 488
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 487
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 489
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result v0

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MANAGE_PARTICIPANTS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 490
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SCROLL_PARTICIPANT_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 491
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result v2

    .line 492
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {p2, v0, v1, v2, p1}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 494
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->access$202(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;Z)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
