.class Lus/zoom/zrc/MeetingActivity$6;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;

.field final synthetic val$audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$6;->this$0:Lus/zoom/zrc/MeetingActivity;

    iput-object p2, p0, Lus/zoom/zrc/MeetingActivity$6;->val$audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 533
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$6;->this$0:Lus/zoom/zrc/MeetingActivity;

    iget-boolean v0, v0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$6;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$6;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity$6;->val$audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$6;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$6;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity$6;->val$audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    :cond_1
    return-void
.end method
