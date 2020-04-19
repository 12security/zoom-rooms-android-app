.class public Lus/zoom/zrc/view/MaxHeightListView;
.super Landroid/widget/ListView;
.source "MaxHeightListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;
    }
.end annotation


# instance fields
.field private canSwiping:Z

.field private item:Ljava/lang/Object;

.field protected mAnimationTime:J

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSwiping:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I

.field private maxHeight:I

.field private onDismissCallback:Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;

.field private swipingEnbale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MaxHeightListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/MaxHeightListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x12c

    .line 27
    iput-wide v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mAnimationTime:J

    .line 42
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    .line 44
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mMinFlingVelocity:I

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mMaxFlingVelocity:I

    .line 46
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->MaxHeightListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lus/zoom/zrcbox/R$styleable;->MaxHeightListView_swipeEnable:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/view/MaxHeightListView;->swipingEnbale:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MaxHeightListView;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/MaxHeightListView;->performDismiss(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MaxHeightListView;)Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/zrc/view/MaxHeightListView;->onDismissCallback:Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;

    return-object p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    .line 150
    iget p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    float-to-int p1, p1

    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/MaxHeightListView;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    .line 151
    iget p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MaxHeightListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MaxHeightListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    .line 155
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mViewWidth:I

    .line 158
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/MaxHeightListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->item:Ljava/lang/Object;

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    sub-float/2addr v0, v1

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    sub-float/2addr v1, v2

    .line 182
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 183
    iput-boolean v4, p0, Lus/zoom/zrc/view/MaxHeightListView;->mSwiping:Z

    .line 184
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x3

    .line 185
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 187
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MaxHeightListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 189
    :cond_1
    iget-boolean v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mSwiping:Z

    if-eqz v1, :cond_2

    .line 190
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v2

    iget v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return v4

    .line 194
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 178
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private handleActionUp(Landroid/view/MotionEvent;Landroid/view/View;Ljava/lang/Object;)V
    .locals 7

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mSwiping:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    sub-float/2addr p1, v0

    .line 202
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 204
    iget-object v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 207
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lus/zoom/zrc/view/MaxHeightListView;->mViewWidth:I

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v0, p1

    const/4 p1, 0x1

    goto :goto_2

    .line 210
    :cond_2
    iget p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mMinFlingVelocity:I

    int-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    iget p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mMaxFlingVelocity:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_4

    cmpg-float p1, v1, v0

    if-gez p1, :cond_4

    .line 213
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move v0, p1

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    if-eqz p1, :cond_6

    const-string p1, "translationX"

    .line 216
    new-array v2, v5, [F

    if-eqz v0, :cond_5

    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mViewWidth:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mViewWidth:I

    neg-int v0, v0

    :goto_3
    int-to-float v0, v0

    aput v0, v2, v6

    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string v0, "alpha"

    .line 217
    new-array v2, v5, [F

    aput v4, v2, v6

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 218
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v1, v6

    aput-object v0, v1, v5

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 219
    iget-wide v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mAnimationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    new-instance v0, Lus/zoom/zrc/view/MaxHeightListView$1;

    invoke-direct {v0, p0, p2, p3}, Lus/zoom/zrc/view/MaxHeightListView$1;-><init>(Lus/zoom/zrc/view/MaxHeightListView;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    :cond_6
    const-string p1, "translationX"

    .line 229
    new-array p3, v5, [F

    aput v4, p3, v6

    invoke-static {p1, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string p3, "alpha"

    .line 230
    new-array v0, v5, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v6

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 231
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v6

    aput-object p3, v0, v5

    invoke-static {p2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 232
    iget-wide p2, p0, Lus/zoom/zrc/view/MaxHeightListView;->mAnimationTime:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 236
    :goto_4
    invoke-direct {p0}, Lus/zoom/zrc/view/MaxHeightListView;->releaseVelocityTracker()V

    .line 237
    iput-boolean v6, p0, Lus/zoom/zrc/view/MaxHeightListView;->mSwiping:Z

    return-void

    :cond_7
    :goto_5
    return-void
.end method

.method private obtainVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 165
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private performDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    .line 244
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lus/zoom/zrc/view/MaxHeightListView;->mAnimationTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    new-instance v3, Lus/zoom/zrc/view/MaxHeightListView$2;

    invoke-direct {v3, p0, p2, p1, v1}, Lus/zoom/zrc/view/MaxHeightListView$2;-><init>(Lus/zoom/zrc/view/MaxHeightListView;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    new-instance p2, Lus/zoom/zrc/view/MaxHeightListView$3;

    invoke-direct {p2, p0, v0, p1}, Lus/zoom/zrc/view/MaxHeightListView$3;-><init>(Lus/zoom/zrc/view/MaxHeightListView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public isSwipingEnbale()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->swipingEnbale:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 92
    iget-boolean v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->swipingEnbale:Z

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 107
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    sub-float/2addr v0, v4

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    sub-float/2addr v4, v5

    .line 109
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    if-eq v0, v3, :cond_0

    .line 110
    iput-boolean v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    goto :goto_0

    .line 112
    :cond_0
    iput-boolean v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    .line 116
    :goto_0
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    sub-float/2addr v0, v4

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    sub-float/2addr v4, v5

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lus/zoom/zrc/view/MaxHeightListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    if-eq v0, v3, :cond_1

    .line 119
    iput-boolean v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    goto :goto_1

    .line 121
    :cond_1
    iput-boolean v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    goto :goto_1

    .line 95
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    .line 97
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownX:F

    float-to-int v0, v0

    iget v4, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownY:F

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Lus/zoom/zrc/view/MaxHeightListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    .line 98
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    if-ne v0, v3, :cond_2

    .line 99
    iput-boolean v2, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    .line 101
    :cond_2
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownPosition:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/MaxHeightListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MaxHeightListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 103
    iput-boolean v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    .line 126
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 68
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->maxHeight:I

    if-lez v0, :cond_0

    const/high16 p2, -0x80000000

    .line 69
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 131
    iget-boolean v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->swipingEnbale:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->canSwiping:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MaxHeightListView;->obtainVelocityTracker(Landroid/view/MotionEvent;)V

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MaxHeightListView;->handleActionMove(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 140
    :pswitch_1
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->mDownView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/MaxHeightListView;->item:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lus/zoom/zrc/view/MaxHeightListView;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MaxHeightListView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 144
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimationTime(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->mAnimationTime:J

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 60
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView;->maxHeight:I

    if-eq v0, p1, :cond_0

    .line 61
    iput p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->maxHeight:I

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/MaxHeightListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnDismissCallback(Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->onDismissCallback:Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;

    return-void
.end method

.method public setSwipingEnbale(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lus/zoom/zrc/view/MaxHeightListView;->swipingEnbale:Z

    return-void
.end method
