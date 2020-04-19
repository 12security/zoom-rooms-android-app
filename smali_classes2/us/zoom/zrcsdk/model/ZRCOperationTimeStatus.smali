.class public Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;
.super Ljava/lang/Object;
.source "ZRCOperationTimeStatus.java"


# static fields
.field private static final DAYS_BIT_FRIDAY:I = 0x20

.field private static final DAYS_BIT_MONDAY:I = 0x2

.field private static final DAYS_BIT_SATURDAY:I = 0x40

.field private static final DAYS_BIT_SUNDAY:I = 0x1

.field private static final DAYS_BIT_THURSDAY:I = 0x10

.field private static final DAYS_BIT_TUESDAY:I = 0x4

.field private static final DAYS_BIT_WEDNESDAY:I = 0x8

.field private static final OPTION_DIM_CONTROLLER:I = 0x4

.field private static final OPTION_FEATURE_ON_OFF:I = 0x1

.field private static final OPTION_TURN_OFF_TV:I = 0x2


# instance fields
.field private dayOfWeekBits:Landroid/util/SparseIntArray;

.field private days:I

.field private end:J

.field private options:J

.field private shouldDimScreenFromZR:Z

.field private start:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    .line 47
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    .line 48
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/4 v0, 0x5

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/4 v0, 0x6

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    const/4 v0, 0x7

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method


# virtual methods
.method public copy()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;
    .locals 3

    .line 109
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;-><init>()V

    .line 110
    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    iput-wide v1, v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    .line 111
    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    iput-wide v1, v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    .line 112
    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    iput-wide v1, v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    .line 113
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    .line 114
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    .line 123
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    iget-wide v4, p1, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDimControllerScreenEnabled()Z
    .locals 5

    .line 78
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isOperationTimeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOperationTimeFeatureEnabled()Z
    .locals 5

    .line 73
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutOfOperationTime()Z
    .locals 7

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isOperationTimeFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    iget-wide v4, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 96
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->dayOfWeekBits:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 97
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return v2

    .line 102
    :cond_3
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->startOfDay()J

    move-result-wide v3

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 105
    iget-wide v3, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    cmp-long v0, v5, v3

    if-ltz v0, :cond_4

    iget-wide v3, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public isShouldDimScreenFromZR()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    return v0
.end method

.method public isTurningOffTVEnabled()Z
    .locals 5

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isOperationTimeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setShouldDimScreenFromZR(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    return-void
.end method

.method public setWebConfigs(JJJI)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    .line 67
    iput-wide p3, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    .line 68
    iput-wide p5, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    .line 69
    iput p7, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 137
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "shouldDimScreenFromZR"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->shouldDimScreenFromZR:Z

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "start"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->start:J

    .line 139
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInMillis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "end"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->end:J

    .line 140
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInMillis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "options"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->options:J

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "days"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->days:I

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
