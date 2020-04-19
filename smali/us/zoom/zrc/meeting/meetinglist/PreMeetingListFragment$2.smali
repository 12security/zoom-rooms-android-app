.class Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;
.super Ljava/lang/Object;
.source "PreMeetingListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$800(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$800(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$800(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method
