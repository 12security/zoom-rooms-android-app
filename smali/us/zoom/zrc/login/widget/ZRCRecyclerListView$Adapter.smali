.class public abstract Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZRCRecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/ZRCRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private mListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;

.field private mSelectedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field

.field private repeatSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->repeatSelection:Z

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Ljava/lang/Object;
    .locals 0

    .line 354
    iget-object p0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 354
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 354
    iget-object p0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 354
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;
    .locals 0

    .line 354
    iget-object p0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method protected clearSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    .line 395
    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method protected enableRepeatSelection()V
    .locals 1

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->repeatSelection:Z

    return-void
.end method

.method protected getKeyForWidth(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method getKeysForWidth()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 372
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getKeyForWidth(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected abstract getListItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 4

    .line 416
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 421
    iget-object v2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method isItemSelectable(I)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 467
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->isItemSelectable(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 468
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onItemViewSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 469
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 471
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onItemViewSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 474
    :goto_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;

    invoke-direct {v1, p0, p1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;-><init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method onItemViewSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;Z)V"
        }
    .end annotation

    .line 388
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 389
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public select(I)V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getSelectedPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 435
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mSelectedItem:Ljava/lang/Object;

    if-lez v0, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->notifyItemChanged(I)V

    :cond_0
    if-lez p1, :cond_1

    .line 440
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public select(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 452
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 453
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->select(I)V

    return-void
.end method

.method public setOnItemSelectedListener(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->mListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;

    return-void
.end method
