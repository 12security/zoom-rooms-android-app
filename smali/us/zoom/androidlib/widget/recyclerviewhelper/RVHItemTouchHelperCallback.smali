.class public Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "RVHItemTouchHelperCallback.java"


# instance fields
.field private final isItemViewSwipeEnabledLeft:Z

.field private final isItemViewSwipeEnabledRight:Z

.field private final isLongPressDragEnabled:Z

.field private final mAdapter:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;ZZZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 40
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->mAdapter:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;

    .line 41
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledLeft:Z

    .line 42
    iput-boolean p4, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledRight:Z

    .line 43
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isLongPressDragEnabled:Z

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 124
    instance-of p1, p2, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;

    if-eqz p1, :cond_0

    .line 126
    check-cast p2, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;

    .line 127
    invoke-interface {p2}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;->onItemClear()V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    instance-of p1, p2, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 58
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->mAdapter:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;

    invoke-interface {v0}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;->isCanSwipe()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-boolean p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledLeft:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledRight:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x30

    goto :goto_0

    .line 62
    :cond_1
    iget-boolean p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledRight:Z

    if-eqz p2, :cond_2

    const/16 p2, 0x10

    goto :goto_0

    :cond_2
    const/16 p2, 0x20

    .line 76
    :cond_3
    :goto_0
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledLeft:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isItemViewSwipeEnabledRight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->isLongPressDragEnabled:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 136
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    :goto_0
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->mAdapter:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;->onItemMove(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 111
    instance-of v0, p1, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p1

    check-cast v0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;

    .line 114
    invoke-interface {v0, p2}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHViewHolder;->onItemSelected(I)V

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemTouchHelperCallback;->mAdapter:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHAdapter;->onItemDismiss(II)V

    return-void
.end method
