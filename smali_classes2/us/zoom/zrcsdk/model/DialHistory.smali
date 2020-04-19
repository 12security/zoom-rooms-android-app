.class public Lus/zoom/zrcsdk/model/DialHistory;
.super Ljava/lang/Object;
.source "DialHistory.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lus/zoom/zrcsdk/model/ICallHistoryItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/DialHistory;",
        ">;",
        "Lus/zoom/zrcsdk/model/ICallHistoryItem;"
    }
.end annotation


# instance fields
.field private dialTime:J

.field private number:Ljava/lang/String;


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
    check-cast p1, Lus/zoom/zrcsdk/model/DialHistory;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/DialHistory;->compareTo(Lus/zoom/zrcsdk/model/DialHistory;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/DialHistory;)I
    .locals 4

    .line 19
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/DialHistory;->dialTime:J

    iget-wide v2, p1, Lus/zoom/zrcsdk/model/DialHistory;->dialTime:J

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

.method public getDialTime()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/DialHistory;->dialTime:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/zrcsdk/model/DialHistory;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/DialHistory;->dialTime:J

    return-wide v0
.end method

.method public setDialTime(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/DialHistory;->dialTime:J

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lus/zoom/zrcsdk/model/DialHistory;->number:Ljava/lang/String;

    return-void
.end method
