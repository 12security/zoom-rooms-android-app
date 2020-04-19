.class Lus/zoom/zrc/view/JoinMeetingFragment$6;
.super Ljava/lang/Object;
.source "JoinMeetingFragment.java"

# interfaces
.implements Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/JoinMeetingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/JoinMeetingFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoryOperatorVisibility()V

    .line 201
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$500(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    .line 202
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$600(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    return-void
.end method

.method public onChangeMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoryOperatorVisibility()V

    .line 208
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$500(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    .line 209
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$600(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    return-void
.end method

.method public onClearMeetingHistory()V
    .locals 1

    .line 221
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoryOperatorVisibility()V

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$500(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    .line 223
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$600(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    return-void
.end method

.method public onDeleteMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->updateMeetingHistoryOperatorVisibility()V

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$700(Lus/zoom/zrc/view/JoinMeetingFragment;Lus/zoom/zrcsdk/model/MeetingHistory;)V

    .line 216
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$6;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$600(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    return-void
.end method
