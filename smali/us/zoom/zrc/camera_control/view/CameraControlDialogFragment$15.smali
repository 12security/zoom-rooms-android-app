.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->fitScreen()V
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

    .line 578
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 581
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x33

    const/16 v1, 0x22

    .line 582
    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/4 v1, 0x2

    .line 583
    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v3}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$400(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getMeasuredWidth()I

    move-result v3

    aput v3, v1, v2

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$400(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 585
    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$500(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    goto :goto_0

    :cond_0
    sget-object v2, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->VERTICAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    .line 586
    :goto_0
    iget-object v4, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v4}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$500(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v4}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$fraction;->cp_control_panel_scale_factor:I

    invoke-virtual {v4, v5, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    goto :goto_1

    :cond_1
    const v3, 0x3f75c28f    # 0.96f

    .line 588
    :goto_1
    new-instance v4, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;

    invoke-direct {v4, v0, v2, v1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;-><init>(ILus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;[I)V

    .line 589
    invoke-virtual {v4, v3}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->setScaleFactor(F)V

    .line 590
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$400(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;

    invoke-direct {v1, v4}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;-><init>(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setBackgroundToKeyboard(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;)V

    :cond_2
    return-void
.end method
