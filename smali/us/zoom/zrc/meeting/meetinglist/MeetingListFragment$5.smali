.class Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;
.super Ljava/lang/Object;
.source "MeetingListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 367
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 370
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$900(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-static {p1, p3}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$602(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 371
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$200(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    .line 372
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {p1, p2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$1000(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Landroid/view/View;)V

    return-void
.end method
