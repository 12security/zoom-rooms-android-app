.class Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;
.super Lus/zoom/zrc/base/app/ZRCDialog;
.source "ZRPReserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/ZRPReserveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReserveDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1    # Lus/zoom/zrp/ZRPReserveFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1776
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    .line 1777
    invoke-direct {p0, p2, p3}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 1778
    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->setDisableWindowStateChangedAccessibilityEvent(Z)V

    return-void
.end method

.method private shouldBlockUserEvent()Z
    .locals 3

    .line 1798
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$2300(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$2300(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "block events when showing other room list"

    .line 1799
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1802
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$2400(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$2400(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "block events when returning to reserve self room"

    .line 1803
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1806
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$2500(Lus/zoom/zrp/ZRPReserveFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "block events when opening reserve other room dialog"

    .line 1807
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1783
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->shouldBlockUserEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1786
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1791
    invoke-direct {p0}, Lus/zoom/zrp/ZRPReserveFragment$ReserveDialog;->shouldBlockUserEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1794
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
