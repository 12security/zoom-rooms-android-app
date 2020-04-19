.class Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "DynamicImContactSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DynamicImContactSearchListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicContatcSearchAdapter"
.end annotation


# instance fields
.field private contactMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private hitInH323:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$501(Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;)V
    .locals 0

    .line 210
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private numbersOfLegacyRooms()I
    .locals 2

    .line 224
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$200(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$200(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private roomAtIndex(I)Lus/zoom/zrcsdk/model/ZRCContact;
    .locals 2

    .line 232
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->numbersOfLegacyRooms()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$200(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    return-object p1

    .line 236
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$200(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    return-object p1
.end method

.method private setHitInH323()V
    .locals 4

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    const/4 v0, 0x0

    .line 242
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->numbersOfLegacyRooms()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 243
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->roomAtIndex(I)Lus/zoom/zrcsdk/model/ZRCContact;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v3}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$000(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .line 252
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$000(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->setHitInH323()V

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v2}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result v2

    if-ge v1, v2, :cond_1

    return v0

    .line 257
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchOnCloudContact()Ljava/util/Map;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 259
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->contactMap:Ljava/util/Map;

    .line 260
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v4}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 264
    iget-object v4, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->contactMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 273
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactIndexByJid()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->hitInH323:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 275
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->contactMap:Ljava/util/Map;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    instance-of p3, p2, Lus/zoom/zrc/view/ZRCContactItemView;

    if-eqz p3, :cond_0

    .line 287
    check-cast p2, Lus/zoom/zrc/view/ZRCContactItemView;

    goto :goto_0

    .line 289
    :cond_0
    new-instance p2, Lus/zoom/zrc/view/ZRCContactItemView;

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-virtual {p3}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lus/zoom/zrc/view/ZRCContactItemView;-><init>(Landroid/content/Context;)V

    .line 291
    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/ZRCContactItemView;->setBuddyListItem(Lus/zoom/zrcsdk/model/ZRCContact;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$200(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v2}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$300(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->copyFrom(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$202(Lus/zoom/zrc/view/DynamicImContactSearchListView;Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v0}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$400(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {v2}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$300(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->copyFrom(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$402(Lus/zoom/zrc/view/DynamicImContactSearchListView;Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 216
    invoke-static {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->access$501(Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;)V

    const-string v0, "data changed: display contacts count=%d"

    const/4 v1, 0x1

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
