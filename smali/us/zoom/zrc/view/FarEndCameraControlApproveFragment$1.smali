.class Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "FarEndCameraControlApproveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 58
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->access$000(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->access$000(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->access$102(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;Z)Z

    .line 63
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->access$100(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_2
    return-void
.end method
