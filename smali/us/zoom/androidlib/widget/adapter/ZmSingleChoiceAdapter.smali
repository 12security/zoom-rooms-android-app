.class public Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZmSingleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedPos:I

.field private mZmSingleChoiceItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItem(I)Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 73
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getmSelectedPos()I
    .locals 1

    .line 57
    iget v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->onBindViewHolder(Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;I)V
    .locals 0
    .param p1    # Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->bind(I)V

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
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 81
    new-instance p2, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$layout;->zm_item_single_choice:I

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;-><init>(Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setmSelectedPos(I)V
    .locals 2

    .line 61
    iget v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    iget v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->setSelected(Z)V

    .line 64
    :cond_0
    iput p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    .line 65
    iget p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    iget v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mSelectedPos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->setSelected(Z)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setmZmSingleChoiceItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->mZmSingleChoiceItemList:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->notifyDataSetChanged()V

    return-void
.end method
