.class Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "ZMViewPagerBottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mTargetState:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 794
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 796
    iput p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->mTargetState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 801
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object v0, v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->mViewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SettleRunnable;->mTargetState:I

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setStateInternal(I)V

    :goto_0
    return-void
.end method
