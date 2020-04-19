.class public Lus/zoom/zrcsdk/model/ZRCContact;
.super Ljava/lang/Object;
.source "ZRCContact.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/ZRCContact;",
        ">;"
    }
.end annotation


# static fields
.field public static final LAST_GROUP_CATEGORY_CHAR:C = '\u7fff'


# instance fields
.field private accountStatus:I

.field private avatarUrl:Ljava/lang/String;

.field private cloudPbxInfo:Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private isZoomPresence:Z

.field private isZoomRoomsGroup:Z

.field private jid:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private onDesktop:Z

.field private onMobile:Z

.field private phoneNumber:Ljava/lang/String;

.field private presence:I

.field private presence_status:I

.field private screenName:Ljava/lang/String;

.field private sipPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/ZRCContact;->compareTo(Lus/zoom/zrcsdk/model/ZRCContact;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/ZRCContact;)I
    .locals 2

    .line 164
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 168
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 172
    :cond_1
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 175
    :cond_2
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 178
    :cond_3
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 179
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 181
    :cond_4
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAccountStatus()I
    .locals 1

    .line 133
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->accountStatus:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudPbxInfo()Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;
    .locals 1

    .line 129
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->cloudPbxInfo:Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .line 72
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence:I

    return v0
.end method

.method public getPresence_status()I
    .locals 1

    .line 117
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence_status:I

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSipPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->sipPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isOnDesktop()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onDesktop:Z

    return v0
.end method

.method public isOnMobile()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onMobile:Z

    return v0
.end method

.method public isZoomPresence()Z
    .locals 2

    .line 110
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    if-nez v0, :cond_0

    const-string v0, "ZoomPresence"

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomPresence:Z

    .line 113
    :cond_1
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomPresence:Z

    return v0
.end method

.method public isZoomRoomsGroup()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    return v0
.end method

.method public setAccountStatus(I)V
    .locals 0

    .line 137
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->accountStatus:I

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->email:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->jid:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setOnDesktop(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onDesktop:Z

    return-void
.end method

.method public setOnMobile(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onMobile:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPresence(I)V
    .locals 0

    .line 75
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence:I

    return-void
.end method

.method public setPresence_status(I)V
    .locals 0

    .line 121
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence_status:I

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    return-void
.end method

.method public setZoomRoomsGroup(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCContact{jid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->jid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firstName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCContact;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCContact;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCContact;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCContact;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatarUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCContact;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", presence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presence_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onDesktop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onDesktop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onMobile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isZoomPresence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomPresence:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isZoomRoomsGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sipPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->sipPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cloudPbxInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->cloudPbxInfo:Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accountStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->accountStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 1

    .line 141
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->jid:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->jid:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->screenName:Ljava/lang/String;

    .line 143
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->firstName:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->firstName:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->lastName:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->lastName:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->phoneNumber:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->email:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->email:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->avatarUrl:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->avatarUrl:Ljava/lang/String;

    .line 148
    iget v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->presence:I

    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence:I

    .line 149
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->onDesktop:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onDesktop:Z

    .line 150
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->onMobile:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->onMobile:Z

    .line 151
    iget v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->presence_status:I

    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->presence_status:I

    .line 152
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->groupId:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupId:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->groupName:Ljava/lang/String;

    .line 154
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomPresence:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomPresence:Z

    .line 155
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup:Z

    .line 156
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->sipPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->sipPhoneNumber:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;->cloudPbxInfo:Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCContact;->cloudPbxInfo:Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

    .line 158
    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCContact;->accountStatus:I

    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCContact;->accountStatus:I

    return-void
.end method
