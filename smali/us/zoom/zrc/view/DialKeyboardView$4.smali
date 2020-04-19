.class Lus/zoom/zrc/view/DialKeyboardView$4;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DialKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DialKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DialKeyboardView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 574
    invoke-static {p1, p2}, Lus/zoom/zrc/view/DialKeyboardView$4;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 621
    check-cast p3, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

    .line 622
    invoke-virtual {p3, p4}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->swipe(F)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 590
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/view/DialKeyboardView;->access$700(Lus/zoom/zrc/view/DialKeyboardView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 592
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {v0}, Lus/zoom/zrc/view/DialKeyboardView;->access$700(Lus/zoom/zrc/view/DialKeyboardView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "DialKeyboardView"

    const-string p2, "onSwiped() called with: adapter == null"

    .line 594
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 597
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getCallType()I

    move-result v2

    .line 598
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {v3}, Lus/zoom/zrc/view/DialKeyboardView;->access$800(Lus/zoom/zrc/view/DialKeyboardView;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 599
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getList()Ljava/util/List;

    move-result-object v3

    .line 600
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/SipDialHistory;

    .line 599
    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/ZRCSdkContext;->deleteSipDialHistoryItem(Lus/zoom/zrcsdk/model/SipDialHistory;)V

    .line 601
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedSipDialHistoryList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v3, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {v3}, Lus/zoom/zrc/view/DialKeyboardView;->access$800(Lus/zoom/zrc/view/DialKeyboardView;)Z

    move-result v3

    if-nez v3, :cond_3

    if-ne v2, v4, :cond_3

    .line 603
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ICallHistoryItem;

    .line 604
    invoke-interface {v3}, Lus/zoom/zrcsdk/model/ICallHistoryItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/ZRCSdkContext;->deleteDialHistoryItem(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedDialHistoryList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 607
    :cond_3
    :goto_0
    invoke-virtual {v0, p2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyItemRemoved(I)V

    .line 608
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 609
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 610
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    .line 612
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 613
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$4;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/DialKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_call_history_item_deleted_accessibility:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "1"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 614
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
