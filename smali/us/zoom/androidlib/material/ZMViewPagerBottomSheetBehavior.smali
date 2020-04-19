.class public Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ZMViewPagerBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;,
        Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;,
        Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$State;,
        Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field mActivePointerId:I

.field private mCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

.field private final mDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field mHideable:Z

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field mMaxOffset:I

.field private mMaximumVelocity:F

.field mMinOffset:I

.field private mNestedScrolled:Z

.field mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mParentHeight:I

.field private mPeekHeight:I

.field private mPeekHeightAuto:Z

.field private mPeekHeightMin:I

.field private mSkipCollapsed:Z

.field mState:I

.field mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x4

    .line 147
    iput v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    .line 685
    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;)V

    iput-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 187
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    .line 147
    iput v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    .line 685
    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;)V

    iput-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 188
    sget-object v0, Lus/zoom/androidlib/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 190
    sget v0, Lus/zoom/androidlib/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 191
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-ne v2, v1, :cond_0

    .line 192
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    .line 194
    :cond_0
    sget v0, Lus/zoom/androidlib/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setPeekHeight(I)V

    .line 197
    :goto_0
    sget v0, Lus/zoom/androidlib/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setHideable(Z)V

    .line 198
    sget v0, Lus/zoom/androidlib/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 200
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaximumVelocity:F

    return-void
.end method

