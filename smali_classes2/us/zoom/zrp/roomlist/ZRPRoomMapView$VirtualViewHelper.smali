.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ZRPRoomMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/roomlist/ZRPRoomMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualViewHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrp/roomlist/ZRPRoomMapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 806
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    .line 807
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private getVirtualView(I)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
    .locals 1

    if-ltz p1, :cond_1

    .line 811
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2

    .line 819
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 820
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 821
    invoke-virtual {v1, p1, p2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isInBounds(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 830
    :goto_0
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 831
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 857
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result p1

    .line 858
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->getVirtualView(I)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p3, 0x10

    if-ne p3, p2, :cond_1

    .line 864
    iget-object p2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p2, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1200(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 837
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->getVirtualView(I)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    move-result-object p1

    if-nez p1, :cond_0

    .line 839
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1100(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, ""

    .line 840
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$1100(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 842
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    return-void

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 847
    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 848
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 849
    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->access$100(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 850
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 851
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    return-void
.end method
