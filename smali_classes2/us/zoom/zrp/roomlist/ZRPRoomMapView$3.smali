.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$3;
.super Ljava/lang/Object;
.source "ZRPRoomMapView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/roomlist/ZRPRoomMapView;->sortVirtualRoomView(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$3;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 248
    check-cast p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    check-cast p2, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$3;->compare(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)I
    .locals 3

    .line 252
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method
