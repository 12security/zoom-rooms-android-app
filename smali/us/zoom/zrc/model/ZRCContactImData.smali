.class public Lus/zoom/zrc/model/ZRCContactImData;
.super Ljava/lang/Object;
.source "ZRCContactImData.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCContactImData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCContactImData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCContactImData;->data:Ljava/util/List;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCContactImData;->key:Ljava/lang/String;

    return-void
.end method
