.class Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;
.super Ljava/lang/Object;
.source "MeetingListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;
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

    .line 82
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$008(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)I

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$200(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$000(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0, v1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$002(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;I)I

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$300(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Z)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0, v1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$300(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Z)V

    .line 97
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->date_format:I

    invoke-static {v0, v1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$400(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;I)V

    .line 98
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->access$500(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
