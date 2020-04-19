.class Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;
.super Ljava/lang/Object;
.source "ZMBasePreferencesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model"
.end annotation


# instance fields
.field private defValue:Ljava/lang/Object;

.field private key:Ljava/lang/String;

.field private spName:Ljava/lang/String;

.field final synthetic this$0:Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;


# direct methods
.method private constructor <init>(Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->this$0:Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$1;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;-><init>(Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider;)V

    return-void
.end method


# virtual methods
.method public getDefValue()Ljava/lang/Object;
    .locals 1

    .line 313
    iget-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->defValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->spName:Ljava/lang/String;

    return-object v0
.end method

.method public setDefValue(Ljava/lang/Object;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->defValue:Ljava/lang/Object;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->key:Ljava/lang/String;

    return-void
.end method

.method public setSpName(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lus/zoom/androidlib/app/preference/ZMBasePreferencesProvider$Model;->spName:Ljava/lang/String;

    return-void
.end method
