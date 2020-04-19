.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$3;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 196
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$3;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$3;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$3;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->done(Landroid/app/Dialog;)V

    return-void
.end method
