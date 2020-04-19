.class public Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NameAbbrAvatarDrawable.java"


# static fields
.field private static final BG_COLORS_IDS:[I

.field private static final TAG:Ljava/lang/String; = "NameAbbrAvatarDrawable"


# instance fields
.field private mAlpha:I

.field private mColorBg:I

.field private mColorFg:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mNameAbbr:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 29
    new-array v0, v0, [I

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_6:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_7:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_8:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->BG_COLORS_IDS:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mAlpha:I

    const-string v1, "XX"

    .line 38
    iput-object v1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mNameAbbr:Ljava/lang/String;

    const v1, -0xb5b3b2

    .line 40
    iput v1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorBg:I

    .line 41
    iput v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFg:I

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iput p2, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFg:I

    .line 66
    iput p3, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorBg:I

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mNameAbbr:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mAlpha:I

    const-string v1, "XX"

    .line 38
    iput-object v1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mNameAbbr:Ljava/lang/String;

    const v1, -0xb5b3b2

    .line 40
    iput v1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorBg:I

    .line 41
    iput v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFg:I

    .line 48
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->getBackgroundColorBySeedString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorBg:I

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_fg:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFg:I

    .line 56
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->generateNameAbbr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mNameAbbr:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->init()V

    return-void
.end method

.method private generateNameAbbr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    sget v0, Lus/zoom/zrcbox/R$string;->zm_config_name_abbreviation_generator:I

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/ResourcesUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/util/INameAbbrGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 104
    new-instance p1, Lus/zoom/androidlib/util/DefaultNameAbbrGenerator;

    invoke-direct {p1}, Lus/zoom/androidlib/util/DefaultNameAbbrGenerator;-><init>()V

    .line 107
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lus/zoom/androidlib/util/INameAbbrGenerator;->getNameAbbreviation(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBackgroundColorBySeedString(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 81
    rem-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->BG_COLORS_IDS:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init()V
    .locals 2

    .line 73
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->typeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 113
    invoke-virtual {p0}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 116
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 120
    div-int/lit8 v4, v3, 0x2

    mul-int v4, v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    .line 122
    iget-object v5, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    iget-object v5, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFg:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    iget-object v5, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    iget-object v5, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mAlpha:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 126
    iget-object v5, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 128
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v5

    const/high16 v6, 0x40e00000    # 7.0f

    .line 130
    invoke-static {v5, v6}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 136
    :cond_0
    iget-object v6, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 137
    iget-object v6, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mNameAbbr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    sub-int v6, v3, v6

    .line 138
    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, -0x2

    if-gez v4, :cond_1

    .line 141
    iget-object v3, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_1
    if-lt v6, v5, :cond_0

    .line 146
    :goto_0
    iget v3, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorBg:I

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    iget-object v3, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 150
    iget-object v4, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mNameAbbr:Ljava/lang/String;

    add-int/2addr v1, v6

    int-to-float v1, v1

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v5, v3

    sub-float/2addr v0, v5

    add-float/2addr v2, v0

    iget-object v0, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 157
    iput p1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method
