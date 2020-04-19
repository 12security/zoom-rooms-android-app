.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showInputEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

.field final synthetic val$etEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->val$etEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 668
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->val$etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 669
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->val$etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result v0

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RECORDING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 671
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SET_RECORDING_EMAIL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 672
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result v2

    const-string v3, ""

    .line 670
    invoke-virtual {p2, v0, v1, v2, v3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 675
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, p1, v0, v1, v2}, Lus/zoom/zrcsdk/ConfApp;->setCloudRecordingNotificationEmail(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 676
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$600(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$string;->set_recording_email:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 677
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$600(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->setCloudRecordingNotificationEmail(Ljava/lang/String;)V

    .line 679
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;->val$etEmail:Landroid/widget/EditText;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    :cond_0
    return-void
.end method
