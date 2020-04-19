.class public Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;
.super Ljava/lang/Object;
.source "ZRCUserChangedEntity.java"


# instance fields
.field private event:I

.field private participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field private userId:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->event:I

    .line 21
    iput p2, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userId:I

    .line 22
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-void
.end method


# virtual methods
.method public getEvent()I
    .locals 1

    .line 27
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->event:I

    return v0
.end method

.method public getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 1

    .line 51
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 35
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(I)V
    .locals 0

    .line 31
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->event:I

    return-void
.end method

.method public setParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCUserChangedEntity{event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->event:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", participant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
