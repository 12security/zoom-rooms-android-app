.class public Lus/zoom/androidlib/widget/ZMSettingsCategory;
.super Landroid/widget/LinearLayout;
.source "ZMSettingsCategory.java"


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

.field private mResDrawableSettingsItemSelector:I

.field private mTopDividerHeight:I

.field private mbShowBottomDivider:Z

.field private mbShowCenterDivider:Z

.field private mbShowTopDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    .line 18
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    .line 25
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    .line 27
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    .line 28
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    .line 29
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    .line 31
    iput v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    .line 33
    sget v0, Lus/zoom/androidlib/R$drawable;->zm_setting_option_item_no_line:I

    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    .line 37
    invoke-direct {p0, p1, v1, v2}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    .line 18
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    .line 25
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    .line 27
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    .line 28
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    .line 29
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    .line 31
    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    .line 33
    sget v0, Lus/zoom/androidlib/R$drawable;->zm_setting_option_item_no_line:I

    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    .line 42
    invoke-direct {p0, p1, p2, v1}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    .line 18
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    .line 25
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    .line 27
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    .line 28
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    .line 29
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    .line 31
    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    .line 33
    sget v0, Lus/zoom/androidlib/R$drawable;->zm_setting_option_item_no_line:I

    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawBottomDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 346
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawCenterDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 339
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawTopDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 332
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

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

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 58
    sget-object v2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory:[I

    sget v3, Lus/zoom/androidlib/R$attr;->zm_settingsCategoryAppearance:I

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 62
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showTopDivider:I

    iget-boolean v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 63
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showBottomDivider:I

    iget-boolean v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    .line 64
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showCenterDivider:I

    iget-boolean v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    .line 65
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsItemSelector:I

    iget v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    .line 66
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_topDivider:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 67
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_centerDivider:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_bottomDivider:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_seetingsItemMinHeight:I

    iget v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    .line 71
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    .line 73
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    iget v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    .line 77
    :cond_1
    sget v3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_dividerHeight:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    if-lez p3, :cond_7

    .line 84
    sget-object v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 86
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showTopDivider:I

    iget-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 87
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showBottomDivider:I

    iget-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    .line 88
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showCenterDivider:I

    iget-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    .line 89
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsItemSelector:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    .line 90
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_seetingsItemMinHeight:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    .line 92
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    .line 94
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 95
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    .line 98
    :cond_3
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_dividerHeight:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 100
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_topDivider:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 102
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 104
    :cond_4
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_centerDivider:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 106
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 108
    :cond_5
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_bottomDivider:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 110
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 112
    :cond_6
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    if-eqz p2, :cond_c

    .line 117
    sget-object p3, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 119
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showTopDivider:I

    iget-boolean p3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 120
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showBottomDivider:I

    iget-boolean p3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    .line 121
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_showCenterDivider:I

    iget-boolean p3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    .line 122
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsItemSelector:I

    iget p3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    .line 123
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_seetingsItemMinHeight:I

    iget p3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    .line 125
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 126
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    .line 127
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_settingsCategoryBackground:I

    iget p3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    .line 131
    :cond_8
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_dividerHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 133
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_topDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 135
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 137
    :cond_9
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_centerDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 139
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_a
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSettingsCategory_zm_bottomDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 143
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    :cond_c
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_d

    .line 149
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/androidlib/R$drawable;->zm_settings_top_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    .line 152
    :cond_d
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_e

    .line 153
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/androidlib/R$drawable;->zm_settings_center_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    .line 156
    :cond_e
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_f

    .line 157
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/androidlib/R$drawable;->zm_settings_bottom_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    :cond_f
    if-nez v0, :cond_10

    .line 161
    iput-boolean v4, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    .line 162
    iput-boolean v4, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    .line 163
    iput-boolean v4, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    goto :goto_0

    :cond_10
    if-lez v0, :cond_11

    .line 165
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    .line 166
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    .line 167
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    goto :goto_0

    .line 169
    :cond_11
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_12

    .line 170
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    .line 173
    :cond_12
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_13

    .line 174
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    .line 177
    :cond_13
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    .line 178
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    .line 182
    :cond_14
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 184
    iget p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_15

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_15

    .line 185
    iput p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    .line 187
    :cond_15
    iget p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    if-ge p1, p2, :cond_16

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    .line 188
    iput p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    .line 190
    :cond_16
    iget p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    if-ge p1, p2, :cond_17

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    .line 191
    iput p2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    .line 195
    :cond_17
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mHasBackground:Z

    if-eqz p1, :cond_19

    .line 196
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_18

    .line 197
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 199
    :cond_18
    iget p1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->setBackgroundColor(I)V

    .line 201
    :goto_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->setPadding(IIII)V

    .line 204
    :cond_19
    invoke-virtual {p0, v4}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 284
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_3

    .line 288
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 289
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 294
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    .line 296
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v10, v12, v2

    if-ne v3, v4, :cond_0

    .line 298
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    if-eqz v2, :cond_0

    move-object v7, p0

    move-object v8, p1

    .line 299
    invoke-direct/range {v7 .. v12}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->drawTopDivider(Landroid/graphics/Canvas;IIII)V

    goto :goto_1

    :cond_0
    if-le v3, v4, :cond_1

    .line 300
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v2, :cond_1

    move-object v7, p0

    move-object v8, p1

    .line 301
    invoke-direct/range {v7 .. v12}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->drawCenterDivider(Landroid/graphics/Canvas;IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 313
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    .line 314
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    .line 315
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v8, v10, v5

    if-ne v3, v4, :cond_4

    .line 317
    iget-boolean v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    if-eqz v5, :cond_4

    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v9, v11

    .line 318
    invoke-direct/range {v5 .. v10}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->drawTopDivider(Landroid/graphics/Canvas;IIII)V

    goto :goto_2

    :cond_4
    if-le v3, v4, :cond_5

    .line 319
    iget-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v3, :cond_5

    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v9, v11

    .line 320
    invoke-direct/range {v5 .. v10}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->drawCenterDivider(Landroid/graphics/Canvas;IIII)V

    .line 323
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    if-eqz v3, :cond_6

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 325
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v10, v8, v0

    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v9, v11

    .line 326
    invoke-direct/range {v5 .. v10}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->drawBottomDivider(Landroid/graphics/Canvas;IIII)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 212
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 216
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/ZMSettingsCategory;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 221
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 224
    iget v11, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v4, v5, :cond_0

    .line 229
    iget-boolean v8, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 230
    iget v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_0
    if-le v4, v5, :cond_1

    .line 231
    iget-boolean v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 232
    iget v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 234
    :cond_1
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    :goto_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget v5, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v3, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_8

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 248
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 251
    iget v8, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mResDrawableSettingsItemSelector:I

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    invoke-virtual {v3, v0, v2, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 254
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v4, v5, :cond_5

    .line 256
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowTopDivider:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 257
    iget v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mTopDividerHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    if-le v4, v5, :cond_6

    .line 258
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowCenterDivider:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableCenterDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 259
    iget v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mCenterDividerHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 261
    :cond_6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 264
    :goto_2
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mbShowBottomDivider:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mDrawableBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 265
    iget v1, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mBottomDividerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 267
    :cond_7
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 270
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget v0, p0, Lus/zoom/androidlib/widget/ZMSettingsCategory;->mMinItemHeight:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 274
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
