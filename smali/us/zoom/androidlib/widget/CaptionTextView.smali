.class public Lus/zoom/androidlib/widget/CaptionTextView;
.super Landroid/widget/TextView;
.source "CaptionTextView.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgRect:Landroid/graphics/RectF;

.field private mShadowRadius:I

.field private mTwoDpInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initCaptionInfo()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/CaptionUtil;->getCaptionFontScale(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 81
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextSize(F)V

    .line 83
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/CaptionUtil;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/CaptionTextView;->setLocaleV17(Ljava/util/Locale;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/CaptionUtil;->getCaptionStyle(Landroid/content/Context;)Lus/zoom/androidlib/util/CaptionStyleCompat;

    move-result-object v0

    .line 89
    iget-object v1, v0, Lus/zoom/androidlib/util/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, v0, Lus/zoom/androidlib/util/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/CaptionTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    :cond_1
    iget v0, v0, Lus/zoom/androidlib/util/CaptionStyleCompat;->foregroundColor:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextColor(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/high16 v0, 0x40000000    # 2.0f

    .line 59
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mTwoDpInPx:I

    .line 61
    iget p1, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mTwoDpInPx:I

    iput p1, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mShadowRadius:I

    .line 63
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x41800000    # 16.0f

    .line 64
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextSize(F)V

    const/high16 p1, -0x1000000

    .line 65
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->setBackgroundColor(I)V

    const/4 p1, -0x1

    .line 66
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextColor(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->initCaptionInfo()V

    :goto_0
    return-void
.end method

.method private refresh()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->initCaptionInfo()V

    return-void
.end method

.method private setLocaleV17(Ljava/util/Locale;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 111
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/CaptionUtil;->getCaptionStyle(Landroid/content/Context;)Lus/zoom/androidlib/util/CaptionStyleCompat;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 121
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget v3, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->foregroundColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 124
    invoke-virtual {p0, v4, v4, v4, v3}, Lus/zoom/androidlib/widget/CaptionTextView;->setShadowLayer(FFFI)V

    .line 126
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_1

    .line 127
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgPaint:Landroid/graphics/Paint;

    .line 129
    :cond_1
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgPaint:Landroid/graphics/Paint;

    iget v6, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->backgroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgRect:Landroid/graphics/RectF;

    if-nez v5, :cond_2

    .line 134
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgRect:Landroid/graphics/RectF;

    .line 137
    :cond_2
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgRect:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->left:F

    .line 138
    iput v4, v5, Landroid/graphics/RectF;->top:F

    .line 139
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v5, Landroid/graphics/RectF;->right:F

    .line 140
    iget-object v4, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 141
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 142
    iget-object v5, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgRect:Landroid/graphics/RectF;

    int-to-float v4, v4

    iget-object v7, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 144
    iget v4, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->edgeType:I

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v4, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 168
    :pswitch_0
    iget v0, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->edgeType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 169
    iget v0, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mShadowRadius:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mShadowRadius:I

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 170
    iget v2, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mShadowRadius:I

    int-to-float v2, v2

    iget v1, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->edgeColor:I

    invoke-virtual {p0, v2, v0, v0, v1}, Lus/zoom/androidlib/widget/CaptionTextView;->setShadowLayer(FFFI)V

    .line 171
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 160
    :pswitch_1
    iget v0, p0, Lus/zoom/androidlib/widget/CaptionTextView;->mShadowRadius:I

    int-to-float v2, v0

    int-to-float v0, v0

    .line 161
    iget v1, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->edgeColor:I

    invoke-virtual {p0, v0, v2, v2, v1}, Lus/zoom/androidlib/widget/CaptionTextView;->setShadowLayer(FFFI)V

    .line 162
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 146
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 148
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    .line 149
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 150
    iget v1, v1, Lus/zoom/androidlib/util/CaptionStyleCompat;->edgeColor:I

    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextColor(I)V

    .line 151
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 153
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/CaptionTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 155
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 106
    invoke-direct {p0}, Lus/zoom/androidlib/widget/CaptionTextView;->refresh()V

    return-void
.end method
