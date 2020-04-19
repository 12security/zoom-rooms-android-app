.class public Lus/zoom/androidlib/widget/ZMHorizontalListView;
.super Landroid/widget/AdapterView;
.source "ZMHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRelayoutRunnable:Ljava/lang/Runnable;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAlwaysOverrideTouch:Z

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    const p2, 0x7fffffff

    .line 55
    iput p2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    .line 56
    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    .line 59
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 62
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataChanged:Z

    .line 94
    new-instance p1, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;-><init>(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 173
    new-instance p1, Lus/zoom/androidlib/widget/ZMHorizontalListView$2;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView$2;-><init>(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRelayoutRunnable:Ljava/lang/Runnable;

    .line 338
    new-instance p1, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;-><init>(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 67
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lus/zoom/androidlib/widget/ZMHorizontalListView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/ZMHorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/widget/ZMHorizontalListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    return p0
.end method

.method static synthetic access$400(Lus/zoom/androidlib/widget/ZMHorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 6

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0, p1, p2, v0, v2}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 156
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p2, v1, :cond_2

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getWidth()I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 162
    :goto_1
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v2, :cond_3

    .line 163
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getHeight()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 164
    :cond_3
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v1, :cond_4

    .line 165
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getHeight()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 167
    :cond_4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 170
    :goto_2
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private fillList(I)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    invoke-direct {p0, v0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->fillListRight(II)V

    .line 234
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 238
    :cond_1
    invoke-direct {p0, v1, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    .line 259
    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    if-ltz v0, :cond_0

    .line 260
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 263
    iget v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    .line 264
    iget v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    .line 244
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 247
    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 250
    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    .line 253
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    .line 71
    :try_start_0
    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    .line 73
    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    .line 74
    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    .line 75
    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    const v0, 0x7fffffff

    .line 76
    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    .line 77
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 79
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 5

    .line 289
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    .line 291
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    const/4 v0, 0x0

    move v1, p1

    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    if-gtz v2, :cond_0

    .line 271
    iget v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDisplayOffset:I

    .line 272
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 274
    iget v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mLeftViewIndex:I

    .line 275
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 283
    iget v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRightViewIndex:I

    .line 284
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->initView()V

    .line 136
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->removeAllViewsInLayout()V

    .line 137
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 308
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 311
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    if-lez p1, :cond_0

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    const/4 v4, 0x0

    const/16 v5, -0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 314
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return v1

    :cond_1
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 116
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 334
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 327
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 327
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 184
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataChanged:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 189
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    .line 190
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->initView()V

    .line 191
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->removeAllViewsInLayout()V

    .line 192
    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    .line 193
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataChanged:Z

    .line 196
    :cond_1
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    .line 198
    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    .line 201
    :cond_2
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    const/4 p3, 0x1

    if-gez p1, :cond_3

    .line 202
    iput p2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    .line 203
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 205
    :cond_3
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    iget p4, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    if-le p1, p4, :cond_4

    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    if-lez p1, :cond_4

    .line 206
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    .line 207
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 210
    :cond_4
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    iget p4, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    sub-int/2addr p1, p4

    .line 212
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->removeNonVisibleItems(I)V

    .line 213
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->fillList(I)V

    .line 214
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->positionItems(I)V

    .line 216
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    iput p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mCurrentX:I

    .line 218
    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    iget p4, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    if-le p1, p4, :cond_5

    iget p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mMaxX:I

    if-lez p1, :cond_5

    const/4 p2, 0x1

    .line 220
    :cond_5
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_7

    .line 221
    :cond_6
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mRelayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 3

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    iget v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 303
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 47
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 129
    :cond_0
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 130
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->reset()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
