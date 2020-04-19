.class Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$3;
.super Ljava/lang/Object;
.source "NextMeetingAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 165
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$3;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$3;->this$0:Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$300(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->access$400(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method
