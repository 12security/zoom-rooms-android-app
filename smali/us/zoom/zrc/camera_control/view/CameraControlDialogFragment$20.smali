.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showRenamePresetDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

.field final synthetic val$index:I

.field final synthetic val$inputRenameET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Landroid/widget/EditText;I)V
    .locals 0

    .line 744
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->val$inputRenameET:Landroid/widget/EditText;

    iput p3, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 748
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->val$inputRenameET:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 751
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->val$index:I

    invoke-interface {v0, v1, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->rename(ILjava/lang/String;)V

    .line 754
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$700(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
