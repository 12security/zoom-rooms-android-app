.class Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "DynamicIMContactListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DynamicIMContactListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicIMContactAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DynamicIMContactListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DynamicIMContactListView;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$401(Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;)V
    .locals 0

    .line 229
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private roomAtIndex(I)Lus/zoom/zrcsdk/model/ZRCContact;
    .locals 2

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$600(Lus/zoom/zrc/view/DynamicIMContactListView;)I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 247
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$100(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    return-object p1

    .line 250
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$100(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$600(Lus/zoom/zrc/view/DynamicIMContactListView;)I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 264
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 265
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactsIndexedByJid()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->roomAtIndex(I)Lus/zoom/zrcsdk/model/ZRCContact;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactsIndexedByJid()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 271
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$600(Lus/zoom/zrc/view/DynamicIMContactListView;)I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->roomAtIndex(I)Lus/zoom/zrcsdk/model/ZRCContact;

    move-result-object p1

    return-object p1

    .line 274
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactsIndexedByJid()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$600(Lus/zoom/zrc/view/DynamicIMContactListView;)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 286
    check-cast p2, Lus/zoom/zrc/view/ZRCContactItemView;

    if-nez p2, :cond_0

    .line 288
    new-instance p2, Lus/zoom/zrc/view/ZRCContactItemView;

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-virtual {p3}, Lus/zoom/zrc/view/DynamicIMContactListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lus/zoom/zrc/view/ZRCContactItemView;-><init>(Landroid/content/Context;)V

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/ZRCContactItemView;->setBuddyListItem(Lus/zoom/zrcsdk/model/ZRCContact;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 232
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$100(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$200(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->copyFrom(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$102(Lus/zoom/zrc/view/DynamicIMContactListView;Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 233
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$200(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->copyFrom(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$302(Lus/zoom/zrc/view/DynamicIMContactListView;Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 234
    invoke-static {p0}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->access$401(Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;)V

    const-string v0, "data changed: display contacts count=%d"

    const/4 v1, 0x1

    .line 236
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DynamicIMContactListView;->getFirstVisiblePosition()I

    move-result v0

    .line 239
    iget-object v2, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-virtual {v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 241
    iget-object v2, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {v2, v0, v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$500(Lus/zoom/zrc/view/DynamicIMContactListView;IZ)V

    :cond_0
    return-void
.end method
