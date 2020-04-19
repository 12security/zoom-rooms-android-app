.class public Lus/zoom/zrp/reserve/ZRPGestureParser;
.super Ljava/lang/Object;
.source "ZRPGestureParser.java"


# static fields
.field private static final FLASHING_NONE:I = -0x1

.field public static final FLASHING_RESERVE_VIEW:I = -0x2


# instance fields
.field private converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

.field private dyByHandleGesture:I

.field private flashingViewPosition:I

.field private heightDyByAreaGesture:I

.field private isInitialLocationNeedRefresh:Z

.field private isMotionTriggered:Z

.field private locationDyByAreaGesture:I

.field private scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

.field private updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

.field private updatedCurrentReserveDuration:I

.field private updatedCurrentReserveStart:I

.field private updatedInitialLocationDyInMins:I


# direct methods
.method constructor <init>(Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    return-void
.end method


# virtual methods
.method public calcClickingMoveOffsets(ILus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)[I
    .locals 2

    .line 454
    div-int/lit8 p1, p1, 0x1e

    mul-int/lit8 p1, p1, 0x1e

    .line 456
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v0

    .line 457
    invoke-virtual {p2, p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->cover(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v1

    sub-int/2addr v1, p1

    if-lt v1, v0, :cond_0

    .line 459
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p2

    sub-int/2addr p1, p2

    .line 460
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    if-lt p1, v0, :cond_1

    .line 463
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    sub-int p1, v0, p1

    .line 464
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p2

    sub-int/2addr p2, v0

    .line 465
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p3

    sub-int/2addr p2, p3

    move v0, p1

    move p1, p2

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p1

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    sub-int/2addr p1, v0

    .line 468
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p3

    sub-int v0, p2, p3

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p1

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v1

    sub-int/2addr p1, v1

    .line 473
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v1

    if-lt v1, v0, :cond_3

    .line 474
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p3

    sub-int v0, p2, p3

    :goto_0
    const/4 p2, 0x2

    .line 479
    new-array p2, p2, [I

    const/4 p3, 0x0

    aput p1, p2, p3

    const/4 p1, 0x1

    aput v0, p2, p1

    return-object p2
.end method

.method public getDyByHandleGesture()I
    .locals 1

    .line 39
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    return v0
.end method

.method public getFlashingViewPosition()I
    .locals 1

    .line 55
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    return v0
.end method

.method public getHeightDyByAreaGesture()I
    .locals 1

    .line 47
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    return v0
.end method

.method public getLocationDyByAreaGesture()I
    .locals 1

    .line 43
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    return v0
.end method

.method public getScrollViewScrollType()Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;
    .locals 1

    .line 75
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    return-object v0
.end method

.method public getUpdatedCurrentAvailableTimeBlock()Lus/zoom/zrp/reserve/ZRPTimeBlock;
    .locals 1

    .line 63
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    return-object v0
.end method

.method public getUpdatedCurrentReserveDuration()I
    .locals 1

    .line 71
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    return v0
.end method

.method public getUpdatedCurrentReserveStart()I
    .locals 1

    .line 67
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    return v0
.end method

.method public getUpdatedInitialLocationDyInMins()I
    .locals 1

    .line 59
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    return v0
.end method

.method public isInitialLocationNeedRefresh()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    return v0
.end method

.method public isMotionTriggered()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    return v0
.end method

.method public parseAreaGesture(IIILjava/util/List;Lus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ">;",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    if-eqz p4, :cond_16

    .line 292
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p6, :cond_16

    if-nez p5, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0x3c

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-lez p1, :cond_b

    .line 297
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v5

    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v6

    if-le v5, v6, :cond_1

    return v0

    .line 299
    :cond_1
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v5

    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v6

    if-ne v5, v6, :cond_8

    .line 300
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    .line 301
    invoke-interface {p4, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v5, v4

    if-ne v6, v5, :cond_4

    .line 303
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 304
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 305
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getLowerMeetingPosition()I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_2

    .line 307
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    :cond_2
    if-ltz p1, :cond_3

    .line 309
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    .line 311
    :cond_3
    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    :cond_4
    add-int/2addr v6, v4

    .line 315
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 316
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result v5

    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v6

    sub-int/2addr v5, v6

    .line 317
    div-int/lit8 v5, v5, 0x2

    div-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x5

    .line 319
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 320
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge p1, v3, :cond_6

    .line 322
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 323
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 324
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getLowerMeetingPosition()I

    move-result p1

    if-ltz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    .line 325
    :goto_0
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    .line 327
    :cond_6
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    add-int/2addr p2, p3

    .line 328
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result p3

    invoke-virtual {p1, p3}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    .line 329
    invoke-virtual {p1, v1}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result p1

    if-ge p2, p1, :cond_7

    .line 330
    sget-object p1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->INNER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    goto :goto_1

    .line 332
    :cond_7
    sget-object p1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->OTHER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 334
    :goto_1
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    .line 335
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    .line 334
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    .line 336
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 337
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    .line 338
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    .line 339
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 340
    iput-object p4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    goto/16 :goto_4

    .line 345
    :cond_8
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p2

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p3

    sub-int/2addr p2, p3

    if-ge p1, v3, :cond_9

    .line 347
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 348
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 349
    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    :cond_9
    if-lt p1, p2, :cond_a

    .line 351
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 352
    sget-object p1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 353
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p1

    .line 354
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    .line 355
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    .line 356
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 357
    iput-object p5, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 358
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 359
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_4

    .line 361
    :cond_a
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 362
    sget-object p2, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 363
    div-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x5

    .line 364
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    .line 365
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    .line 366
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 367
    iput-object p5, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 368
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 369
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_4

    .line 373
    :cond_b
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p3

    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result v5

    if-ge p3, v5, :cond_c

    return v0

    .line 375
    :cond_c
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p3

    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result v5

    const/4 v6, -0x5

    if-ne p3, v5, :cond_13

    .line 376
    invoke-interface {p4, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_f

    .line 378
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 379
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 380
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getUpperMeetingPosition()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 382
    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    :cond_d
    if-ltz p1, :cond_e

    .line 384
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    .line 386
    :cond_e
    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    :cond_f
    sub-int/2addr p3, v4

    .line 390
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 391
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p4

    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result v5

    sub-int/2addr p4, v5

    .line 392
    div-int/lit8 p4, p4, 0x2

    div-int/2addr p4, v3

    mul-int/lit8 p4, p4, 0x5

    const/16 v3, -0x3c

    .line 394
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 395
    invoke-static {v6, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    if-le p1, p4, :cond_11

    .line 397
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 398
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 399
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getUpperMeetingPosition()I

    move-result p1

    if-ltz p1, :cond_10

    goto :goto_2

    :cond_10
    const/4 p1, -0x1

    .line 400
    :goto_2
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_4

    .line 402
    :cond_11
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 403
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p4

    invoke-virtual {p1, p4}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    .line 404
    invoke-virtual {p2, v1}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result p2

    if-ge p1, p2, :cond_12

    .line 405
    sget-object p1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->INNER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    goto :goto_3

    .line 407
    :cond_12
    sget-object p1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->OTHER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 409
    :goto_3
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    .line 410
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    .line 409
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    .line 411
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 412
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    .line 413
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    .line 414
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 415
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    goto :goto_4

    .line 420
    :cond_13
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p2

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p3

    sub-int/2addr p2, p3

    if-le p1, v6, :cond_14

    .line 422
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 423
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 424
    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto :goto_4

    :cond_14
    if-gt p1, p2, :cond_15

    .line 426
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 427
    sget-object p1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 428
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    .line 429
    invoke-virtual {p5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 430
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    .line 431
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    .line 432
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 433
    iput-object p5, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    goto :goto_4

    .line 435
    :cond_15
    iput-boolean v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 436
    sget-object p2, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 437
    div-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x5

    .line 438
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result p2

    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    .line 439
    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 440
    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->locationDyByAreaGesture:I

    .line 441
    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    invoke-virtual {p6}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->heightDyByAreaGesture:I

    .line 442
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 443
    iput-object p5, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    :goto_4
    return v4

    :cond_16
    :goto_5
    return v0
.end method

.method public parseEndHandleGesture(ILjava/util/List;Lus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ">;",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 184
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_11

    if-eqz p4, :cond_11

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p2, -0x1

    const/4 v1, 0x1

    if-lez p1, :cond_8

    .line 189
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v2

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v3

    if-le v2, v3, :cond_1

    return v0

    .line 191
    :cond_1
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v2

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 192
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 193
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 194
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getLowerMeetingPosition()I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_2

    .line 196
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_1

    :cond_2
    if-ltz p1, :cond_10

    .line 198
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_1

    .line 200
    :cond_3
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v2

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 201
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v2

    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_4

    .line 203
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 204
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 205
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_1

    .line 207
    :cond_4
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 208
    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 209
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 210
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 211
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 212
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_1

    .line 215
    :cond_5
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEndRemainder()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x5

    .line 216
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v3

    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge p1, v2, :cond_6

    .line 218
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 219
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 220
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_1

    :cond_6
    if-lt p1, v3, :cond_7

    .line 222
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 223
    iput v3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 224
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 225
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 226
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 227
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_1

    .line 229
    :cond_7
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    sub-int/2addr p1, v2

    .line 230
    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v2, p1

    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 232
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 233
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 234
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 235
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_1

    .line 239
    :cond_8
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_9

    return v0

    .line 241
    :cond_9
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v2

    if-ne v2, v3, :cond_c

    .line 242
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEndRemainder()I

    move-result v2

    if-nez v2, :cond_a

    .line 243
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 244
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 245
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_1

    .line 247
    :cond_a
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEndRemainder()I

    move-result v2

    neg-int v2, v2

    if-le p1, v2, :cond_b

    .line 248
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 249
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 250
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_1

    .line 252
    :cond_b
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 253
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEndRemainder()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 254
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 255
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 256
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 257
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto :goto_1

    .line 261
    :cond_c
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEndRemainder()I

    move-result v2

    neg-int v2, v2

    if-eqz v2, :cond_d

    .line 262
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEndRemainder()I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :cond_d
    const/4 v2, -0x5

    .line 263
    :goto_0
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result v4

    add-int/2addr v4, v3

    .line 264
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v3

    sub-int/2addr v4, v3

    if-le p1, v2, :cond_e

    .line 266
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 267
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 268
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto :goto_1

    :cond_e
    if-gt p1, v4, :cond_f

    .line 270
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 271
    iput v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 272
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 273
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 274
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 275
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto :goto_1

    .line 277
    :cond_f
    iput-boolean v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    sub-int/2addr p1, v2

    .line 278
    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v2, p1

    iput v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 280
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 281
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 282
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 283
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    :cond_10
    :goto_1
    return v1

    :cond_11
    :goto_2
    return v0
.end method

.method public parseStartHandleGesture(ILjava/util/List;Lus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ">;",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 80
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_10

    if-eqz p4, :cond_10

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p2, -0x1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-gez p1, :cond_8

    .line 85
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v3

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v4

    if-ge v3, v4, :cond_1

    return v0

    .line 87
    :cond_1
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v3

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 88
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 89
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 90
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getUpperMeetingPosition()I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 91
    :goto_0
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_2

    .line 92
    :cond_3
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v3

    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStart()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 93
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v1

    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v3

    sub-int/2addr v1, v3

    if-le p1, v1, :cond_4

    .line 95
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 96
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 97
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_2

    .line 99
    :cond_4
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 100
    iput v1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 101
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 102
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 103
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 104
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_2

    .line 107
    :cond_5
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result v3

    sub-int/2addr v3, v1

    .line 108
    invoke-virtual {p3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v4

    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v5

    sub-int/2addr v4, v5

    if-le p1, v3, :cond_6

    .line 110
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 111
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 112
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_2

    :cond_6
    if-gt p1, v4, :cond_7

    .line 114
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 115
    iput v4, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 116
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 117
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 118
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 119
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_2

    .line 121
    :cond_7
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    sub-int/2addr p1, v3

    .line 122
    div-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v3, p1

    iput v3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 124
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 125
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 126
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 127
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto/16 :goto_2

    .line 131
    :cond_8
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_9

    return v0

    .line 133
    :cond_9
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v3

    if-ne v3, v4, :cond_c

    .line 134
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result v1

    if-nez v1, :cond_a

    .line 135
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 136
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 137
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_2

    .line 139
    :cond_a
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result v1

    if-ge p1, v1, :cond_b

    .line 140
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 141
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 142
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto/16 :goto_2

    .line 144
    :cond_b
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 145
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 146
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 147
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 148
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 149
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto :goto_2

    .line 153
    :cond_c
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result v3

    if-eqz v3, :cond_d

    .line 154
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result v3

    goto :goto_1

    :cond_d
    const/4 v3, 0x5

    .line 155
    :goto_1
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result v5

    sub-int/2addr v5, v4

    .line 156
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v4

    sub-int/2addr v5, v4

    if-ge p1, v3, :cond_e

    .line 158
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 159
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh:Z

    .line 160
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->flashingViewPosition:I

    goto :goto_2

    :cond_e
    if-lt p1, v5, :cond_f

    .line 162
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    .line 163
    iput v5, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 164
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 165
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 166
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 167
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    goto :goto_2

    .line 169
    :cond_f
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered:Z

    sub-int/2addr p1, v3

    .line 170
    div-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v3, p1

    iput v3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    .line 172
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedInitialLocationDyInMins:I

    .line 173
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 174
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveStart:I

    .line 175
    invoke-virtual {p4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    iget p2, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->dyByHandleGesture:I

    sub-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPGestureParser;->updatedCurrentReserveDuration:I

    :goto_2
    return v2

    :cond_10
    :goto_3
    return v0
.end method
