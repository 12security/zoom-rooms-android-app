.class public Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;
.super Ljava/lang/Object;
.source "ZRPTimeCoordinateConverter.java"


# instance fields
.field private coordinateOffset:I

.field private minuteHeight:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->minuteHeight:I

    .line 10
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->coordinateOffset:I

    return-void
.end method


# virtual methods
.method public coordinate2mins(I)I
    .locals 1

    .line 18
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->coordinateOffset:I

    sub-int/2addr p1, v0

    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->minuteHeight:I

    div-int/2addr p1, v0

    return p1
.end method

.method public duration2height(I)I
    .locals 1

    .line 22
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->minuteHeight:I

    mul-int p1, p1, v0

    return p1
.end method

.method public mins2coordinate(I)I
    .locals 1

    .line 14
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->minuteHeight:I

    mul-int v0, v0, p1

    iget p1, p0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->coordinateOffset:I

    add-int/2addr v0, p1

    return v0
.end method
