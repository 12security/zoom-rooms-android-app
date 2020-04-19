.class public Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;
.super Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;
.source "RectRoundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;,
        Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;
    }
.end annotation


# static fields
.field private static final ADJUST_FACTOR_H:F = 1.98f

.field private static final ADJUST_FACTOR_V:F = 1.58f

.field private static final DEF_PAINT_COLOR:I = -0xffff01


# instance fields
.field private SCALE_FACTOR:F

.field private bounds:Landroid/graphics/RectF;

.field private mKeyboardH:I

.field private mKeyboardW:I

.field private final p:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;-><init>(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    .line 19
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->radius:F

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->bounds:Landroid/graphics/RectF;

    .line 29
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->p:Landroid/graphics/Paint;

    return-void
.end method

.method private adjustBounds([I[ILus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 62
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_5

    .line 65
    array-length v0, p2

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    .line 68
    sget-object p3, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->access$100(Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;)Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    move-result-object p3

    .line 69
    :goto_0
    sget-object v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_3

    .line 70
    aget p2, p2, v2

    aput p2, p1, v2

    .line 71
    aget p2, p1, v2

    int-to-float p2, p2

    const p3, 0x3ffd70a4    # 1.98f

    div-float/2addr p2, p3

    float-to-int p2, p2

    aput p2, p1, v1

    .line 72
    aget p2, p1, v2

    int-to-float p2, p2

    iget p3, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->SCALE_FACTOR:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, p1, v2

    .line 73
    aget p2, p1, v1

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, p1, v1

    goto :goto_1

    .line 74
    :cond_3
    sget-object v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->VERTICAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    if-ne p3, v0, :cond_4

    .line 76
    aget p2, p2, v2

    aput p2, p1, v2

    .line 77
    aget p2, p1, v2

    int-to-float p2, p2

    const p3, 0x3fca3d71    # 1.58f

    div-float/2addr p2, p3

    float-to-int p2, p2

    aput p2, p1, v1

    .line 78
    aget p2, p1, v2

    int-to-float p2, p2

    iget p3, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->SCALE_FACTOR:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, p1, v2

    .line 79
    aget p2, p1, v1

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, p1, v1

    .line 80
    aget p2, p1, v2

    .line 81
    aget p3, p1, v1

    aput p3, p1, v2

    .line 82
    aput p2, p1, v1

    goto :goto_1

    :cond_4
    const-string p1, "RectRoundShapeDrawable"

    const-string p2, "A wrong type argument may be pointed."

    .line 84
    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, ""

    aput-object v0, p3, v2

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method private calculateRadius()F
    .locals 2

    .line 89
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method adjustBeforeDrawing()V
    .locals 6

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [I

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->getConfig()Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;

    if-nez v1, :cond_0

    const v4, 0x3f333333    # 0.7f

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->getScaleFactor()F

    move-result v4

    :goto_0
    iput v4, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->SCALE_FACTOR:F

    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->getLimitSize()[I

    move-result-object v4

    :goto_1
    invoke-direct {p0, v0, v4, v1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->adjustBounds([I[ILus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;)V

    if-nez v1, :cond_2

    .line 45
    sget-object v4, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->access$000(Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;)Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    move-result-object v4

    .line 46
    :goto_2
    iget-object v5, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->p:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    const v1, -0xffff01

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->getPaintColor()I

    move-result v1

    :goto_3
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    if-ne v4, v1, :cond_4

    .line 49
    aget v1, v0, v2

    iput v1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    .line 50
    aget v0, v0, v3

    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    goto :goto_4

    .line 51
    :cond_4
    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->VERTICAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    if-ne v4, v1, :cond_5

    .line 52
    aget v1, v0, v3

    iput v1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    .line 53
    aget v0, v0, v2

    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    .line 57
    :cond_5
    :goto_4
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    int-to-float v1, v1

    iget v2, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->calculateRadius()F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->radius:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->radius:F

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic getConfig()Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;
    .locals 1

    .line 16
    invoke-super {p0}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->getConfig()Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 16
    invoke-super {p0}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendHeight()I
    .locals 1

    .line 146
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    return v0
.end method

.method public getRecommendWidth()I
    .locals 1

    .line 141
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    return v0
.end method

.method public bridge synthetic setConfig(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->setConfig(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;)V

    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 164
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardH:I

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The width of keyboard can not be smaller 0 or equaled to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyboardWidth(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 155
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->mKeyboardW:I

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The width of keyboard can not be smaller 0 or equaled to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
