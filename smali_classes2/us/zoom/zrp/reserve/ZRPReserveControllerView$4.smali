.class Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;
.super Ljava/lang/Object;
.source "ZRPReserveControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initAccessibility()V
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

    .line 681
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 684
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$800(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$300(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 686
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$900(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 687
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$900(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$200(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
