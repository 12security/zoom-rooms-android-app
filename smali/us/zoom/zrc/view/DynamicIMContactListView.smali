.class public Lus/zoom/zrc/view/DynamicIMContactListView;
.super Landroid/widget/ListView;
.source "DynamicIMContactListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lus/zoom/zrc/view/ISelectedMeetingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;,
        Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field private mAppEngine:Lus/zoom/zrc/model/AppEngine;

.field private mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

.field private mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

.field private mMode:Lus/zoom/zrc/model/AppModel;

.field private subscribeStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/DynamicIMContactListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/DynamicIMContactListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeStartIndex:I

    .line 51
    new-instance p1, Lus/zoom/zrc/view/DynamicIMContactListView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/DynamicIMContactListView$1;-><init>(Lus/zoom/zrc/view/DynamicIMContactListView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    .line 93
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeStartIndex:I

    .line 51
    new-instance p1, Lus/zoom/zrc/view/DynamicIMContactListView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/DynamicIMContactListView$1;-><init>(Lus/zoom/zrc/view/DynamicIMContactListView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    .line 99
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    return-object p0
.end method

.method static synthetic access$102(Lus/zoom/zrc/view/DynamicIMContactListView;Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
    .locals 0

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    return-object p1
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/model/AppModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mMode:Lus/zoom/zrc/model/AppModel;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/view/DynamicIMContactListView;Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 0

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-object p1
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/DynamicIMContactListView;IZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeToPresenceFrom(IZ)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/DynamicIMContactListView;)I
    .locals 0

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->numbersOfLegacyRooms()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/DynamicIMContactListView;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeToPresenceFrom(I)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 103
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mMode:Lus/zoom/zrc/model/AppModel;

    .line 104
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mAppEngine:Lus/zoom/zrc/model/AppEngine;

    .line 105
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mMode:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->copyFrom(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 107
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mMode:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->copyFrom(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 109
    new-instance v0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;

    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;-><init>(Lus/zoom/zrc/view/DynamicIMContactListView;Lus/zoom/zrc/utils/AvatarLoader;ZZ)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 110
    new-instance v0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;-><init>(Lus/zoom/zrc/view/DynamicIMContactListView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    .line 111
    invoke-virtual {p0, p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "init: display contacts count=%d"

    const/4 v1, 0x1

    .line 114
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v1, v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private numbersOfLegacyRooms()I
    .locals 2

    .line 177
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private subscribeToPresenceFrom(I)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeToPresenceFrom(IZ)V

    return-void
.end method

.method private subscribeToPresenceFrom(IZ)V
    .locals 5

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    mul-int/lit8 v1, v0, 0x3

    .line 206
    iget-object v2, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mDynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v2

    .line 207
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->numbersOfLegacyRooms()I

    move-result v3

    add-int v4, v2, v3

    if-lt p1, v4, :cond_3

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_3
    if-lt p1, v2, :cond_4

    if-ge p1, v4, :cond_4

    move p1, v2

    :cond_4
    :goto_0
    if-ge p1, v0, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    sub-int/2addr p1, v0

    :goto_1
    if-nez p2, :cond_6

    .line 217
    iget p2, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeStartIndex:I

    if-ne p2, p1, :cond_6

    return-void

    .line 222
    :cond_6
    iput p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->subscribeStartIndex:I

    .line 224
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->isSearchingContacts()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicIMContactListView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 225
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    const/4 v0, 0x1

    const-string v2, ""

    invoke-virtual {p2, p1, v1, v0, v2}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mAppEngine:Lus/zoom/zrc/model/AppEngine;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mMode:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->addSelectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    return-void
.end method

.method public onClear()V
    .locals 1

    .line 173
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mAppEngine:Lus/zoom/zrc/model/AppEngine;

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->mMode:Lus/zoom/zrc/model/AppModel;

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

    .line 139
    sget p4, Lus/zoom/zrcbox/R$id;->checkbox:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 140
    instance-of p4, p2, Landroid/widget/CheckBox;

    if-eqz p4, :cond_3

    .line 141
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 142
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 146
    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_CLICK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "true"

    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p4

    invoke-virtual {p4}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_1

    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 148
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p4

    goto :goto_0

    :cond_1
    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 149
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p4

    .line 150
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p5

    invoke-virtual {p5, p1}, Lus/zoom/zrc/model/AppModel;->containsSelectedContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_UN_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 151
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    goto :goto_1

    :cond_2
    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SELECT_CONTACT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 152
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p1

    .line 153
    :goto_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p5

    invoke-virtual {p5}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p5

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MEETING_NOW_SETUP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 154
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v0

    .line 156
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 153
    invoke-virtual {p5, p4, v0, p1, p3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    :cond_3
    return-void
.end method

.method public onRemove(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView;->adapter:Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method
