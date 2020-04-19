.class public Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;
.super Ljava/lang/Object;
.source "ZRCMeetingInfoCountryCode.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:J

.field private countryId:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->countryId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->name:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->code:J

    .line 22
    iput-object p5, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->number:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->display:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 68
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->countryId:Ljava/lang/String;

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCode()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->code:J

    return-wide v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->countryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->code:J

    return-void
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->countryId:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->display:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->number:Ljava/lang/String;

    return-void
.end method
