.class Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$6;
.super Ljava/lang/Object;
.source "IMAddrBookListPhoneFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$6;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 229
    sget p5, Lus/zoom/zrcbox/R$id;->checkbox:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 230
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 231
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    return p4

    .line 234
    :cond_0
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 235
    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_CLICK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "true"

    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p4

    invoke-virtual {p4}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_1

    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 237
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p4

    goto :goto_0

    :cond_1
    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 238
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p4

    .line 239
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p5

    invoke-virtual {p5, p1}, Lus/zoom/zrc/model/AppModel;->containsSelectedContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_UN_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 240
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    goto :goto_1

    :cond_2
    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 241
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    .line 242
    :goto_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p5

    invoke-virtual {p5}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p5

    sget-object p6, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MEETING_NOW_SETUP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 243
    invoke-virtual {p6}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result p6

    .line 245
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 242
    invoke-virtual {p5, p4, p6, p1, p3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 246
    invoke-virtual {p2}, Landroid/widget/CheckBox;->performClick()Z

    const/4 p1, 0x0

    return p1
.end method
