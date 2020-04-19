.class Lus/zoom/zrc/view/JoinMeetingFragment$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "JoinMeetingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/JoinMeetingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/JoinMeetingFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$1;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 80
    invoke-static {p1, p2}, Lus/zoom/zrc/view/JoinMeetingFragment$1;->makeMovementFlags(II)I

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

    .line 109
    check-cast p3, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;

    invoke-virtual {p3, p4}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->swipe(F)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 95
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment$1;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p2}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$000(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/view/FixedRowsRecyclerView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment$1;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p2}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$100(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$1;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$100(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->getMeetingHistories()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/MeetingHistory;

    .line 98
    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->deleteMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    .line 100
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment$1;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/view/JoinMeetingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 101
    iget-object p2, p0, Lus/zoom/zrc/view/JoinMeetingFragment$1;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/view/JoinMeetingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_call_history_item_deleted_accessibility:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 102
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
