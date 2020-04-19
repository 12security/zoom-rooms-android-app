.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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

    .line 927
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 937
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 941
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 945
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 946
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1600(Lus/zoom/zrp/roomlist/ZRPRoomMapView;F)F

    move-result p1

    .line 948
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 949
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 950
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/graphics/Matrix;)V

    .line 952
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    .line 953
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 930
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    .line 931
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    return p1
.end method
