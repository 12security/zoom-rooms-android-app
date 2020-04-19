.class public Lus/zoom/zrc/view/adapter/SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->context:Landroid/content/Context;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 52
    instance-of p3, p2, Lus/zoom/zrc/view/ZRCContactItemView;

    if-eqz p3, :cond_0

    .line 53
    check-cast p2, Lus/zoom/zrc/view/ZRCContactItemView;

    goto :goto_0

    .line 55
    :cond_0
    new-instance p2, Lus/zoom/zrc/view/ZRCContactItemView;

    iget-object p3, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lus/zoom/zrc/view/ZRCContactItemView;-><init>(Landroid/content/Context;)V

    .line 57
    :goto_0
    iget-object p3, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/ZRCContactItemView;->setBuddyListItem(Lus/zoom/zrcsdk/model/ZRCContact;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/SearchListAdapter;->searchList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/model/AppModel;->filter(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->notifyDataSetChanged()V

    return-void
.end method
