.class public Lus/zoom/androidlib/util/ResourcesUtil;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/ResourcesUtil;->getBoolean(Landroid/content/res/Resources;IZ)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/res/Resources;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2
.end method

.method public static getBoolean(Landroid/view/View;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/ResourcesUtil;->getBoolean(Landroid/content/res/Resources;IZ)Z

    move-result p0

    return p0
.end method

.method public static getInteger(Landroid/content/Context;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/ResourcesUtil;->getInteger(Landroid/content/res/Resources;II)I

    move-result p0

    return p0
.end method

.method public static getInteger(Landroid/content/res/Resources;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2
.end method

.method public static getInteger(Landroid/view/View;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/ResourcesUtil;->getInteger(Landroid/content/res/Resources;II)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lus/zoom/androidlib/util/ResourcesUtil;->getString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static getString(Landroid/view/View;I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lus/zoom/androidlib/util/ResourcesUtil;->getString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
