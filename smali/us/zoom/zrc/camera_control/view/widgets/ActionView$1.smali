.class Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "ActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getDefaultBackground()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/widgets/ActionView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/widgets/ActionView;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;->this$0:Lus/zoom/zrc/camera_control/view/widgets/ActionView;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 271
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;->this$0:Lus/zoom/zrc/camera_control/view/widgets/ActionView;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->access$000(Lus/zoom/zrc/camera_control/view/widgets/ActionView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;->this$0:Lus/zoom/zrc/camera_control/view/widgets/ActionView;

    invoke-static {v1}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->access$000(Lus/zoom/zrc/camera_control/view/widgets/ActionView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;->this$0:Lus/zoom/zrc/camera_control/view/widgets/ActionView;

    invoke-virtual {v2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
