.class Lus/zoom/zrc/view/IMAddrBookListFragment$8;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$8;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 303
    instance-of p4, p2, Lus/zoom/zrc/view/ZRCContactItemView;

    if-eqz p4, :cond_3

    .line 304
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 305
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 309
    sget-object p5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_CLICK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p5}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "true"

    invoke-virtual {p3, p5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p5

    invoke-virtual {p5}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p5

    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    sget-object p5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 311
    invoke-virtual {p5}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p5

    goto :goto_0

    :cond_1
    sget-object p5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 312
    invoke-virtual {p5}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p5

    .line 313
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->containsSelectedContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_UN_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 314
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    goto :goto_1

    :cond_2
    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 315
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    .line 316
    :goto_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MEETING_NOW_SETUP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 317
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v1

    .line 319
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 316
    invoke-virtual {v0, p5, v1, p1, p3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 320
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$8;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {p1, p4}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$502(Lus/zoom/zrc/view/IMAddrBookListFragment;Z)Z

    .line 321
    check-cast p2, Lus/zoom/zrc/view/ZRCContactItemView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/ZRCContactItemView;->performClickCheckBox()V

    :cond_3
    return-void
.end method
