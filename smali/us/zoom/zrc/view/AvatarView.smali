.class public Lus/zoom/zrc/view/AvatarView;
.super Landroid/widget/LinearLayout;
.source "AvatarView.java"


# instance fields
.field private mBgColorSeedString:Ljava/lang/String;

.field private mBorderColor:I

.field private mBorderSize:I

.field private mCornerRadiusRatio:F

.field private mImgAvatar:Landroid/widget/ImageView;

.field private mIsEmptyAvatar:Z

.field private mName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mBgColorSeedString:Ljava/lang/String;

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    .line 43
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/AvatarView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mBgColorSeedString:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/AvatarView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getEmptyAvatar()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 231
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->default_avatar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    new-instance v0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;

    iget-object v1, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    iget-object v2, p0, Lus/zoom/zrc/view/AvatarView;->mBgColorSeedString:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private hasRoundCorner()Z
    .locals 2

    .line 171
    iget v0, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/AvatarView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->inflateLayout()V

    .line 51
    sget v0, Lus/zoom/zrcbox/R$id;->imgAvator:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/AvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    .line 53
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->AvatarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget p2, Lus/zoom/zrcbox/R$styleable;->AvatarView_zm_cornerRadiusRatio:I

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    .line 55
    sget p2, Lus/zoom/zrcbox/R$styleable;->AvatarView_zm_avatarBorderColor:I

    iget v0, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    .line 59
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->getEmptyAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .line 90
    iget v0, p0, Lus/zoom/zrc/view/AvatarView;->userType:I

    return v0
.end method

.method protected inflateLayout()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->zm_avatar:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 99
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->hasRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lus/zoom/zrc/utils/RoundDrawable;

    if-eqz v1, :cond_0

    .line 102
    move-object v1, v0

    check-cast v1, Lus/zoom/zrc/utils/RoundDrawable;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrc/utils/RoundDrawable;->setClientSize(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setAvatar(I)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/AvatarView;->setAvatar(IZ)V

    return-void
.end method

.method public setAvatar(IZ)V
    .locals 12

    .line 204
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->hasRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    new-instance v11, Lus/zoom/zrc/utils/RoundDrawable;

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    iget v4, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    const/4 v5, 0x1

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getHeight()I

    move-result v7

    iget v8, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    iget-object v10, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    move-object v1, v11

    move v9, p2

    invoke-direct/range {v1 .. v10}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIIIZLjava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    return-void
.end method

.method public setAvatar(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 214
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->hasRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    new-instance v9, Lus/zoom/zrc/utils/RoundDrawable;

    iget v3, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    iget v4, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    const/4 v5, 0x1

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getHeight()I

    move-result v7

    iget v8, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIII)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    goto :goto_2

    .line 221
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->hasRoundCorner()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 222
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    new-instance v8, Lus/zoom/zrc/utils/RoundDrawable;

    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->getEmptyAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    iget v3, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    const/4 v4, 0x1

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getHeight()I

    move-result v6

    iget v7, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIII)V

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->getEmptyAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    :goto_2
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 177
    new-instance v3, Lus/zoom/zrc/utils/LazyLoadDrawable;

    invoke-direct {v3, p1}, Lus/zoom/zrc/utils/LazyLoadDrawable;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Lus/zoom/zrc/utils/LazyLoadDrawable;->isValidDrawable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->hasRoundCorner()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    new-instance v10, Lus/zoom/zrc/utils/RoundDrawable;

    iget v4, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    iget v5, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    const/4 v6, 0x1

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getHeight()I

    move-result v8

    iget v9, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIII)V

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :goto_0
    iput-boolean v1, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_3

    .line 190
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->hasRoundCorner()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    new-instance v9, Lus/zoom/zrc/utils/RoundDrawable;

    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->getEmptyAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    iget v4, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    const/4 v5, 0x1

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getHeight()I

    move-result v7

    iget v8, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIII)V

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->getEmptyAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :goto_1
    iput-boolean v0, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    :cond_3
    return-void
.end method

.method public setBgColorSeedString(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mBgColorSeedString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 158
    iput p1, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    .line 160
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 161
    instance-of v0, p1, Lus/zoom/zrc/utils/RoundDrawable;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lus/zoom/zrc/utils/RoundDrawable;

    iget v0, p0, Lus/zoom/zrc/view/AvatarView;->mBorderColor:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/utils/RoundDrawable;->setBorderColor(I)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setBorderColorId(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/AvatarView;->setBorderColor(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/AvatarView;->setBorderColor(I)V

    :goto_0
    return-void
.end method

.method public setBorderSize(I)V
    .locals 2

    .line 67
    iput p1, p0, Lus/zoom/zrc/view/AvatarView;->mBorderSize:I

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    instance-of v1, v0, Lus/zoom/zrc/utils/RoundDrawable;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Lus/zoom/zrc/utils/RoundDrawable;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/utils/RoundDrawable;->setBorderSize(I)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCornerRadiusRatio(F)V
    .locals 0

    .line 142
    iput p1, p0, Lus/zoom/zrc/view/AvatarView;->mCornerRadiusRatio:F

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/view/AvatarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/AvatarView;->setName(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    .line 123
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mBgColorSeedString:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    iput-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mBgColorSeedString:Ljava/lang/String;

    .line 126
    :cond_1
    iget-boolean p1, p0, Lus/zoom/zrc/view/AvatarView;->mIsEmptyAvatar:Z

    if-eqz p1, :cond_2

    .line 127
    invoke-direct {p0}, Lus/zoom/zrc/view/AvatarView;->getEmptyAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/AvatarView;->mName:Ljava/lang/String;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 131
    iget-object p2, p0, Lus/zoom/zrc/view/AvatarView;->mImgAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lus/zoom/zrc/view/AvatarView;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lus/zoom/zrc/view/AvatarView;->userType:I

    return-void
.end method
