.class public Lus/zoom/androidlib/widget/GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    }
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizonSpan:I

.field private mShowLastLine:Z

.field private mVerticalSpan:I


# direct methods
.method private constructor <init>(IIIZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 29
    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mHorizonSpan:I

    .line 30
    iput-boolean p4, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mShowLastLine:Z

    .line 31
    iput p2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mVerticalSpan:I

    .line 32
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(IIIZLus/zoom/androidlib/widget/GridItemDecoration$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/androidlib/widget/GridItemDecoration;-><init>(IIIZ)V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 42
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 45
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 47
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/GridItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v3

    invoke-direct {p0, p2, v1, v3, v0}, Lus/zoom/androidlib/widget/GridItemDecoration;->isLastRaw(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mShowLastLine:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 54
    iget v3, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mHorizonSpan:I

    add-int/2addr v3, v2

    .line 56
    iget-object v6, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object v2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 62
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 64
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 65
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/GridItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v4

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mHorizonSpan:I

    add-int/2addr v5, v6

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 72
    iget v3, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mVerticalSpan:I

    add-int v6, v2, v3

    add-int/lit8 v7, v0, -0x1

    if-ne v1, v7, :cond_1

    sub-int/2addr v6, v3

    .line 76
    :cond_1
    iget-object v3, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getResult(III)Z
    .locals 2

    .line 140
    rem-int v0, p3, p2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sub-int/2addr p3, p2

    if-lt p1, p3, :cond_1

    return v1

    :cond_0
    sub-int/2addr p3, v0

    if-lt p1, p3, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 113
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    .line 115
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private isLastRaw(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 124
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p2, p3, p4}, Lus/zoom/androidlib/widget/GridItemDecoration;->getResult(III)Z

    move-result p1

    return p1

    .line 126
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 127
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 129
    invoke-direct {p0, p2, p3, p4}, Lus/zoom/androidlib/widget/GridItemDecoration;->getResult(III)Z

    move-result p1

    return p1

    :cond_1
    add-int/2addr p2, v0

    .line 131
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0, p3}, Lus/zoom/androidlib/widget/GridItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    .line 85
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    if-gez p2, :cond_0

    return-void

    .line 92
    :cond_0
    rem-int v1, p2, p4

    .line 95
    iget v2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mVerticalSpan:I

    mul-int v3, v1, v2

    div-int/2addr v3, p4

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v2

    .line 96
    div-int/2addr v1, p4

    sub-int/2addr v2, v1

    .line 98
    invoke-direct {p0, p3, p2, p4, v0}, Lus/zoom/androidlib/widget/GridItemDecoration;->isLastRaw(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 99
    iget-boolean p2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mShowLastLine:Z

    if-eqz p2, :cond_1

    .line 100
    iget p2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mHorizonSpan:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 105
    :cond_2
    iget p2, p0, Lus/zoom/androidlib/widget/GridItemDecoration;->mHorizonSpan:I

    .line 107
    :goto_0
    invoke-virtual {p1, v3, p3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/GridItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/GridItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
