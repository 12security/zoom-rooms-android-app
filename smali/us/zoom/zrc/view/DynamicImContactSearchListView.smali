.class public Lus/zoom/zrc/view/DynamicImContactSearchListView;
.super Landroid/widget/ListView;
.source "DynamicImContactSearchListView.java"

# interfaces
.implements Lus/zoom/zrc/view/ISelectedMeetingListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

.field private handler:Landroid/os/Handler;

.field private keyWord:Ljava/lang/String;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field private mAppEngine:Lus/zoom/zrc/model/AppEngine;

.field private mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

.field private mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

.field private mModel:Lus/zoom/zrc/model/AppModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;-><init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    .line 75
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance p1, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;-><init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    .line 81
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->keyWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    return-object p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/view/DynamicImContactSearchListView;Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    return-object p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrc/model/AppModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mModel:Lus/zoom/zrc/model/AppModel;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-object p0
.end method

.method static synthetic access$402(Lus/zoom/zrc/view/DynamicImContactSearchListView;Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-object p1
.end method

.method private init()V
    .locals 4

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->handler:Landroid/os/Handler;

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mModel:Lus/zoom/zrc/model/AppModel;

    .line 87
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mAppEngine:Lus/zoom/zrc/model/AppEngine;

    .line 88
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->copyFrom(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 90
    new-instance v0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;-><init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    .line 91
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->copyFrom(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "init: display contacts count=%d"

    const/4 v1, 0x1

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0, p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    invoke-virtual {p0, p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mAppEngine:Lus/zoom/zrc/model/AppEngine;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->addSelectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    return-void
.end method

.method public onClear()V
    .locals 1

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mAppEngine:Lus/zoom/zrc/model/AppEngine;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->removeSlectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 162
    instance-of p4, p2, Lus/zoom/zrc/view/ZRCContactItemView;

    if-eqz p4, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .line 164
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 165
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 169
    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_CLICK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "true"

    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p4

    invoke-virtual {p4}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_1

    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 171
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p4

    goto :goto_0

    :cond_1
    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 172
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p4

    .line 173
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p5

    invoke-virtual {p5, p1}, Lus/zoom/zrc/model/AppModel;->containsSelectedContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_UN_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 174
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    goto :goto_1

    :cond_2
    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 175
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    .line 176
    :goto_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p5

    invoke-virtual {p5}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p5

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MEETING_NOW_SETUP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 177
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v0

    .line 179
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 176
    invoke-virtual {p5, p4, v0, p1, p3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 180
    check-cast p2, Lus/zoom/zrc/view/ZRCContactItemView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/ZRCContactItemView;->performClickCheckBox()V

    :cond_3
    return-void
.end method

.method public onRemove(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 191
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p3

    if-ne p2, p4, :cond_4

    .line 194
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 195
    iget-object p2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchOnCloudContact()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    .line 196
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->isRequestingContacts()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 197
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-ge p1, p3, :cond_2

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 198
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->keyWord:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v0, p3}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 199
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    invoke-virtual {p1, p4}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result p3

    if-ge p1, p3, :cond_3

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 201
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->keyWord:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v0, p3}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 202
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    invoke-virtual {p1, p4}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result p3

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 204
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->keyWord:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0, p3}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 205
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    invoke-virtual {p1, p4}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->keyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->keyWord:Ljava/lang/String;

    .line 104
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setKeyword(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    .line 106
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->adapter:Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    .line 108
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->isRequestingContacts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView;->handler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/view/DynamicImContactSearchListView$2;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView$2;-><init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 119
    :cond_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 120
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setSearchingContacts(Z)V

    return-void
.end method
