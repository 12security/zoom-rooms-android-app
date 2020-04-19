.class Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;
.super Ljava/lang/Object;
.source "MeetingListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateStartButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 291
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$600(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$600(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 299
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$600(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    .line 300
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$600(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 303
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/ZRCActivity;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 309
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$700(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    :cond_2
    return-void
.end method
