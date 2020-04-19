.class public Lus/zoom/zrcsdk/model/SipDialHistory;
.super Ljava/lang/Object;
.source "SipDialHistory.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lus/zoom/zrcsdk/model/ICallHistoryItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/SipDialHistory;",
        ">;",
        "Lus/zoom/zrcsdk/model/ICallHistoryItem;"
    }
.end annotation


# instance fields
.field private call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field private time:J


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
    check-cast p1, Lus/zoom/zrcsdk/model/SipDialHistory;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/SipDialHistory;->compareTo(Lus/zoom/zrcsdk/model/SipDialHistory;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/SipDialHistory;)I
    .locals 4

    .line 53
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->time:J

    iget-wide v2, p1, Lus/zoom/zrcsdk/model/SipDialHistory;->time:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 31
    instance-of v0, p1, Lus/zoom/zrcsdk/model/SipDialHistory;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 32
    check-cast p1, Lus/zoom/zrcsdk/model/SipDialHistory;

    .line 33
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/SipDialHistory;->getCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v2

    .line 36
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 38
    :cond_1
    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    return v1

    .line 40
    :cond_2
    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 41
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method public getCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 1

    .line 8
    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->time:J

    return-wide v0
.end method

.method public setCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/SipDialHistory;->time:J

    return-void
.end method
