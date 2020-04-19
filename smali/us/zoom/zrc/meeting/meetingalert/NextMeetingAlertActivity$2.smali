.class Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;
.super Ljava/lang/Object;
.source "NextMeetingAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->updateTimeAndDate()V

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$200(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-static {v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$100(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
