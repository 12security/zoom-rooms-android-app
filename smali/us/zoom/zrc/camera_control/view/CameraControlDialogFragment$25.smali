.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setIntelligentZoomEnable(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Z)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    iput-boolean p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$900(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;->val$enabled:Z

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    return-void
.end method
