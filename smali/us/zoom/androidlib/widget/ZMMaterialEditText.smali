.class public Lus/zoom/androidlib/widget/ZMMaterialEditText;
.super Landroid/widget/EditText;
.source "ZMMaterialEditText.java"


# instance fields
.field private enableLine:Z

.field private mDisablePathEffect:Landroid/graphics/PathEffect;

.field private mLineDisableColor:I

.field private mLineNormalColor:I

.field private mLinefocusColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->enableLine:Z

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->enableLine:Z

    .line 32
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->enableLine:Z

    .line 27
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 41
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 46
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    int-to-float v1, v1

    aput v1, v3, v4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mDisablePathEffect:Landroid/graphics/PathEffect;

    .line 47
    invoke-super {p0, v5}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 48
    sget v1, Lus/zoom/androidlib/R$color;->zm_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    .line 49
    sget v1, Lus/zoom/androidlib/R$color;->zm_highlight_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    .line 50
    sget v1, Lus/zoom/androidlib/R$color;->zm_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt_zm_edtNormalColor:I

    iget v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    .line 54
    sget v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt_zm_edtDisableColor:I

    iget v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    .line 55
    sget v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt_zm_edtFocusColor:I

    iget v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getLineDisableColor()I
    .locals 1

    .line 73
    iget v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    return v0
.end method

.method public getLineNormalColor()I
    .locals 1

    .line 65
    iget v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    return v0
.end method

.method public getLinefocusColor()I
    .locals 1

    .line 81
    iget v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 121
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->enableLine:Z

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 125
    iget v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    const/4 v7, 0x0

    .line 126
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 127
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    .line 129
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 130
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mDisablePathEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    iget v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    .line 138
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMaterialEditText;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x0

    int-to-float v5, v1

    int-to-float v4, v2

    move-object v1, p1

    move v2, v3

    move v3, v5

    move-object v6, v0

    .line 139
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    return-void
.end method

.method public setEnableLine(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->enableLine:Z

    return-void
.end method

.method public setLineDisableColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    return-void
.end method

.method public setLineNormalColor(I)V
    .locals 0

    .line 69
    iput p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    return-void
.end method

.method public setLinefocusColor(I)V
    .locals 0

    .line 85
    iput p1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 109
    sget-object v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt:[I

    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt_zm_edtNormalColor:I

    iget v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineNormalColor:I

    .line 112
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt_zm_edtDisableColor:I

    iget v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLineDisableColor:I

    .line 113
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMMaterialEdt_zm_edtFocusColor:I

    iget v2, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMMaterialEditText;->mLinefocusColor:I

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method
