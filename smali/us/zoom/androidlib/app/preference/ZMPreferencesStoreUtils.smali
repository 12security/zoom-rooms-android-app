.class public Lus/zoom/androidlib/app/preference/ZMPreferencesStoreUtils;
.super Ljava/lang/Object;
.source "ZMPreferencesStoreUtils.java"


# static fields
.field public static final PREFERENCE_PROVIDER_DEFAULT_SP_NAME:Ljava/lang/String; = "PREFERENCE_PROVIDER_DEFAULT_SP_NAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesStoreUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 198
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)F
    .locals 0

    if-eqz p4, :cond_0

    .line 161
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 148
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesStoreUtils;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 0

    if-eqz p4, :cond_0

    .line 87
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, -0x1

    .line 74
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesStoreUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)J
    .locals 0

    if-eqz p5, :cond_0

    .line 124
    invoke-static {p0, p1, p2, p3, p4}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 111
    invoke-static/range {v0 .. v5}, Lus/zoom/androidlib/app/preference/ZMPreferencesStoreUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesStoreUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 173
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 136
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 0

    if-eqz p5, :cond_0

    .line 99
    invoke-static {p0, p1, p2, p3, p4}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lus/zoom/androidlib/app/preference/ZMPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 21
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 25
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/app/preference/ZMPreferencesProvider;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/app/preference/ZMPreferences;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method
