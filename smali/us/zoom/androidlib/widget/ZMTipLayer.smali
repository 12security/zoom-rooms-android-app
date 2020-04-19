.class public Lus/zoom/androidlib/widget/ZMTipLayer;
.super Landroid/widget/FrameLayout;
.source "ZMTipLayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->initView()V

    return-void
.end method

.method private getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 274
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 275
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 276
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method private getPreferredRectForNonPositionedTipFromBottom(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;
    .locals 8

    .line 177
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 178
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 179
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildCount()I

    move-result v1

    .line 182
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMTipLayer;->isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 184
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v4, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    instance-of v6, v4, Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lus/zoom/androidlib/widget/ZMTip;

    invoke-direct {p0, v6}, Lus/zoom/androidlib/widget/ZMTipLayer;->isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lus/zoom/androidlib/widget/ZMTip;->getOverlyingType()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr p3, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    if-gez p3, :cond_4

    .line 202
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result p3

    .line 203
    :cond_4
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 204
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p3, p1

    .line 206
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p1, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getPreferredRectForNonPositionedTipFromCenter(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;
    .locals 8

    mul-int/lit8 p3, p3, 0x2

    .line 209
    div-int/lit8 p3, p3, 0x3

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 210
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildCount()I

    move-result v1

    .line 214
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMTipLayer;->isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move v2, p3

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p3, v1, :cond_3

    .line 216
    invoke-virtual {p0, p3}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    instance-of v6, v5, Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lus/zoom/androidlib/widget/ZMTip;

    invoke-direct {p0, v6}, Lus/zoom/androidlib/widget/ZMTipLayer;->isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lus/zoom/androidlib/widget/ZMTip;->getOverlyingType()I

    move-result v6

    if-nez v6, :cond_2

    .line 226
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    sub-int/2addr v2, v5

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    move p3, v2

    .line 232
    :cond_4
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    if-gez p3, :cond_5

    const/4 p3, 0x0

    .line 235
    :cond_5
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 236
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p3

    .line 238
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getPreferredRectForNonPositionedTipFromTop(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;
    .locals 9

    .line 242
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    .line 243
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildCount()I

    move-result v0

    .line 246
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMTipLayer;->isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 248
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    goto :goto_1

    .line 257
    :cond_1
    instance-of v7, v6, Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lus/zoom/androidlib/widget/ZMTip;

    invoke-direct {p0, v7}, Lus/zoom/androidlib/widget/ZMTipLayer;->isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lus/zoom/androidlib/widget/ZMTip;->getOverlyingType()I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 258
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    add-int/2addr v4, v6

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 264
    :cond_4
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v2

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 267
    :goto_2
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    .line 268
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v3

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, v3, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private initView()V
    .locals 0

    return-void
.end method

.method private isNonPositionedTip(Lus/zoom/androidlib/widget/ZMTip;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getAnchor()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->isPreferredPositionSetted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getLayoutGravity()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private layoutTip(Lus/zoom/androidlib/widget/ZMTip;II)V
    .locals 7

    .line 62
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getAnchor()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 64
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getArrowDirection()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 89
    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    if-le p3, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    .line 93
    :goto_0
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p2, p3

    if-gez p3, :cond_1

    sub-int/2addr p2, p3

    goto :goto_1

    :cond_1
    move v1, p3

    .line 99
    :goto_1
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getArrowDirection()I

    move-result p3

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 100
    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getDistanceToAnchor()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_2

    .line 102
    :cond_2
    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getDistanceToAnchor()I

    move-result v0

    sub-int/2addr p3, v0

    .line 104
    :goto_2
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    goto :goto_5

    .line 70
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    if-le p2, p3, :cond_3

    move p2, p3

    .line 74
    :cond_3
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p2, p3

    if-gez p3, :cond_4

    sub-int/2addr p2, p3

    goto :goto_3

    :cond_4
    move v1, p3

    .line 80
    :goto_3
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getArrowDirection()I

    move-result p3

    if-nez p3, :cond_5

    .line 81
    iget p3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getDistanceToAnchor()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_4

    .line 83
    :cond_5
    iget p3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getDistanceToAnchor()I

    move-result v0

    sub-int/2addr p3, v0

    .line 85
    :goto_4
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p3

    move v5, v0

    move v0, p2

    move p2, v5

    move v6, v1

    move v1, p3

    move p3, v6

    .line 108
    :goto_5
    invoke-virtual {p1, v1, p3, p2, v0}, Lus/zoom/androidlib/widget/ZMTip;->layout(IIII)V

    goto/16 :goto_8

    .line 109
    :cond_6
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->isPreferredPositionSetted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getPreferredX()I

    move-result p2

    .line 111
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getPreferredY()I

    move-result p3

    .line 112
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 113
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    .line 114
    invoke-virtual {p1, p2, p3, v0, v1}, Lus/zoom/androidlib/widget/ZMTip;->layout(IIII)V

    goto/16 :goto_8

    .line 115
    :cond_7
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getLayoutGravity()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 116
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getMeasuredWidth()I

    move-result p2

    .line 117
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getMeasuredHeight()I

    move-result p3

    .line 118
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v2

    .line 120
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getLayoutGravityPadding()I

    move-result v3

    .line 123
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getLayoutGravity()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    const/4 p2, 0x0

    goto :goto_6

    :pswitch_2
    sub-int/2addr p2, v0

    .line 125
    div-int/lit8 v1, p2, 0x2

    sub-int/2addr p3, v3

    sub-int p2, p3, v2

    goto :goto_6

    :pswitch_3
    sub-int/2addr p2, v0

    .line 137
    div-int/lit8 v1, p2, 0x2

    move p2, v3

    goto :goto_6

    :pswitch_4
    sub-int/2addr p2, v3

    sub-int v1, p2, v0

    sub-int/2addr p3, v2

    .line 134
    div-int/lit8 p2, p3, 0x2

    goto :goto_6

    :pswitch_5
    sub-int/2addr p3, v2

    .line 130
    div-int/lit8 v1, p3, 0x2

    move p2, v1

    move v1, v3

    .line 145
    :goto_6
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, v1

    .line 146
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 147
    invoke-virtual {p1, v1, p2, p3, v0}, Lus/zoom/androidlib/widget/ZMTip;->layout(IIII)V

    goto :goto_8

    .line 150
    :cond_8
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getOverlyingType()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMTipLayer;->getPreferredRectForNonPositionedTipFromCenter(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_7

    .line 158
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMTipLayer;->getPreferredRectForNonPositionedTipFromTop(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_7

    .line 152
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMTipLayer;->getPreferredRectForNonPositionedTipFromBottom(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_7

    .line 155
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMTipLayer;->getPreferredRectForNonPositionedTipFromCenter(Lus/zoom/androidlib/widget/ZMTip;II)Landroid/graphics/Rect;

    move-result-object p2

    .line 165
    :goto_7
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, v0, v1, p2}, Lus/zoom/androidlib/widget/ZMTip;->layout(IIII)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private measureTip(Lus/zoom/androidlib/widget/ZMTip;II)V
    .locals 5

    .line 297
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getArrowDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    iget p3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 312
    :pswitch_1
    iget p2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 309
    :pswitch_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    goto :goto_0

    .line 304
    :pswitch_3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->isPreferredPositionSetted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getPreferredX()I

    move-result v0

    .line 322
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getPreferredY()I

    move-result v1

    sub-int/2addr p3, v1

    sub-int/2addr p2, v0

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTip;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 330
    invoke-virtual {p1, v2}, Lus/zoom/androidlib/widget/ZMTip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 333
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 334
    :goto_1
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    :cond_5
    const/high16 v2, -0x80000000

    .line 338
    :goto_3
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v1, -0x80000000

    .line 339
    :goto_4
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 340
    invoke-virtual {p1, p2, p3}, Lus/zoom/androidlib/widget/ZMTip;->measure(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismissAllTips()Z
    .locals 5

    .line 345
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 346
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 347
    instance-of v4, v3, Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v4, :cond_0

    .line 348
    check-cast v3, Lus/zoom/androidlib/widget/ZMTip;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMTip;->dismiss()V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 42
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 43
    instance-of p4, p3, Lus/zoom/androidlib/widget/ZMTip;

    if-eqz p4, :cond_0

    .line 44
    check-cast p3, Lus/zoom/androidlib/widget/ZMTip;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getHeight()I

    move-result p5

    invoke-direct {p0, p3, p4, p5}, Lus/zoom/androidlib/widget/ZMTipLayer;->layoutTip(Lus/zoom/androidlib/widget/ZMTip;II)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 282
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 284
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 285
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 287
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 289
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMTipLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 290
    instance-of v3, v2, Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v3, :cond_0

    .line 291
    check-cast v2, Lus/zoom/androidlib/widget/ZMTip;

    invoke-direct {p0, v2, p1, p2}, Lus/zoom/androidlib/widget/ZMTipLayer;->measureTip(Lus/zoom/androidlib/widget/ZMTip;II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
