.class public Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;
.super Ljava/lang/Object;
.source "SdkSharePreferences.java"

# interfaces
.implements Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/sdk/imp/SdkSharePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKEditor"
.end annotation


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences$SDKEditor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
