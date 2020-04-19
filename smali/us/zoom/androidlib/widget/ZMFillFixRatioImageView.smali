.class public Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;
.super Landroid/widget/ImageView;
.source "ZMFillFixRatioImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .line 32
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    .line 39
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 40
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v1, v5, :cond_1

    if-eq v2, v5, :cond_2

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_3

    if-ne v2, v5, :cond_3

    .line 45
    :cond_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ne v1, v5, :cond_4

    .line 51
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-double v0, p1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    int-to-double p1, v3

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    double-to-int p1, p1

    .line 60
    invoke-virtual {p0, v3, p1}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_5

    .line 63
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-double v0, p1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    int-to-double p1, v4

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 72
    invoke-virtual {p0, p1, v4}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 74
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMFillFixRatioImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_0
    return-void
.end method
