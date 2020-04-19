.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$24;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showProgressingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$24;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 815
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$24;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->dismissWaitingDialog()V

    return-void
.end method
