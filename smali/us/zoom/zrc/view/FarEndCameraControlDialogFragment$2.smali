.class Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;
.super Ljava/lang/Object;
.source "FarEndCameraControlDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 156
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$600(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$200(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$200(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    .line 162
    invoke-static {v3}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$700(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)I

    move-result v3

    .line 161
    invoke-virtual {v0, v2, v3, v1, v1}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$600(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$400(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$400(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    .line 165
    invoke-static {v3}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$700(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)I

    move-result v3

    .line 164
    invoke-virtual {v0, v2, v3, v1, v1}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    .line 167
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$500(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->access$800(Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
