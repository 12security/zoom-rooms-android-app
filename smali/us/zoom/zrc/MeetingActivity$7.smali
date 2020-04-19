.class Lus/zoom/zrc/MeetingActivity$7;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;

.field final synthetic val$videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$7;->this$0:Lus/zoom/zrc/MeetingActivity;

    iput-object p2, p0, Lus/zoom/zrc/MeetingActivity$7;->val$videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 550
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$7;->this$0:Lus/zoom/zrc/MeetingActivity;

    iget-boolean v0, v0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$7;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$7;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity$7;->val$videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    invoke-virtual {v0, v2, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$7;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$7;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity$7;->val$videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    invoke-virtual {v0, v2, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    :cond_1
    return-void
.end method
