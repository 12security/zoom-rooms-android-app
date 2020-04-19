.class public Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ZRCContactImAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->getChild(II)Lus/zoom/zrcsdk/model/ZRCContact;

    move-result-object p1

    return-object p1
.end method

.method public getChild(II)Lus/zoom/zrcsdk/model/ZRCContact;
    .locals 1

    .line 52
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    add-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 95
    check-cast p4, Lus/zoom/zrc/view/ZRCContactItemView;

    if-nez p4, :cond_0

    .line 97
    new-instance p4, Lus/zoom/zrc/view/ZRCContactItemView;

    iget-object p3, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->context:Landroid/content/Context;

    invoke-direct {p4, p3}, Lus/zoom/zrc/view/ZRCContactItemView;-><init>(Landroid/content/Context;)V

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->getChild(II)Lus/zoom/zrcsdk/model/ZRCContact;

    move-result-object p1

    invoke-virtual {p4, p1}, Lus/zoom/zrc/view/ZRCContactItemView;->setBuddyListItem(Lus/zoom/zrcsdk/model/ZRCContact;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2

    .line 39
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/model/ZRCContactImData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getData()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->getGroup(I)Lus/zoom/zrc/model/ZRCContactImData;

    move-result-object p1

    return-object p1
.end method

.method public getGroup(I)Lus/zoom/zrc/model/ZRCContactImData;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/model/ZRCContactImData;

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_1

    .line 73
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    new-instance p2, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;-><init>(Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$1;)V

    .line 75
    iget-object p3, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lus/zoom/androidlib/R$layout;->zm_quick_search_list_items_header:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 76
    sget p4, Lus/zoom/androidlib/R$id;->txtHeader:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;->txtHeader:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_1
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->getGroup(I)Lus/zoom/zrc/model/ZRCContactImData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "#"

    .line 88
    :goto_3
    iget-object p2, p2, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter$ViewGroupHolder;->txtHeader:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public refreshList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->data:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->notifyDataSetChanged()V

    return-void
.end method
