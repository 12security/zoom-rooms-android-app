.class public Lus/zoom/zrcsdk/model/ZRCRoomInfo;
.super Ljava/lang/Object;
.source "ZRCRoomInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private autoAnswerEnabled:Z

.field private autoAnswerOn:Z

.field private displayVersion:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private loginType:I

.field private mainAccountEmail:Ljava/lang/String;

.field private meetingNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private osAccountName:Ljava/lang/String;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    .line 22
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    .line 27
    iput-boolean p7, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    .line 28
    iput-boolean p8, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    .line 29
    iput-object p9, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    .line 30
    iput-object p10, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 12

    .line 121
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 125
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    iget-object v6, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    iget-object v7, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    iget-boolean v8, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    iget-boolean v9, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    iget-object v10, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    iget-object v11, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

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

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    .line 101
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    .line 104
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    .line 107
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    .line 109
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    .line 110
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDisplayVersion()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    .line 34
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    return v0
.end method

.method public getMainAccountEmail()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingNumber()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOsAccountName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAutoAnswerEnabled()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    return v0
.end method

.method public isAutoAnswerOn()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    return v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAutoAnswerEnabled(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    return-void
.end method

.method public setAutoAnswerOn(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    return-void
.end method

.method public setDisplayVersion(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    return-void
.end method

.method public setMainAccountEmail(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    return-void
.end method

.method public setMeetingNumber(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCRoomInfo{loginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->loginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", meetingNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mainAccountEmail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->mainAccountEmail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", autoAnswerEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", autoAnswerOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->autoAnswerOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", displayVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", osAccountName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->osAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", platform=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->platform:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
