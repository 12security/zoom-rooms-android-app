.class Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;
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

    .line 60
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "H:mm"

    goto :goto_0

    :cond_0
    const-string v0, "h:mm aa"

    .line 64
    :goto_0
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEEE, MMMM d"

    .line 65
    invoke-static {v1}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$100(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$200(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$300(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$400(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$500(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$500(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 74
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$600(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)V

    .line 76
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v2, v0, v1}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$502(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;J)J

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->access$700(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
