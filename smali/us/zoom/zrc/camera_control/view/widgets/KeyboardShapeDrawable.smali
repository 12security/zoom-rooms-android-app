.class abstract Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "KeyboardShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;
    }
.end annotation


# static fields
.field private static final DEF_PAINT_COLOR:I = -0xffff01


# instance fields
.field private config:Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;

.field private final p:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->p:Landroid/graphics/Paint;

    .line 21
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->config:Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;

    .line 22
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->p:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const p1, -0xffff01

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;->getPaintColor()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getConfig()Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;
    .locals 1

    .line 40
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->config:Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 48
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->p:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract getRecommendHeight()I
.end method

.method public abstract getRecommendWidth()I
.end method

.method public setConfig(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->config:Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;

    return-void
.end method

.method public abstract setKeyboardHeight(I)V
.end method

.method public abstract setKeyboardWidth(I)V
.end method