.method private findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 635
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 638
    :cond_0
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 639
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 640
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->getCurrentView(Landroidx/viewpager/widget/ViewPager;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 649
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 650
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_4

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static from(Landroid/view/View;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 861
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 864
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 865
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 866
    instance-of v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 870
    check-cast p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    return-object p0

    .line 867
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with ZMViewPagerBottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 862
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getYVelocity()F
    .locals 3

    .line 662
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaximumVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 663
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 593
    iput v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mActivePointerId:I

    .line 594
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 4

    .line 770
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 771
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    .line 772
    iget v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    if-le p1, v2, :cond_0

    sub-int p1, v2, p1

    int-to-float p1, p1

    .line 773
    iget v3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    sub-int p1, v2, p1

    int-to-float p1, p1

    .line 776
    iget v3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentView(Landroidx/viewpager/widget/ViewPager;)Landroid/view/View;
    .locals 6

    .line 613
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    .line 614
    :goto_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 615
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 618
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "position"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 619
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 620
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 621
    iget-boolean v3, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    if-ne v0, v4, :cond_0

    return-object v2

    :catch_0
    move-exception v2

    .line 627
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 625
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPeekHeight()I
    .locals 1

    .line 479
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeight:I

    :goto_0
    return v0
.end method

.method getPeekHeightMin()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 784
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightMin:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mSkipCollapsed:Z

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 578
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    return v0
.end method

.method invalidateScrollingChild()V
    .locals 2

    .line 438
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public isHideable()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 264
    iput-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    return v1

    .line 267
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->reset()V

    .line 272
    :cond_1
    iget-object v3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 273
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 275
    :cond_2
    iget-object v3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 288
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 289
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mInitialY:I

    .line 290
    iget-object v5, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    .line 291
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    .line 292
    iget v6, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v5, v3, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 293
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mActivePointerId:I

    .line 294
    iput-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 296
    :cond_4
    iget v5, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mActivePointerId:I

    if-ne v5, v4, :cond_5

    iget v4, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mInitialY:I

    .line 297
    invoke-virtual {p1, p2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_2

    .line 279
    :cond_6
    :pswitch_1
    iput-boolean v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 280
    iput v4, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mActivePointerId:I

    .line 282
    iget-boolean p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz p2, :cond_7

    .line 283
    iput-boolean v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    return v1

    .line 300
    :cond_7
    :goto_2
    iget-boolean p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v2

    .line 306
    :cond_8
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    if-eqz p2, :cond_9

    .line 307
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v0, :cond_9

    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    if-eq v0, v2, :cond_9

    .line 309
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mInitialY:I

    int-to-float p1, p1

    .line 310
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 227
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 229
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 231
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p3

    iput p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    .line 233
    iget-boolean p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz p3, :cond_2

    .line 234
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightMin:I

    if-nez p3, :cond_1

    .line 235
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lus/zoom/androidlib/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightMin:I

    .line 238
    :cond_1
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightMin:I

    iget v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    .line 240
    :cond_2
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeight:I

    :goto_0
    const/4 v2, 0x0

    .line 242
    iget v3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    .line 243
    iget v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v2, p3

    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    .line 244
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 245
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 246
    :cond_3
    iget-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    if-ne p3, v2, :cond_4

    .line 247
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 248
    :cond_4
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v2, 0x4

    if-ne p3, v2, :cond_5

    .line 249
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    if-eq p3, v1, :cond_6

    const/4 v2, 0x2

    if-ne p3, v2, :cond_7

    .line 251
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 253
    :cond_7
    :goto_1
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez p3, :cond_8

    .line 254
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 256
    :cond_8
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 257
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 433
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .line 354
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eq p3, p1, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int p4, p1, p5

    const/4 v0, 0x1

    if-lez p5, :cond_2

    .line 361
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    if-ge p4, p3, :cond_1

    sub-int/2addr p1, p3

    .line 362
    aput p1, p6, v0

    .line 363
    aget p1, p6, v0

    neg-int p1, p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 p1, 0x3

    .line 364
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 366
    :cond_1
    aput p5, p6, v0

    neg-int p1, p5

    .line 367
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 368
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    :cond_2
    if-gez p5, :cond_5

    const/4 v1, -0x1

    .line 371
    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_5

    .line 372
    iget p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    if-le p4, p3, :cond_4

    iget-boolean p4, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    sub-int/2addr p1, p3

    .line 377
    aput p1, p6, v0

    .line 378
    aget p1, p6, v0

    neg-int p1, p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 p1, 0x4

    .line 379
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 373
    :cond_4
    :goto_0
    aput p5, p6, v0

    neg-int p1, p5

    .line 374
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 375
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    .line 383
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->dispatchOnSlide(I)V

    .line 384
    iput p5, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mLastNestedScrollDy:I

    .line 385
    iput-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrolled:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 212
    check-cast p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    .line 213
    invoke-virtual {p3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 215
    iget p1, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget p1, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget p1, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;->state:I

    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 216
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 207
    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    iget p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    invoke-direct {v0, p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    .line 346
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mLastNestedScrollDy:I

    .line 347
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrolled:Z

    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 391
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    return-void

    .line 394
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_7

    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrolled:Z

    if-nez p1, :cond_1

    goto :goto_2

    .line 400
    :cond_1
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mLastNestedScrollDy:I

    const/4 p3, 0x4

    if-lez p1, :cond_2

    .line 401
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    goto :goto_0

    .line 403
    :cond_2
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    const/4 v1, 0x5

    goto :goto_0

    .line 406
    :cond_3
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mLastNestedScrollDy:I

    if-nez p1, :cond_5

    .line 407
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 408
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 409
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    goto :goto_0

    .line 412
    :cond_4
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    const/4 v1, 0x4

    goto :goto_0

    .line 416
    :cond_5
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    const/4 v1, 0x4

    .line 419
    :goto_0
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p3, p2, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    .line 420
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    .line 421
    new-instance p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;

    invoke-direct {p1, p0, p2, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 423
    :cond_6
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    :goto_1
    const/4 p1, 0x0

    .line 425
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrolled:Z

    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 315
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 319
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    .line 322
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    .line 327
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->reset()V

    .line 329
    :cond_3
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 330
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 332
    :cond_4
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 335
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    if-nez p1, :cond_5

    .line 336
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mInitialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 337
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 340
    :cond_5
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mIgnoreEvents:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public setBottomSheetCallback(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method public setHideable(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 453
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez p1, :cond_1

    .line 454
    iput-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightAuto:Z

    goto :goto_1

    .line 457
    :cond_0
    iget-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeight:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 458
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeightAuto:Z

    .line 459
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeight:I

    .line 460
    iget v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    :goto_1
    if-eqz v0, :cond_3

    .line 463
    iget p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    .line 464
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    .line 510
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mSkipCollapsed:Z

    return-void
.end method

.method public final setState(I)V
    .locals 2

    .line 541
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 546
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 548
    :cond_1
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    :cond_2
    return-void

    .line 552
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    return-void

    .line 557
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 558
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 559
    new-instance v1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$1;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 566
    :cond_5
    invoke-virtual {p0, v0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method setStateInternal(I)V
    .locals 2

    .line 582
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 585
    :cond_0
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    .line 586
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 587
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    .line 588
    invoke-virtual {v1, v0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4

    .line 601
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mSkipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 608
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 609
    iget p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mPeekHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 669
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 671
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    goto :goto_0

    .line 672
    :cond_1
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 673
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    .line 677
    :goto_0
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 678
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    .line 679
    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;

    invoke-direct {v0, p0, p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 681
    :cond_2
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    :goto_1
    return-void

    .line 675
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
