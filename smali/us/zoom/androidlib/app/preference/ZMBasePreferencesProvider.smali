.class public abstract Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;
.super Landroid/content/ContentProvider;
.source "ZMBasePreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;
    }
.end annotation


# static fields
.field public static AUTHORITIES_KEY:Ljava/lang/String; = "authorities_key"

.field public static AUTHORITIES_SPNAME:Ljava/lang/String; = "authorities_spname"

.field public static final BOOLEAN_CONTENT_URI_CODE:I = 0x69

.field public static COLUMNNAME:Ljava/lang/String; = "SPCOLUMNNAME"

.field public static final DELETE_CONTENT_URI_CODE:I = 0x6a

.field public static final FLOAT_CONTENT_URI_CODE:I = 0x68

.field public static final INTEGER_CONTENT_URI_CODE:I = 0x65

.field public static final LONG_CONTENT_URI_CODE:I = 0x66

.field public static final PUTS_CONTENT_URI_CODE:I = 0x6b

.field public static final STRING_CONTENT_URI_CODE:I = 0x64


# instance fields
.field private mBooleanPath:Ljava/lang/String;

.field private mDeletePath:Ljava/lang/String;

.field private mFloatPath:Ljava/lang/String;

.field private mIntegerPath:Ljava/lang/String;

.field private mLongPath:Ljava/lang/String;

.field private mPutsPath:Ljava/lang/String;

.field private mStringPath:Ljava/lang/String;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "string/*/*/"

    .line 41
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mStringPath:Ljava/lang/String;

    const-string v0, "integer/*/*/"

    .line 46
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mIntegerPath:Ljava/lang/String;

    const-string v0, "long/*/*/"

    .line 51
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mLongPath:Ljava/lang/String;

    const-string v0, "float/*/*/"

    .line 56
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mFloatPath:Ljava/lang/String;

    const-string v0, "boolean/*/*/"

    .line 61
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mBooleanPath:Ljava/lang/String;

    const-string v0, "delete/*/*/"

    .line 67
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mDeletePath:Ljava/lang/String;

    const-string v0, "puts"

    .line 73
    iput-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mPutsPath:Ljava/lang/String;

    return-void
.end method

.method private buildCursor(Landroid/content/Context;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;I)Landroid/database/Cursor;
    .locals 4

    .line 202
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getDefValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    move-object p1, v2

    goto/16 :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    .line 249
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 251
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v1, p2, v0}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_0

    .line 242
    :cond_1
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_0

    .line 229
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    :cond_3
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, p3, p2, v0, v1}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    if-nez v0, :cond_4

    .line 215
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 220
    :cond_5
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    if-nez v0, :cond_6

    .line 207
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 209
    :cond_6
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_7

    return-object v2

    :cond_7
    const/4 p2, 0x1

    .line 260
    new-array p3, p2, [Ljava/lang/String;

    sget-object v0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->COLUMNNAME:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 261
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 262
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 263
    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private delete(Landroid/content/Context;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;)V
    .locals 1

    .line 168
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 169
    invoke-virtual {p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getModel(Landroid/net/Uri;)Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;
    .locals 4

    const/4 v0, 0x0

    .line 275
    :try_start_0
    new-instance v1, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;

    invoke-direct {v1, p0, v0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;-><init>(Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$1;)V

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->setSpName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->setKey(Ljava/lang/String;)V

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 281
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->setDefValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private insert(Landroid/content/Context;Landroid/content/ContentValues;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;)V
    .locals 3

    .line 181
    invoke-virtual {p3}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->getSpName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lus/zoom/androidlib/app/preference/ZMPreferences;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 183
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 187
    :cond_0
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 189
    :cond_1
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 191
    :cond_2
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 194
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 197
    :cond_5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getModel(Landroid/net/Uri;)Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 140
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 p3, 0x64

    if-eq p1, p3, :cond_1

    const/16 p3, 0x65

    if-eq p1, p3, :cond_1

    const/16 p3, 0x66

    if-eq p1, p3, :cond_1

    const/16 p3, 0x68

    if-eq p1, p3, :cond_1

    const/16 p3, 0x69

    if-ne p1, p3, :cond_2

    .line 143
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->delete(Landroid/content/Context;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getAuthorities()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getModel(Landroid/net/Uri;)Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->insert(Landroid/content/Context;Landroid/content/ContentValues;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;)V

    :cond_2
    return-object p1
.end method

.method public onCreate()Z
    .locals 5

    .line 82
    invoke-virtual {p0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getAuthorities()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->AUTHORITIES_SPNAME:Ljava/lang/String;

    sget-object v3, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->AUTHORITIES_KEY:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lus/zoom/androidlib/app/preference/ZMPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 88
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mStringPath:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mStringPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mIntegerPath:Ljava/lang/String;

    const/16 v3, 0x65

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mIntegerPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mLongPath:Ljava/lang/String;

    const/16 v3, 0x66

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mLongPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mFloatPath:Ljava/lang/String;

    const/16 v3, 0x68

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mFloatPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mBooleanPath:Ljava/lang/String;

    const/16 v3, 0x69

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mBooleanPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mDeletePath:Ljava/lang/String;

    const/16 v3, 0x6a

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    iget-object v1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mPutsPath:Ljava/lang/String;

    const/16 v3, 0x6b

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getModel(Landroid/net/Uri;)Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    .line 115
    invoke-virtual {p0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->buildCursor(Landroid/content/Context;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;I)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getModel(Landroid/net/Uri;)Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 153
    :cond_0
    iget-object p4, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 p4, 0x64

    if-eq p1, p4, :cond_1

    const/16 p4, 0x65

    if-eq p1, p4, :cond_1

    const/16 p4, 0x66

    if-eq p1, p4, :cond_1

    const/16 p4, 0x68

    if-eq p1, p4, :cond_1

    const/16 p4, 0x69

    if-ne p1, p4, :cond_2

    .line 156
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;->insert(Landroid/content/Context;Landroid/content/ContentValues;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
