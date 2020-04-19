.class public Lus/zoom/androidlib/util/CompatUtils;
.super Ljava/lang/Object;
.source "CompatUtils.java"


# static fields
.field public static final ARG_ISSTARTFOREGROUNDSERVICE:Ljava/lang/String; = "isStartForegroundService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalDefault()Ljava/util/Locale;
    .locals 1

    .line 31
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getStardardCharSetUTF8()Ljava/nio/charset/Charset;
    .locals 1

    .line 23
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastKLP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemAlertWindowType(I)I
    .locals 1

    .line 37
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7d2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d5

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 p0, 0x7f6

    return p0

    :cond_1
    return p0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;ZZ)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastO()Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    const-string p2, "isStartForegroundService"

    const/4 p3, 0x1

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const-string p2, "isStartForegroundService"

    const/4 p3, 0x0

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    return-void
.end method
