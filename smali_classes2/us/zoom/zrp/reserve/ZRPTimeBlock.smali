.class public Lus/zoom/zrp/reserve/ZRPTimeBlock;
.super Ljava/lang/Object;
.source "ZRPTimeBlock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DIVIDER_NOT_ASSIGNED:I = -0x3

.field public static final DIVIDER_ORIGINAL_END_LINE:I = -0x2

.field public static final DIVIDER_ORIGINAL_START_LINE:I = -0x1


# instance fields
.field private duration:I

.field private end:I

.field private lowerMeetingPosition:I

.field private start:I

.field private step:I

.field private stepDuration:I

.field private stepEnd:I

.field private stepEndRemainder:I

.field private stepStart:I

.field private stepStartRemainder:I

.field private upperMeetingPosition:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    .line 19
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->upperMeetingPosition:I

    .line 20
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->lowerMeetingPosition:I

    .line 27
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    .line 28
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    .line 29
    iput p3, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->step:I

    .line 31
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->calculate()V

    return-void
.end method

.method private calculate()V
    .locals 3

    .line 35
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    add-int/2addr v1, v0

    iput v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    .line 36
    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->step:I

    rem-int v2, v0, v1

    sub-int v2, v1, v2

    rem-int/2addr v2, v1

    iput v2, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStartRemainder:I

    .line 37
    iget v2, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    rem-int v1, v2, v1

    iput v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEndRemainder:I

    .line 38
    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStartRemainder:I

    add-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStart:I

    .line 39
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEndRemainder:I

    sub-int/2addr v2, v0

    iput v2, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEnd:I

    .line 40
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEnd:I

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepDuration:I

    return-void
.end method


# virtual methods
.method public cover(I)Z
    .locals 1

    .line 55
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cover(Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z
    .locals 2

    .line 51
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 126
    :cond_0
    instance-of v1, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 127
    :cond_1
    check-cast p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 128
    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->step:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->step:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStart:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStart:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEnd:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEnd:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStartRemainder:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStartRemainder:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEndRemainder:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEndRemainder:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepDuration:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepDuration:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->upperMeetingPosition:I

    iget v3, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->upperMeetingPosition:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->lowerMeetingPosition:I

    iget p1, p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;->lowerMeetingPosition:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 83
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .line 63
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    return v0
.end method

.method public getLowerMeetingPosition()I
    .locals 1

    .line 99
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->lowerMeetingPosition:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 59
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    return v0
.end method

.method public getStepDuration()I
    .locals 1

    .line 87
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepDuration:I

    return v0
.end method

.method public getStepEnd()I
    .locals 1

    .line 71
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEnd:I

    return v0
.end method

.method public getStepEndRemainder()I
    .locals 1

    .line 79
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEndRemainder:I

    return v0
.end method

.method public getStepStart()I
    .locals 1

    .line 67
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStart:I

    return v0
.end method

.method public getStepStartRemainder()I
    .locals 1

    .line 75
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStartRemainder:I

    return v0
.end method

.method public getUpperMeetingPosition()I
    .locals 1

    .line 91
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->upperMeetingPosition:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->step:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepStartRemainder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepEndRemainder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->stepDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->upperMeetingPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->lowerMeetingPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOccupiedByMeetings(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPReserveMeeting;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 111
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    .line 112
    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result v2

    .line 113
    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getEndMins()I

    move-result v1

    .line 115
    iget v3, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->end:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    if-le v1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public reset(II)V
    .locals 0

    .line 44
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->start:I

    .line 45
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->duration:I

    .line 47
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->calculate()V

    return-void
.end method

.method public setLowerMeetingPosition(I)V
    .locals 0

    .line 103
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->lowerMeetingPosition:I

    return-void
.end method

.method public setUpperMeetingPosition(I)V
    .locals 0

    .line 95
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPTimeBlock;->upperMeetingPosition:I

    return-void
.end method
