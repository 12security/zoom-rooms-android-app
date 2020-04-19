.class public Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;
.super Ljava/lang/Object;
.source "ZRCComDeviceInfo.java"


# instance fields
.field private com_id:I

.field private friendly_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->com_id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->com_id:I

    .line 15
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->com_id:I

    .line 16
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->friendly_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCom_id()I
    .locals 1

    .line 20
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->com_id:I

    return v0
.end method

.method public getFriendly_name()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->friendly_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCom_id(I)V
    .locals 0

    .line 24
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->com_id:I

    return-void
.end method

.method public setFriendly_name(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->friendly_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCComDeviceInfo{com_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->com_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", friendly_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->friendly_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
