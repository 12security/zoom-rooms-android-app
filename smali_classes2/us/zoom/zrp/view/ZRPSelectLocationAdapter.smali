.class public Lus/zoom/zrp/view/ZRPSelectLocationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZRPSelectLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;,
        Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private locationWordings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private normalLocationColor:I

.field private onLocationItemClickListener:Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;

.field private selectedLocationBranch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLocationColor:I

.field private selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private showingLocationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation
.end field

.field private showingLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    .line 42
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    sget v1, Lus/zoom/zrcbox/R$string;->all_floors:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    sget v1, Lus/zoom/zrcbox/R$string;->all_buildings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    sget v1, Lus/zoom/zrcbox/R$string;->all_campuses:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    sget v1, Lus/zoom/zrcbox/R$string;->all_cities:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    sget v1, Lus/zoom/zrcbox/R$string;->all_states:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    sget v1, Lus/zoom/zrcbox/R$string;->all_countries:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->selected_location_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationColor:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$color;->zrp_reserve_common_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->normalLocationColor:I

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;)Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->onLocationItemClickListener:Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;

    return-object p0
.end method

.method private parseShowingLocationTreeList(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 80
    new-instance v1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-direct {v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;-><init>()V

    const/16 v2, -0xa

    .line 81
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->setType(I)V

    .line 82
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->setParent(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 83
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->setParentID(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->locationWordings:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 85
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->setText(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private resetViewsStatus(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)V
    .locals 2

    .line 197
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$000(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->normalLocationColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$300(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$400(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$200(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getSelectedLocationTreeIndex()I
    .locals 10

    .line 94
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 98
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 102
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    iget-object v3, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 108
    iget-object v6, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v7

    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v5, v2, :cond_4

    return v1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    .line 118
    iget-object v6, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez v5, :cond_5

    .line 119
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v7

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v8

    if-le v7, v8, :cond_5

    return v4

    .line 121
    :cond_5
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v7

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v8

    if-ne v7, v8, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v0, :cond_7

    .line 123
    iget-object v8, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v8}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    return v7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    return v1

    :cond_9
    :goto_4
    return v1

    :cond_a
    :goto_5
    return v1
.end method

.method getShowingLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;I)V
    .locals 4
    .param p1    # Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->resetViewsStatus(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)V

    .line 154
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 156
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$000(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p1, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;

    invoke-direct {v1, p0, p2}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;-><init>(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0xa

    if-ne v0, v2, :cond_0

    .line 168
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 169
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$000(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$200(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 175
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    :goto_1
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 181
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 182
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$300(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$000(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 188
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$400(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 190
    :cond_4
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->access$200(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 145
    iget-object p2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->item_reserve_select_location:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 146
    new-instance p2, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;-><init>(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setOnLocationItemClickListener(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->onLocationItemClickListener:Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;

    return-void
.end method

.method updateSelectedLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 55
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getBranchListContainsSelfAndAncestorsInAscendingSort()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->selectedLocationBranch:Ljava/util/List;

    return-void
.end method

.method updateShowingLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->showingLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 64
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->parseShowingLocationTreeList(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method
