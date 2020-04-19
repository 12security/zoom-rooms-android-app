.class Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$3;
.super Ljava/lang/Object;
.source "PreMeetingListFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 239
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$3;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .line 242
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->listMeeting()V

    .line 243
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$3;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$700(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$3;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v1}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$900(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
