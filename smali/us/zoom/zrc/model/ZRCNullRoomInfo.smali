.class public Lus/zoom/zrc/model/ZRCNullRoomInfo;
.super Lus/zoom/zrcsdk/model/ZRCRoomInfo;
.source "ZRCNullRoomInfo.java"


# static fields
.field private static instance:Lus/zoom/zrc/model/ZRCNullRoomInfo;


# direct methods
.method private constructor <init>()V
    .locals 11

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v10, ""

    const/4 v1, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v10}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static get()Lus/zoom/zrc/model/ZRCNullRoomInfo;
    .locals 1

    .line 15
    sget-object v0, Lus/zoom/zrc/model/ZRCNullRoomInfo;->instance:Lus/zoom/zrc/model/ZRCNullRoomInfo;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lus/zoom/zrc/model/ZRCNullRoomInfo;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCNullRoomInfo;-><init>()V

    sput-object v0, Lus/zoom/zrc/model/ZRCNullRoomInfo;->instance:Lus/zoom/zrc/model/ZRCNullRoomInfo;

    .line 18
    :cond_0
    sget-object v0, Lus/zoom/zrc/model/ZRCNullRoomInfo;->instance:Lus/zoom/zrc/model/ZRCNullRoomInfo;

    return-object v0
.end method


# virtual methods
.method public getDisplayVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMainAccountEmail()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getMeetingNumber()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isAutoAnswerEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoAnswerOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ZRCNullRoomInfo"

    return-object v0
.end method
