.class public Lus/zoom/zrc/view/ZRCSettingsCategory;
.super Landroid/widget/LinearLayout;
.source "ZRCSettingsCategory.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundColor:I

.field private mBottomDividerHeight:I

.field private mCenterDividerHeight:I

.field private mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

.field private mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

.field private mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

.field private mHasBackground:Z

.field private mMinItemHeight:I

.field private mTopDividerHeight:I

.field private mbShowBottomDivider:Z

.field private mbShowCenterDivider:Z

.field private mbShowTopDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 16
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 23
    iput v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    .line 24
    iput-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    .line 26
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    .line 27
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    .line 28
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    .line 30
    iput v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    .line 34
    invoke-direct {p0, p1, v1, v2}, Lus/zoom/zrc/view/ZRCSettingsCategory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 16
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    .line 24
    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    .line 26
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    .line 27
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    .line 28
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    .line 30
    iput v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    .line 39
    invoke-direct {p0, p1, p2, v1}, Lus/zoom/zrc/view/ZRCSettingsCategory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 16
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    .line 24
    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    .line 26
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    .line 27
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    .line 28
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    .line 30
    iput v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/ZRCSettingsCategory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawBottomDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 338
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 340
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawCenterDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 331
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawTopDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 324
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 55
    sget-object v2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory:[I

    sget v3, Lus/zoom/androidlib/R$attr;->zm_settingsCategoryAppearance:I

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 59
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showTopDivider:I

    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 60
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showBottomDivider:I

    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    .line 61
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showCenterDivider:I

    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    .line 62
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_topDivider:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 63
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_centerDivider:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 64
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_bottomDivider:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 65
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_seetingsItemMinHeight:I

    iget v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    .line 67
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iput-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    .line 69
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    iget v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    .line 73
    :cond_1
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_dividerHeight:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    if-lez p3, :cond_7

    .line 80
    sget-object v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 82
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showTopDivider:I

    iget-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 83
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showBottomDivider:I

    iget-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    .line 84
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showCenterDivider:I

    iget-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    .line 85
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_seetingsItemMinHeight:I

    iget v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    .line 87
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    iput-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    .line 89
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    iget v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    .line 93
    :cond_3
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_dividerHeight:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 95
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_topDivider:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 97
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_4
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_centerDivider:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 101
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_5
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_bottomDivider:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 105
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_6
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    if-eqz p2, :cond_c

    .line 112
    sget-object p3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 114
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showTopDivider:I

    iget-boolean p3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 115
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showBottomDivider:I

    iget-boolean p3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    .line 116
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showCenterDivider:I

    iget-boolean p3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    .line 117
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_seetingsItemMinHeight:I

    iget p3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    .line 119
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 120
    iput-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    .line 121
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 122
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    iget p3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    .line 125
    :cond_8
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_dividerHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 127
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_topDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 129
    iput-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_9
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_centerDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 133
    iput-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_a
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_bottomDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 137
    iput-object p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 139
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    :cond_c
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_d

    .line 143
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/androidlib/R$drawable;->zm_settings_top_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 146
    :cond_d
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_e

    .line 147
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/androidlib/R$drawable;->zm_settings_center_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 150
    :cond_e
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_f

    .line 151
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/androidlib/R$drawable;->zm_settings_bottom_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    :cond_f
    if-nez v0, :cond_10

    .line 155
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    .line 156
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    .line 157
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    goto :goto_0

    :cond_10
    if-lez v0, :cond_11

    .line 159
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    .line 160
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    .line 161
    iput v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    goto :goto_0

    .line 163
    :cond_11
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_12

    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    .line 167
    :cond_12
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_13

    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    .line 171
    :cond_13
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    .line 172
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    .line 176
    :cond_14
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSettingsCategory;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 178
    iget p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_15

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_15

    .line 179
    iput p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    .line 181
    :cond_15
    iget p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    if-ge p1, p2, :cond_16

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    .line 182
    iput p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    .line 184
    :cond_16
    iget p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    if-ge p1, p2, :cond_17

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    .line 185
    iput p2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    .line 189
    :cond_17
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mHasBackground:Z

    if-eqz p1, :cond_19

    .line 190
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_18

    .line 191
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCSettingsCategory;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 193
    :cond_18
    iget p1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCSettingsCategory;->setBackgroundColor(I)V

    .line 195
    :goto_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lus/zoom/zrc/view/ZRCSettingsCategory;->setPadding(IIII)V

    .line 198
    :cond_19
    invoke-virtual {p0, v4}, Lus/zoom/zrc/view/ZRCSettingsCategory;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 272
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_3

    .line 280
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 281
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    .line 287
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    .line 288
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v10, v12, v2

    if-ne v3, v4, :cond_0

    .line 290
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    if-eqz v2, :cond_0

    move-object v7, p0

    move-object v8, p1

    .line 291
    invoke-direct/range {v7 .. v12}, Lus/zoom/zrc/view/ZRCSettingsCategory;->drawTopDivider(Landroid/graphics/Canvas;IIII)V

    goto :goto_1

    :cond_0
    if-le v3, v4, :cond_1

    .line 292
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v2, :cond_1

    move-object v7, p0

    move-object v8, p1

    .line 293
    invoke-direct/range {v7 .. v12}, Lus/zoom/zrc/view/ZRCSettingsCategory;->drawCenterDivider(Landroid/graphics/Canvas;IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    .line 306
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    .line 307
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v8, v10, v5

    if-ne v3, v4, :cond_4

    .line 309
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    if-eqz v5, :cond_4

    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v9, v11

    .line 310
    invoke-direct/range {v5 .. v10}, Lus/zoom/zrc/view/ZRCSettingsCategory;->drawTopDivider(Landroid/graphics/Canvas;IIII)V

    goto :goto_2

    :cond_4
    if-le v3, v4, :cond_5

    .line 311
    iget-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v3, :cond_5

    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v9, v11

    .line 312
    invoke-direct/range {v5 .. v10}, Lus/zoom/zrc/view/ZRCSettingsCategory;->drawCenterDivider(Landroid/graphics/Canvas;IIII)V

    .line 315
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    if-eqz v3, :cond_6

    .line 316
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 317
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v10, v8, v0

    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v9, v11

    .line 318
    invoke-direct/range {v5 .. v10}, Lus/zoom/zrc/view/ZRCSettingsCategory;->drawBottomDivider(Landroid/graphics/Canvas;IIII)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 206
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 210
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ZRCSettingsCategory;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 214
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 215
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 218
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v4, v5, :cond_0

    .line 222
    iget-boolean v8, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 223
    iget v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_0
    if-le v4, v5, :cond_1

    .line 224
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 225
    iget v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 227
    :cond_1
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 230
    :goto_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget v5, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v3, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_8

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 240
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 244
    invoke-virtual {v3, v0, v2, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v4, v5, :cond_5

    .line 248
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowTopDivider:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 249
    iget v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mTopDividerHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    if-le v4, v5, :cond_6

    .line 250
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 251
    iget v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mCenterDividerHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 253
    :cond_6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 256
    :goto_2
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mbShowBottomDivider:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 257
    iget v1, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mBottomDividerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 259
    :cond_7
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 262
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget v0, p0, Lus/zoom/zrc/view/ZRCSettingsCategory;->mMinItemHeight:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 266
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
