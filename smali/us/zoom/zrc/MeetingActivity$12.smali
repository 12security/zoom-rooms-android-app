.class Lus/zoom/zrc/MeetingActivity$12;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onUpdateIsOnEntryMuted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;

.field final synthetic val$isOnEntryMuted:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;Z)V
    .locals 0

    .line 645
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$12;->this$0:Lus/zoom/zrc/MeetingActivity;

    iput-boolean p2, p0, Lus/zoom/zrc/MeetingActivity$12;->val$isOnEntryMuted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 649
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$12;->this$0:Lus/zoom/zrc/MeetingActivity;

    iget-boolean v0, v0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$12;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$12;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/MeetingActivity$12;->val$isOnEntryMuted:Z

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onUpdateIsOnEntryMuted(Z)V

    :cond_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$12;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$12;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/MeetingActivity$12;->val$isOnEntryMuted:Z

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onUpdateIsOnEntryMuted(Z)V

    :cond_2
    return-void
.end method
