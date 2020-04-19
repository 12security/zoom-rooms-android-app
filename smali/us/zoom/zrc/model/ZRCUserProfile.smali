.class public Lus/zoom/zrc/model/ZRCUserProfile;
.super Ljava/lang/Object;
.source "ZRCUserProfile.java"


# instance fields
.field private billingFreeTrialDays:I

.field private billingType:I

.field private firstName:Ljava/lang/String;

.field private roomName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    check-cast p1, Lus/zoom/zrc/model/ZRCUserProfile;

    .line 55
    iget v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lus/zoom/zrc/model/ZRCUserProfile;->billingType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingFreeTrialDays:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lus/zoom/zrc/model/ZRCUserProfile;->billingFreeTrialDays:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->firstName:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrc/model/ZRCUserProfile;->firstName:Ljava/lang/String;

    .line 57
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->roomName:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrc/model/ZRCUserProfile;->roomName:Ljava/lang/String;

    .line 58
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getBillingFreeTrialDays()I
    .locals 1

    .line 43
    iget v0, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingFreeTrialDays:I

    return v0
.end method

.method public getBillingType()I
    .locals 1

    .line 35
    iget v0, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingType:I

    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCUserProfile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method getRoomName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCUserProfile;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->firstName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->roomName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingFreeTrialDays:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method setBillingFreeTrialDays(I)V
    .locals 0

    .line 47
    iput p1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingFreeTrialDays:I

    return-void
.end method

.method setBillingType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->billingType:I

    return-void
.end method

.method setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->firstName:Ljava/lang/String;

    return-void
.end method

.method setRoomName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCUserProfile;->roomName:Ljava/lang/String;

    return-void
.end method
