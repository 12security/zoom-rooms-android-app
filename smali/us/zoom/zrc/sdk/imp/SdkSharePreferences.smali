.class public Lus/zoom/zrc/sdk/imp/SdkSharePreferences;
.super Ljava/lang/Object;
.source "SdkSharePreferences.java"

# interfaces
.implements Lus/zoom/zrcsdk/SharedPreferencesImp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;
    }
.end annotation


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 52
    iget-object p1, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;
    .locals 2

    .line 72
    new-instance v0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;

    iget-object v1, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {v0, v1}, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
