.class public abstract Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;
.super Ljava/lang/Object;
.source "AbstarctRoundedCornerClipper.java"


# instance fields
.field mCornerRadius:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrc_rounded_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;-><init>(Landroid/view/View;F)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$dimen;->zrc_rounded_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 23
    :cond_0
    iput p2, p0, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public clipCorner(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    .line 27
    iget v0, p0, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->mCornerRadius:F

    return v0
.end method

.method public onSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public restore(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
