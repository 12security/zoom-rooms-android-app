.class Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ZRCListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;Lus/zoom/zrc/view/ZRCListPopupWindow$1;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 531
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    .line 532
    invoke-static {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$600(Lus/zoom/zrc/view/ZRCListPopupWindow;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$500(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$800(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {p2}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$700(Lus/zoom/zrc/view/ZRCListPopupWindow;)Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$700(Lus/zoom/zrc/view/ZRCListPopupWindow;)Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->run()V

    :cond_0
    return-void
.end method
