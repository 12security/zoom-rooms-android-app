.class Lus/zoom/zrc/MeetingActivity$13;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onSetCloudRecordingNotificationEmailResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;I)V
    .locals 0

    .line 717
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    iput p2, p0, Lus/zoom/zrc/MeetingActivity$13;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 721
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    iget-boolean v0, v0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/MeetingActivity$13;->val$result:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onSetCloudRecordingNotificationEmailResult(I)V

    :cond_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$13;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/MeetingActivity$13;->val$result:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSetCloudRecordingNotificationEmailResult(I)V

    :cond_2
    return-void
.end method
