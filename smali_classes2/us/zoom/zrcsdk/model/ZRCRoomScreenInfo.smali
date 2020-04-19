.class public Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;
.super Ljava/lang/Object;
.source "ZRCRoomScreenInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private currentScreen:I

.field private quantityOfCecAdapterAttachedScreens:I

.field private quantityOfScreens:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    .line 15
    iput p2, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    .line 16
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 56
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 60
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    iget v3, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    .line 24
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 30
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    return v0
.end method

.method public getQuantityOfCecAdapterAttachedScreens()I
    .locals 1

    .line 46
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    return v0
.end method

.method public getQuantityOfScreens()I
    .locals 1

    .line 38
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    return v0
.end method

.method public setCurrentScreen(I)V
    .locals 0

    .line 34
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    return-void
.end method

.method public setQuantityOfCecAdapterAttachedScreens(I)V
    .locals 0

    .line 50
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    return-void
.end method

.method public setQuantityOfScreens(I)V
    .locals 0

    .line 42
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->currentScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quantityOfScreens:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfScreens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quantityOfCecAdapterAttachedScreens:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->quantityOfCecAdapterAttachedScreens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
