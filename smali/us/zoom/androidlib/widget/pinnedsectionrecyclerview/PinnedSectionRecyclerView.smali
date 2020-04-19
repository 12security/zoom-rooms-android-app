.class public Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;,
        Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PinnedSectionRecyclerView"


# instance fields
.field private final mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOnPinnedSectionClick:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

.field private mPinnedSectionIndex:I

.field mRecycleSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSectionIndex:I

    .line 48
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchPoint:Landroid/graphics/PointF;

    .line 54
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 457
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$4;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$4;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 70
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSectionIndex:I

    .line 48
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchPoint:Landroid/graphics/PointF;

    .line 54
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 457
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$4;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$4;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 75
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSectionIndex:I

    .line 48
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchPoint:Landroid/graphics/PointF;

    .line 54
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 457
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$4;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$4;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 80
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->updateViews()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;
    .locals 0

    .line 22
    iget-object p0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mOnPinnedSectionClick:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSectionIndex:I

    return p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->onDataSetChanged()V

    return-void
.end method

.method private clearTouchTarget()V
    .locals 1

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchTarget:Landroid/view/View;

    return-void
.end method

.method private createPinnedSection(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 118
    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mRecycleSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mRecycleSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    .line 123
    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mRecycleSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    invoke-direct {v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;-><init>()V

    .line 128
    iput p1, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->position:I

    .line 131
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 134
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v0, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 138
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_3
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 145
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_4

    const/high16 v3, 0x40000000    # 2.0f

    .line 149
    :cond_4
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v0, v5, :cond_5

    move v0, v5

    .line 153
    :cond_5
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 154
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 155
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    .line 156
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 157
    iput v5, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTranslateY:I

    .line 160
    iput-object v2, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 161
    iput p1, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->position:I

    .line 162
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->id:J

    .line 165
    iput-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    .line 166
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSectionIndex:I

    return-void
.end method

.method private destroyPinnedShadow()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mSectionsDistanceY:I

    .line 260
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-eqz v0, :cond_0

    .line 261
    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mRecycleSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    :cond_0
    return-void
.end method

.method private ensureShadowForPosition()V
    .locals 4

    .line 222
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 223
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    return-void

    .line 227
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 228
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->findCurrentPinnedSection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-void

    .line 232
    :cond_1
    iget-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-nez v3, :cond_2

    .line 233
    invoke-direct {p0, v2}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->createPinnedSection(I)V

    .line 236
    :cond_2
    iget-object v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    iget v2, v2, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->position:I

    invoke-direct {p0, v2}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->findNextPinnedSection(I)I

    move-result v2

    .line 237
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 239
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 240
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 242
    :cond_3
    iget v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowHeight:I

    :goto_0
    iput v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mSectionsDistanceY:I

    return-void

    .line 246
    :cond_4
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    iget-object v1, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    .line 249
    iput v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mSectionsDistanceY:I

    .line 251
    iget v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mSectionsDistanceY:I

    if-gez v0, :cond_5

    .line 252
    iput v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTranslateY:I

    goto :goto_1

    .line 254
    :cond_5
    iput v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTranslateY:I

    :goto_1
    return-void
.end method

.method private findNextPinnedSection(I)I
    .locals 4

    .line 303
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 304
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 308
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 309
    instance-of v3, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 313
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 314
    move-object v3, v1

    check-cast v3, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    invoke-interface {v3, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;->isPinnedSection(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private initViews()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchSlop:I

    .line 85
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->showShadow(Z)V

    .line 87
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;

    invoke-direct {v2, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 3

    .line 445
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 449
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTranslateY:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 451
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTranslateY:I

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 452
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 453
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 454
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private onDataSetChanged()V
    .locals 2

    .line 487
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->recreatePinnedShadow()V

    .line 489
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 490
    instance-of v1, v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    if-eqz v1, :cond_0

    .line 491
    check-cast v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    invoke-interface {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;->onChanged()V

    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 192
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 197
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->destroyPinnedShadow()V

    return-void

    .line 201
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 203
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 204
    instance-of v1, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->findCurrentPinnedSection(I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-eqz v1, :cond_2

    iget v1, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->position:I

    if-eq v1, v0, :cond_2

    .line 208
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->destroyPinnedShadow()V

    .line 211
    :cond_2
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-nez v1, :cond_3

    .line 212
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->createPinnedSection(I)V

    .line 215
    :cond_3
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->ensureShadowForPosition()V

    return-void

    .line 217
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter need to implement IPinnedSectionAdapter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 362
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingLeft()I

    move-result v0

    .line 367
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingTop()I

    move-result v1

    .line 368
    iget-object v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    iget-object v2, v2, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 373
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowHeight:I

    iget v5, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mSectionsDistanceY:I

    .line 374
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 375
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v0

    .line 377
    iget v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTranslateY:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v2, v0, v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 380
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mSectionsDistanceY:I

    if-lez v1, :cond_1

    .line 381
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 382
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 383
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 384
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v5, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowHeight:I

    add-int/2addr v2, v5

    .line 381
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 385
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 388
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchTarget:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 399
    invoke-direct {p0, v3, v0, v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    iget-object v3, v3, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchTarget:Landroid/view/View;

    .line 401
    iget-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchPoint:Landroid/graphics/PointF;

    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 402
    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 405
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDownEvent:Landroid/view/MotionEvent;

    .line 408
    :cond_0
    iget-object v3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchTarget:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 409
    invoke-direct {p0, v3, v0, v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 411
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 419
    iget-object v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 422
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 423
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 424
    iget-object v2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 425
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 428
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 429
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 430
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->clearTouchTarget()V

    goto :goto_1

    .line 415
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 416
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->clearTouchTarget()V

    :cond_4
    :goto_1
    return v0

    .line 437
    :cond_5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public findCurrentPinnedSection(I)I
    .locals 3

    .line 281
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 282
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 287
    instance-of v2, v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    if-nez v2, :cond_1

    return v1

    :cond_1
    :goto_0
    if-ltz p1, :cond_3

    .line 292
    move-object v2, v0

    check-cast v2, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    invoke-interface {v2, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;->isPinnedSection(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public getCurrentPinnedSection()I
    .locals 1

    .line 113
    iget v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSectionIndex:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 350
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 351
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    .line 352
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 353
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mPinnedSection:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;

    iget-object p1, p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$PinnedSection;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eq p4, p1, :cond_0

    .line 355
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->recreatePinnedShadow()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 340
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 341
    new-instance p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$3;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$3;-><init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method recreatePinnedShadow()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 268
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->destroyPinnedShadow()V

    .line 274
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->ensureShadowForPosition()V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 476
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 478
    iget-object v1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    if-eq v0, p1, :cond_2

    .line 481
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->destroyPinnedShadow()V

    .line 483
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setOnPinnedSectionClick(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mOnPinnedSectionClick:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

    return-void
.end method

.method public showShadow(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    .line 326
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 327
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "#50a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "#00a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    invoke-direct {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p1, 0x41000000    # 8.0f

    .line 328
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowHeight:I

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 333
    iput v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->mShadowHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePinnedSection()V
    .locals 3

    .line 171
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 172
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 177
    invoke-direct {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->destroyPinnedShadow()V

    return-void

    .line 181
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 183
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 184
    instance-of v1, v1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/IPinnedSectionAdapter;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->findCurrentPinnedSection(I)I

    move-result v0

    .line 186
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->createPinnedSection(I)V

    :cond_2
    return-void
.end method
