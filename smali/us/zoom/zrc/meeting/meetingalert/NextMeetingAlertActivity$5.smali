.class Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;
.super Ljava/lang/Object;
.source "NextMeetingAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 191
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$300(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$500(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "#eb5959"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$300(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$600(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method
