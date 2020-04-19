.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZRPRoomMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/roomlist/ZRPRoomMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private showPressDown(Landroid/view/MotionEvent;)V
    .locals 5

    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 961
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 964
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 965
    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 966
    invoke-virtual {v3, v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isInBounds(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->access$100(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 967
    invoke-virtual {v3, v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->setPressed(Z)V

    .line 968
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1, v3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1902(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 972
    :cond_1
    :goto_1
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1900(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 973
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 979
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->showPressDown(Landroid/view/MotionEvent;)V

    .line 980
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/widget/OverScroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .line 1018
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 1022
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2200(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)F

    move-result p1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    return p2

    .line 1026
    :cond_1
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    .line 1030
    :cond_2
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    .line 1032
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, p1

    .line 1033
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, p1

    .line 1034
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1035
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1036
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1037
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1039
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/widget/OverScroller;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1040
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/widget/OverScroller;

    move-result-object v0

    float-to-int v3, p3

    float-to-int v4, p4

    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    .line 1044
    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result p1

    div-int/lit8 v9, p1, 0x2

    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result p1

    div-int/lit8 v10, p1, 0x2

    .line 1040
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1046
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 986
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2100(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 997
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 1001
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2200(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)F

    move-result p1

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    return p2

    .line 1005
    :cond_1
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    .line 1009
    :cond_2
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    .line 1010
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    neg-float p2, p3

    neg-float p3, p4

    invoke-static {p1, p2, p3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;FF)V

    .line 1011
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    .line 1012
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 991
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$2100(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
