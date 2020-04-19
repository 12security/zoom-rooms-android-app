.class public Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;
.super Ljava/lang/Object;
.source "ZRCTSPInfoItem.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;->key:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;->value:Ljava/lang/String;

    return-void
.end method
