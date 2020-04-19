.class public Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "SwipeRefreshPinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;
    }
.end annotation


# instance fields
.field private mIsSwipeLoadMoreEnable:Z

.field protected mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mIsSwipeLoadMoreEnable:Z

    .line 24
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 34
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mIsSwipeLoadMoreEnable:Z

    .line 24
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 39
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->checkLoadMore(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private checkLoadMore(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mIsSwipeLoadMoreEnable:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 88
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    .line 89
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_3

    .line 91
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 94
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    goto :goto_0

    .line 96
    :cond_3
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 99
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-lt v0, p1, :cond_4

    .line 102
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    if-eqz p1, :cond_4

    .line 103
    invoke-interface {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;->loadMore()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private initViews()V
    .locals 3

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    new-instance v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    .line 45
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->addView(Landroid/view/View;)V

    .line 48
    new-instance v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$2;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 57
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->setOnScrollListener()V

    .line 59
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setOnScrollListener()V
    .locals 2

    .line 75
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 76
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public enableSwipeLoadMore(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mIsSwipeLoadMoreEnable:Z

    return-void
.end method

.method public getFirstVisiblePosition()I
    .locals 4

    .line 114
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 119
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 120
    :cond_1
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_2

    .line 121
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    new-array v2, v2, [I

    .line 122
    array-length v3, v2

    if-lez v3, :cond_3

    .line 123
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 124
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    const/4 v0, 0x0

    .line 125
    aget v0, v2, v0

    move v1, v0

    goto :goto_0

    .line 129
    :cond_2
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public getRecyclerView()Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;
    .locals 1

    .line 109
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    return-object v0
.end method

.method public getlastVisiblePosition()I
    .locals 4

    .line 137
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mRecyclerView:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 142
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 143
    :cond_1
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_2

    .line 144
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    new-array v2, v2, [I

    .line 145
    array-length v3, v2

    if-lez v3, :cond_3

    .line 146
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 147
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 148
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    move v1, v0

    goto :goto_0

    .line 151
    :cond_2
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public setOnLoadListener(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    return-void
.end method
