.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$point:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->val$contentView:Landroid/view/View;

    iput-object p3, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->val$point:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 711
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->val$point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 715
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->val$point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 718
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;->val$contentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
