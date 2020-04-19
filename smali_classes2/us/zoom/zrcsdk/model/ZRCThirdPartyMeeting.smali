.class public Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
.super Ljava/lang/Object;
.source "ZRCThirdPartyMeeting.java"


# instance fields
.field private dialNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCDialNumber;",
            ">;"
        }
    .end annotation
.end field

.field private h323Address:Ljava/lang/String;

.field private meetingNumber:Ljava/lang/String;

.field private serviceProvider:I

.field private sipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCDialNumber;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    .line 27
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCDialNumber;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    .line 33
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canShowMeetingNumber()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 103
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    .line 105
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    if-eq v2, v3, :cond_2

    return v1

    .line 106
    :cond_2
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 108
    :cond_4
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 110
    :cond_6
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 112
    :cond_8
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_9
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_b
    :goto_4
    return v1
.end method

.method public getDialNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCDialNumber;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getH323Address()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingNumber()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProvider()I
    .locals 1

    .line 59
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    return v0
.end method

.method public getSipAddress()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 117
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public isRoomSystemAddressEmpty()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDialNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCDialNumber;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    return-void
.end method

.method public setH323Address(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    return-void
.end method

.method public setMeetingNumber(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    return-void
.end method

.method public setServiceProvider(I)V
    .locals 0

    .line 63
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    return-void
.end method

.method public setSipAddress(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCThirdPartyMeeting{serviceProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->serviceProvider:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", meetingNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dialNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->dialNumbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sipAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->sipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", h323Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->h323Address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
