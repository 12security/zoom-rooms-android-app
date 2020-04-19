.class Lus/zoom/zrc/MeetingActivity$8;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;

.field final synthetic val$recordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$8;->this$0:Lus/zoom/zrc/MeetingActivity;

    iput-object p2, p0, Lus/zoom/zrc/MeetingActivity$8;->val$recordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 577
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$8;->this$0:Lus/zoom/zrc/MeetingActivity;

    iget-boolean v0, v0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$8;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$8;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity$8;->val$recordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    :cond_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$8;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$8;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity$8;->val$recordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    :cond_2
    return-void
.end method
