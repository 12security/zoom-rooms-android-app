.class public Lus/zoom/androidlib/util/CaptionUtil;
.super Ljava/lang/Object;
.source "CaptionUtil.java"


# static fields
.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field public static final DEFAULT_TEXT_SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptionFontScale(Landroid/content/Context;)F
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->isCaptionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->getUserCaptionFontScaleV19(Landroid/content/Context;)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static getCaptionStyle(Landroid/content/Context;)Lus/zoom/androidlib/util/CaptionStyleCompat;
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->isCaptionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->getUserCaptionStyleV19(Landroid/content/Context;)Lus/zoom/androidlib/util/CaptionStyleCompat;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lus/zoom/androidlib/util/CaptionStyleCompat;->DEFAULT:Lus/zoom/androidlib/util/CaptionStyleCompat;

    return-object p0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->isCaptionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->getLocaleV19(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private static getLocaleV19(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const-string v0, "captioning"

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-nez p0, :cond_0

    .line 67
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private static getUserCaptionFontScaleV19(Landroid/content/Context;)F
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const-string v0, "captioning"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p0

    return p0
.end method

.method private static getUserCaptionStyleV19(Landroid/content/Context;)Lus/zoom/androidlib/util/CaptionStyleCompat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const-string v0, "captioning"

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-nez p0, :cond_0

    .line 78
    sget-object p0, Lus/zoom/androidlib/util/CaptionStyleCompat;->DEFAULT:Lus/zoom/androidlib/util/CaptionStyleCompat;

    return-object p0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    .line 80
    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lus/zoom/androidlib/util/CaptionStyleCompat;

    move-result-object p0

    return-object p0
.end method

.method public static isCaptionEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 33
    invoke-static {p0}, Lus/zoom/androidlib/util/CaptionUtil;->isCaptionEnabledV19(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isCaptionEnabledV19(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "captioning"

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-nez p0, :cond_1

    return v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p0

    return p0
.end method
