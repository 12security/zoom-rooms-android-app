.class Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;
.super Ljava/lang/Object;
.source "ZRPReserveControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initScrollLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 668
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$200(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getY()F

    move-result v0

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$200(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 670
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$300(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 671
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$500(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v2}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$400(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/reserve/ZRPTimeBlock;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v3}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$400(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/reserve/ZRPTimeBlock;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result v1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$500(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v2}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$600(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result v1

    .line 675
    :goto_0
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v2}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$700(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/view/ZRPReserveScrollView;

    move-result-object v2

    const/4 v3, 0x0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v3, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollTo(II)V

    return-void
.end method
