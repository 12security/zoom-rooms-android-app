.class Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;
.super Ljava/lang/Object;
.source "MeetingListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 386
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 389
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$1100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 390
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$1100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 391
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$1100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 392
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$1100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
