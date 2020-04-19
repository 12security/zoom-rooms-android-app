.class Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;
.super Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;
.source "LoginLocationPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter<",
        "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
        "Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

.field private mLocationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLocationTree:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lus/zoom/zrc/login/LoginLocationHelper;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrc/login/LoginLocationHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;-><init>()V

    .line 34
    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->enableRepeatSelection()V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getKeyForWidth(I)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getListItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    return-object p1
.end method

.method protected getListItem(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 1

    .line 98
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->onBindViewHolder(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;I)V
    .locals 4

    .line 109
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 110
    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p2

    .line 111
    iget-boolean v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mShowLocationTree:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$000(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$100(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-virtual {v3, p2}, Lus/zoom/zrc/login/LoginLocationHelper;->getTreeTitle(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$000(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$100(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$000(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$100(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;
    .locals 2

    .line 103
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lus/zoom/zrcbox/R$layout;->login_list_item_room_location:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    new-instance p2, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter$ViewHolder;-><init>(Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)I
    .locals 6

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->notifyDataSetChanged()V

    return v1

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 60
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 61
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 62
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    .line 64
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    iget-object v4, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 v4, 0x3c

    .line 66
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 68
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    .line 70
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    .line 72
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    iget-object v4, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_4
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    .line 83
    iget-object v2, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_8
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, -0x1

    :goto_4
    return v0
.end method

.method setShowLocationTree(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mShowLocationTree:Z

    return-void
.end method

.method updateLocationList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationList:Ljava/util/List;

    .line 42
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->mLocationList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method
