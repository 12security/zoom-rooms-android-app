.class Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "FarEndCameraControlDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 122
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$200(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v3}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$200(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 124
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v1, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$302(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;Z)Z

    .line 127
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$400(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$400(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$302(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;Z)Z

    .line 132
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$300(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onUpdateMeetingParticipantsStatus()V
    .locals 0

    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    if-nez p2, :cond_0

    .line 141
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->dismiss()V

    return-void

    .line 144
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanSwitchCamera()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$500(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0, p2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$500(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0, p2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
