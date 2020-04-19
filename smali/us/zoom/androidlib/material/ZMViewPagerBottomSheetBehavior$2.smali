.class Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "ZMViewPagerBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .line 756
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 751
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p1, p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-boolean p3, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p3, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p3, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    :goto_0
    invoke-static {p2, p1, p3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .line 761
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-boolean p1, p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz p1, :cond_0

    .line 762
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p1, p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    sub-int/2addr p1, v0

    return p1

    .line 764
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p1, p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 713
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 707
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    const/4 p2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_0

    .line 722
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p2, p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    goto :goto_0

    .line 724
    :cond_0
    iget-object v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-boolean v2, v2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-virtual {v2, p1, p3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 725
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p2, p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mParentHeight:I

    const/4 p3, 0x5

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    cmpl-float p3, p3, v1

    if-nez p3, :cond_3

    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    .line 729
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v1, v1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v2, v2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge v1, p3, :cond_2

    .line 730
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p2, p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMinOffset:I

    goto :goto_0

    .line 733
    :cond_2
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p3, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    move p2, p3

    const/4 v0, 0x4

    goto :goto_0

    .line 737
    :cond_3
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget p3, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mMaxOffset:I

    move p2, p3

    const/4 v0, 0x4

    .line 740
    :goto_0
    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object p3, p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 741
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    .line 742
    new-instance p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;

    iget-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-direct {p2, p3, p1, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 745
    :cond_4
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    :goto_1
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4

    .line 689
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 692
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-boolean v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mTouchingScrollingChild:Z

    if-eqz v0, :cond_1

    return v2

    .line 695
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mActivePointerId:I

    if-ne v0, p2, :cond_2

    .line 696
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object p2, p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    .line 697
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    .line 702
    :cond_2
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object p2, p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object p2, p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
