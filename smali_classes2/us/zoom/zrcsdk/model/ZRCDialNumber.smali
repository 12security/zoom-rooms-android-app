.class public Lus/zoom/zrcsdk/model/ZRCDialNumber;
.super Ljava/lang/Object;
.source "ZRCDialNumber.java"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 35
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCDialNumber;

    .line 37
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_0
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCDialNumber{countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCDialNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
