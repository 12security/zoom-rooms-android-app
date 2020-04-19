.class Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;
.super Ljava/lang/Object;
.source "WhiteboardCameraPairDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->onHandleReasonCodeAlreadyPairedByOther(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 318
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->access$100(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->access$200(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->pairSeize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    sget p2, Lus/zoom/zrcbox/R$string;->connecting:I

    invoke-virtual {p1, p2}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method
