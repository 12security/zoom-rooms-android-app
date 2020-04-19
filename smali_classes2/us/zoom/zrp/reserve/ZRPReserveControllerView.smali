.class public Lus/zoom/zrp/reserve/ZRPReserveControllerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZRPReserveControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;
    }
.end annotation


# static fields
.field private static final CLICK_MAX_DY:I = 0x6

.field static final CLICK_STEP_DURATION:I = 0x1e

.field public static final DAY_END_MINS:I = 0x5a0

.field public static final MEETING_DEFAULT_DURATION:I = 0x1e

.field public static final MEETING_MIN_DURATION:I = 0xf

.field public static final SCROLL_ANIMATION_DURATION:I = 0x96

.field private static final STATE_CURRENT_RESERVE_TIME_BLOCK:Ljava/lang/String; = "state_current_reserve_time_block"

.field private static final STATE_IS_SHOWING_ROOMS:Ljava/lang/String; = "state_is_showing_rooms"

.field private static final STATE_SUPER_SAVED:Ljava/lang/String; = "state_super_saved"

.field public static final STEP_DURATION:I = 0x5

.field public static final TRIGGER_SCROLL_MARGIN_DURATION:I = 0x3c

.field static final TRIGGER_SKIP_GAP_REDUCE_SCALE:I = 0x2

.field static final TRIGGER_SKIP_MAX_GAP_MINS:I = 0x3c

.field static final TRIGGER_SKIP_MIN_GAP_MINS:I = 0x5


# instance fields
.field private availableBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPTimeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private clickDy:F

.field private context:Landroid/content/Context;

.field private currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

.field private currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

.field private final currentTimeLineHeight:I

.field private currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

.field private final currentTimeLineViewHeight:I

.field private currentTimeMins:I

.field private endHandleCurrentPointerId:I

.field private eventsNotificationListener:Lus/zoom/zrc/base/notification/INotification;

.field private gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

.field private hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

.field private final hourViewHeight:I

.field private hourViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/view/ZRPReserveTimeLineView;",
            ">;"
        }
    .end annotation
.end field

.field private hoursContainer:Landroid/widget/LinearLayout;

.field private isEndHandleGestureHandling:Z

.field private isReserveAreaGestureHandling:Z

.field private isReserveViewHandled:Z

.field private isReserveViewUpdatedForAccessibility:Z

.field private isSelfRoom:Z

.field private isShowingRooms:Z

.field private isStartHandleGestureHandling:Z

.field private meetingAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/AnimationDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private meetingViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/view/ZRPReserveMeetingView;",
            ">;"
        }
    .end annotation
.end field

.field private meetings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPReserveMeeting;",
            ">;"
        }
    .end annotation
.end field

.field private meetingsContainer:Landroid/widget/FrameLayout;

.field private final minuteHeight:I

.field private onControllerViewStateChangeListener:Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;

.field private onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private reserveAreaCurrentPointerId:I

.field private reserveTimeView:Landroid/widget/TextView;

.field private reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private reserveViewArea:Landroid/view/View;

.field private reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

.field private reserveViewEndHandle:Landroid/widget/ImageView;

.field private reserveViewStartHandle:Landroid/widget/ImageView;

.field private roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

.field private scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

.field private startHandleCurrentPointerId:I

.field private startY:F

.field private final timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

.field private final timeLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveAreaGestureHandling:Z

    .line 66
    iput-boolean p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isStartHandleGestureHandling:Z

    .line 67
    iput-boolean p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isEndHandleGestureHandling:Z

    const/4 p3, -0x1

    .line 69
    iput p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAreaCurrentPointerId:I

    .line 70
    iput p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startHandleCurrentPointerId:I

    .line 71
    iput p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->endHandleCurrentPointerId:I

    .line 73
    iput-boolean p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewHandled:Z

    .line 74
    iput-boolean p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewUpdatedForAccessibility:Z

    .line 93
    iput-boolean p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isShowingRooms:Z

    const/4 p3, 0x1

    .line 95
    iput-boolean p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isSelfRoom:Z

    .line 122
    new-instance p3, Lus/zoom/zrp/reserve/ZRPReserveControllerView$1;

    invoke-direct {p3, p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView$1;-><init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V

    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 133
    new-instance p3, Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;

    invoke-direct {p3, p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView$2;-><init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V

    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->eventsNotificationListener:Lus/zoom/zrc/base/notification/INotification;

    .line 211
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lus/zoom/zrcbox/R$dimen;->zrp_reserve_minute_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p3, 0x2

    div-int/2addr p1, p3

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    .line 215
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeLineHeight:I

    mul-int/lit8 v0, p1, 0x3c

    .line 216
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViewHeight:I

    .line 217
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineHeight:I

    mul-int/lit8 v0, p1, 0x14

    .line 218
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineViewHeight:I

    .line 220
    new-instance v0, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViewHeight:I

    div-int/2addr v1, p3

    invoke-direct {v0, p1, v1}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;-><init>(II)V

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    .line 221
    new-instance p1, Lus/zoom/zrp/reserve/ZRPGestureParser;

    iget-object p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-direct {p1, p3}, Lus/zoom/zrp/reserve/ZRPGestureParser;-><init>(Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;)V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViews:Ljava/util/List;

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingViews:Ljava/util/List;

    .line 227
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingAnimations:Ljava/util/List;

    .line 229
    new-instance p1, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    const/16 p3, 0x1e

    const/4 v0, 0x5

    invoke-direct {p1, p2, p3, v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;-><init>(III)V

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isSelfRoom:Z

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onMeetingsRefreshed()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/reserve/ZRPTimeBlock;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)I
    .locals 0

    .line 47
    iget p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    return p0
.end method

.method static synthetic access$700(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Lus/zoom/zrp/view/ZRPReserveScrollView;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    return-object p0
.end method

.method private calcAvailableBlocks()V
    .locals 11

    .line 418
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 420
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    .line 422
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xf

    const/4 v5, 0x5

    if-ge v0, v1, :cond_2

    .line 425
    iget-object v6, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    invoke-virtual {v6}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result v6

    .line 426
    iget-object v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    invoke-virtual {v7}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getEndMins()I

    move-result v7

    if-gt v6, v3, :cond_0

    .line 429
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    .line 431
    :cond_0
    div-int/lit8 v8, v6, 0x5

    mul-int/lit8 v8, v8, 0x5

    sub-int/2addr v8, v3

    if-lt v8, v4, :cond_1

    .line 432
    iget-object v4, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    new-instance v8, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    sub-int/2addr v6, v3

    invoke-direct {v8, v3, v6, v5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;-><init>(III)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v3, v7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a0

    rsub-int v6, v3, 0x5a0

    if-lt v6, v4, :cond_3

    .line 439
    iget-object v4, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    new-instance v7, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-direct {v7, v3, v6, v5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;-><init>(III)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    return-void

    .line 445
    :cond_4
    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 446
    invoke-virtual {v4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v5

    .line 447
    invoke-virtual {v4}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v6

    .line 452
    iget v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    if-ne v5, v7, :cond_6

    const/4 v5, -0x1

    .line 453
    invoke-virtual {v4, v5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->setUpperMeetingPosition(I)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v1, :cond_8

    .line 456
    iget-object v9, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    .line 457
    invoke-virtual {v9}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result v10

    .line 458
    invoke-virtual {v9}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getEndMins()I

    move-result v9

    sub-int v10, v9, v10

    if-ne v9, v5, :cond_7

    if-le v10, v8, :cond_7

    .line 461
    invoke-virtual {v4, v7}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->setUpperMeetingPosition(I)V

    move v8, v10

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-ne v6, v0, :cond_9

    const/4 v5, -0x2

    .line 468
    invoke-virtual {v4, v5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->setLowerMeetingPosition(I)V

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v5, v1, :cond_5

    .line 471
    iget-object v8, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    .line 472
    invoke-virtual {v8}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result v9

    .line 473
    invoke-virtual {v8}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getEndMins()I

    move-result v8

    sub-int/2addr v8, v9

    if-ne v9, v6, :cond_a

    if-le v8, v7, :cond_a

    .line 476
    invoke-virtual {v4, v5}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->setLowerMeetingPosition(I)V

    move v7, v8

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method private flashMeetingView(I)V
    .locals 2

    .line 994
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingAnimations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 995
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 996
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 997
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 998
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-void
.end method

.method private flashReserveView()V
    .locals 3

    .line 1003
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1004
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1005
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1006
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-void
.end method

.method private handleMotionUntriggered(F)V
    .locals 1

    .line 964
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPGestureParser;->isInitialLocationNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    .line 967
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getFlashingViewPosition()I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 969
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->flashReserveView()V

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 971
    invoke-direct {p0, p1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->flashMeetingView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleUIUpdateSuccess(F)V
    .locals 2

    const/4 v0, 0x1

    .line 951
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewHandled:Z

    .line 952
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewUpdatedForAccessibility:Z

    .line 953
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getUpdatedInitialLocationDyInMins()I

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getUpdatedInitialLocationDyInMins()I

    move-result v0

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    goto :goto_0

    .line 956
    :cond_0
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    .line 958
    :goto_0
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getUpdatedCurrentAvailableTimeBlock()Lus/zoom/zrp/reserve/ZRPTimeBlock;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 959
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getUpdatedCurrentReserveStart()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getUpdatedCurrentReserveDuration()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->reset(II)V

    .line 960
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->notifySelectedTimeBlockChanged()V

    return-void
.end method

.method private initAccessibility()V
    .locals 4

    .line 681
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    new-instance v1, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;

    invoke-direct {v1, p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView$4;-><init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initCurrentTimeLineView()V
    .locals 3

    .line 345
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    .line 346
    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    iget v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineViewHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 349
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iget v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineHeight:I

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeLineHeight(I)V

    .line 350
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrp_reserve_status_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeLineColor(I)V

    .line 351
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeFontBold(Z)V

    return-void
.end method

.method private initFindViews()V
    .locals 2

    .line 303
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$layout;->layout_zrp_reserve_controller_view:I

    invoke-static {v0, v1, p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 305
    sget v0, Lus/zoom/zrcbox/R$id;->sv_reserve_controller:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/view/ZRPReserveScrollView;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    .line 306
    sget v0, Lus/zoom/zrcbox/R$id;->ll_hours_container:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hoursContainer:Landroid/widget/LinearLayout;

    .line 307
    sget v0, Lus/zoom/zrcbox/R$id;->fl_meetings_container:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingsContainer:Landroid/widget/FrameLayout;

    .line 308
    sget v0, Lus/zoom/zrcbox/R$id;->current_time_line_view:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    .line 309
    sget v0, Lus/zoom/zrcbox/R$id;->reserve_view_container:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    .line 310
    sget v0, Lus/zoom/zrcbox/R$id;->reserve_view:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 311
    sget v0, Lus/zoom/zrcbox/R$id;->iv_start_handle:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewStartHandle:Landroid/widget/ImageView;

    .line 312
    sget v0, Lus/zoom/zrcbox/R$id;->iv_end_handle:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewEndHandle:Landroid/widget/ImageView;

    .line 313
    sget v0, Lus/zoom/zrcbox/R$id;->reserve_area:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    return-void
.end method

.method private initFlashAnimations()V
    .locals 1

    .line 325
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method private initHourViews()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 330
    new-instance v1, Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hoursContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    invoke-virtual {v1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    iget v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViewHeight:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 338
    iget v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeLineHeight:I

    invoke-virtual {v1, v2}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeLineHeight(I)V

    .line 339
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zrp_reserve_common_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeColor(I)V

    .line 340
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zrp_reserve_controller_time_line_color_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setLineColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initReserveView()V
    .locals 6

    .line 355
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v4

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->prepare(Lus/zoom/zrp/reserve/ZRPReserveControllerView;Lus/zoom/zrp/view/ZRPReserveScrollView;Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;II)V

    return-void
.end method

.method private initScrollLocation()V
    .locals 2

    .line 665
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    new-instance v1, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;

    invoke-direct {v1, p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView$3;-><init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initSetOnTouchListeners()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v0, p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 320
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewStartHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewEndHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private notifySelectedTimeBlockChanged()V
    .locals 7

    .line 697
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v1

    invoke-static {v1}, Lus/zoom/zrp/util/ZRPUtils;->todayMins2Millis(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v2

    invoke-static {v2}, Lus/zoom/zrp/util/ZRPUtils;->todayMins2Millis(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 699
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    sget v4, Lus/zoom/zrcbox/R$string;->current_reserve_time:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onControllerViewStateChangeListener:Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-interface {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;->onSelectedTimeBlockChange(Lus/zoom/zrp/reserve/ZRPTimeBlock;)V

    :cond_0
    return-void
.end method

.method private onActionUpForAccessibility()V
    .locals 5

    .line 939
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewUpdatedForAccessibility:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 940
    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewUpdatedForAccessibility:Z

    .line 941
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrp/util/ZRPUtils;->todayMins2Millis(I)J

    move-result-wide v0

    .line 943
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Lus/zoom/zrp/util/ZRPUtils;->todayMins2Millis(I)J

    move-result-wide v2

    .line 944
    iget-object v4, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-static {v4, v0, v1, v2, v3}, Lus/zoom/zrp/util/ZRPUtils;->getReserveTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveTimeView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onMeetingsRefreshed()V
    .locals 2

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->minsOfDay(J)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    .line 709
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->parseMeetings()V

    .line 710
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->calcAvailableBlocks()V

    .line 712
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateMeetingViews()V

    .line 714
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView()V

    .line 715
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReservableState()V

    return-void
.end method

.method private parseMeetings()V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isSelfRoom:Z

    if-eqz v0, :cond_1

    .line 410
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isShowingRooms:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->parseZRCMeetingListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    goto :goto_1

    .line 412
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->parseZRCMeetingListItems(Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    :goto_1
    return-void
.end method

.method private refreshReserveViewByClicking(ILus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 9

    .line 977
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0, p1, p2, v1}, Lus/zoom/zrp/reserve/ZRPGestureParser;->calcClickingMoveOffsets(ILus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 979
    aget v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-eqz v1, :cond_1

    .line 980
    :cond_0
    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    sget-object v4, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SCROLL_VIEW_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    const/4 v5, 0x0

    aget v6, p1, v0

    aget v7, p1, v2

    const/16 v8, 0x96

    invoke-virtual/range {v3 .. v8}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveViewAllInMins(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewHandled:Z

    .line 984
    iput-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewUpdatedForAccessibility:Z

    .line 985
    iput-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 986
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v1

    aget v0, p1, v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v0

    aget p1, p1, v2

    add-int/2addr v0, p1

    invoke-virtual {p2, v1, v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->reset(II)V

    .line 987
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->notifySelectedTimeBlockChanged()V

    .line 988
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->tapAvailableTimeBlock()V

    :cond_1
    return-void
.end method

.method private updateCurrentTimeBlocks(ZLus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 5

    .line 600
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 601
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p1, v2, v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->reset(II)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 606
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 607
    invoke-virtual {v3, p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->cover(Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    iput-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 609
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->reset(II)V

    return-void

    .line 615
    :cond_2
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 616
    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0, v3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->cover(Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 617
    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    return-void

    .line 622
    :cond_4
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 623
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    if-nez p1, :cond_6

    .line 626
    iget-boolean p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveViewHandled:Z

    if-eqz p1, :cond_6

    .line 628
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getUpperMeetingPosition()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    .line 629
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result p1

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 630
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p1

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v2

    if-lt p1, v2, :cond_6

    .line 632
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepEnd()I

    move-result p1

    sub-int/2addr p1, v0

    const/16 v1, 0xf

    if-lt p1, v1, :cond_5

    .line 633
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getEnd()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 635
    :cond_5
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_0

    .line 639
    :cond_6
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepStartRemainder()I

    move-result p1

    .line 640
    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStepDuration()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr p1, v1

    .line 643
    :goto_0
    iput-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 644
    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->reset(II)V

    return-void
.end method

.method private updateCurrentTimeLineView()V
    .locals 4

    .line 404
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeText(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    iget v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    invoke-virtual {v1, v2}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeLineViewHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setY(F)V

    return-void
.end method

.method private updateHourViewsTimeLineVisibility()V
    .locals 5

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 376
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 377
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-gt v0, v4, :cond_1

    .line 379
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    .line 380
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    invoke-virtual {v1, v3}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setVisibility(I)V

    .line 383
    :cond_0
    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    .line 384
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    invoke-virtual {v0, v2}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x2d

    if-lt v0, v4, :cond_3

    .line 386
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViews:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    .line 387
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    invoke-virtual {v1, v3}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setVisibility(I)V

    .line 390
    :cond_2
    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    .line 391
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    invoke-virtual {v0, v2}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setVisibility(I)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    if-eqz v0, :cond_4

    .line 394
    invoke-virtual {v0, v3}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hiddenHourView:Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    :cond_4
    :goto_0
    return-void
.end method

.method private updateHourViewsTimeText()V
    .locals 6

    .line 362
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 364
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 365
    invoke-virtual {v3, v2}, Ljava/util/Date;->setHours(I)V

    .line 366
    invoke-virtual {v3, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 367
    iget-object v4, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->hourViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrp/view/ZRPReserveTimeLineView;

    iget-object v5, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->setTimeText(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMeetingViews()V
    .locals 9

    .line 488
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 489
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 490
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 493
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 494
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 502
    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    .line 503
    invoke-virtual {v3}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result v4

    .line 504
    invoke-virtual {v3}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getEndMins()I

    move-result v5

    .line 506
    new-instance v6, Lus/zoom/zrp/view/ZRPReserveMeetingView;

    iget-object v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lus/zoom/zrp/view/ZRPReserveMeetingView;-><init>(Landroid/content/Context;)V

    .line 508
    iget-object v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 509
    iget-object v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingViews:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetingAnimations:Ljava/util/List;

    invoke-virtual {v6}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->getMeetingAnimation()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {v6}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    .line 513
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v5, v4

    .line 515
    iget v7, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    mul-int v7, v7, v5

    invoke-virtual {v6, v7}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->setMeetingHeight(I)V

    .line 516
    invoke-virtual {v3}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getMeetingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->setMeetingName(Ljava/lang/String;)V

    const/16 v3, 0xf

    if-lt v5, v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    .line 517
    :goto_1
    invoke-virtual {v6, v3}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->setMeetingNameViewVisibility(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 520
    iget-object v5, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->meetings:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    invoke-virtual {v5}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getEndMins()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 521
    invoke-virtual {v6}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->showTopSeparator()V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 526
    :cond_5
    :goto_3
    iget-object v3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {v3, v4}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->setY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private updateReservableState()V
    .locals 3

    .line 651
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 653
    :goto_0
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onControllerViewStateChangeListener:Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;

    if-eqz v2, :cond_1

    .line 654
    invoke-interface {v2, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;->onReservableStateChange(Z)V

    .line 657
    :cond_1
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 660
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->notifySelectedTimeBlockChanged()V

    :cond_3
    return-void
.end method

.method private updateReserveView()V
    .locals 1

    const/4 v0, 0x1

    .line 534
    invoke-direct {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView(Z)V

    return-void
.end method

.method private updateReserveView(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 542
    invoke-direct {p0, p1, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView(ZLus/zoom/zrp/reserve/ZRPTimeBlock;)V

    return-void
.end method

.method private updateReserveView(ZLus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v0

    .line 591
    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v1

    .line 593
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateCurrentTimeBlocks(ZLus/zoom/zrp/reserve/ZRPTimeBlock;)V

    .line 595
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    iget-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p2}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 596
    invoke-virtual {v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result v0

    sub-int/2addr v0, v1

    .line 595
    invoke-virtual {p1, p2, v0}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->setReserveViewAllInMins(II)V

    return-void
.end method

.method private updateViewsByTimeChange()V
    .locals 2

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->minsOfDay(J)I

    move-result v0

    .line 747
    iget v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    if-eq v1, v0, :cond_0

    .line 748
    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    .line 750
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateHourViewsTimeLineVisibility()V

    .line 751
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateCurrentTimeLineView()V

    .line 753
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->calcAvailableBlocks()V

    const/4 v0, 0x0

    .line 755
    invoke-direct {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView(Z)V

    .line 756
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReservableState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getReserveViewArea()Landroid/view/View;
    .locals 1

    .line 197
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    return-object v0
.end method

.method public initSetup(ZLus/zoom/zrp/model/ZRPRoomInfo;Landroid/widget/TextView;Lus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isSelfRoom:Z

    .line 184
    iput-object p2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    .line 185
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveTimeView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 188
    iput-object p4, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    :cond_0
    return-void
.end method

.method public onCurrentTimeChange()V
    .locals 0

    .line 741
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateViewsByTimeChange()V

    return-void
.end method

.method public onFragmentDestroyView()V
    .locals 2

    .line 294
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 295
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onFragmentStart()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateViewsByTimeChange()V

    return-void
.end method

.method public onFragmentViewCreated()V
    .locals 3

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->minsOfDay(J)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    .line 263
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initFindViews()V

    .line 265
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initSetOnTouchListeners()V

    .line 267
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initFlashAnimations()V

    .line 269
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initHourViews()V

    .line 270
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initCurrentTimeLineView()V

    .line 271
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initReserveView()V

    .line 273
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 274
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->eventsNotificationListener:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 276
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateHourViewsTimeText()V

    .line 278
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateHourViewsTimeLineVisibility()V

    .line 279
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateCurrentTimeLineView()V

    .line 281
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->parseMeetings()V

    .line 282
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->calcAvailableBlocks()V

    .line 284
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateMeetingViews()V

    .line 286
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView()V

    .line 287
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReservableState()V

    .line 289
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initAccessibility()V

    .line 290
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->initScrollLocation()V

    return-void
.end method

.method onReceivedBatchListCalendarEventsWithRoomResult(Lcom/google/common/collect/ImmutableMap;)V
    .locals 3

    .line 164
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isSelfRoom:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "result"

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "room_meeting_lists"

    .line 169
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getRoomID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onMeetingsRefreshed()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onReceivedListCalendarEventsWithRoomResult(Lcom/google/common/collect/ImmutableMap;)V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isSelfRoom:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "result"

    .line 152
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "room_meeting_list"

    .line 153
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getRoomID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->roomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getErrorCode()I

    move-result p1

    if-nez p1, :cond_1

    .line 157
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onMeetingsRefreshed()V

    :cond_1
    return-void
.end method

.method public onReserveModeSwitched(Z)V
    .locals 0

    .line 719
    iput-boolean p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isShowingRooms:Z

    .line 720
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onMeetingsRefreshed()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 244
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 245
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "state_current_reserve_time_block"

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 249
    invoke-direct {p0, v1, v0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView(ZLus/zoom/zrp/reserve/ZRPTimeBlock;)V

    .line 250
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReservableState()V

    :cond_0
    const-string v0, "state_is_showing_rooms"

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isShowingRooms:Z

    const-string v0, "state_super_saved"

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 254
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "state_super_saved"

    .line 236
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "state_current_reserve_time_block"

    .line 237
    iget-object v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "state_is_showing_rooms"

    .line 238
    iget-boolean v2, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isShowingRooms:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeOrTimeConfigChange()V
    .locals 2

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->minsOfDay(J)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentTimeMins:I

    .line 726
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateHourViewsTimeText()V

    .line 728
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateHourViewsTimeLineVisibility()V

    .line 729
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateCurrentTimeLineView()V

    .line 731
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->parseMeetings()V

    .line 732
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->calcAvailableBlocks()V

    .line 734
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateMeetingViews()V

    .line 736
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReserveView()V

    .line 737
    invoke-direct {p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->updateReservableState()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 766
    iget-object v5, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    const/4 v6, 0x0

    if-ne v1, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 775
    :pswitch_0
    iget v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->clickDy:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->clickDy:F

    goto :goto_2

    .line 779
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 780
    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->clickDy:F

    iget v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->clickDy:F

    .line 781
    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->clickDy:F

    const/high16 v3, 0x40c00000    # 6.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 782
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->timeCoordinateConverter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    iget-object v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->context:Landroid/content/Context;

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->coordinate2mins(I)I

    move-result v1

    .line 783
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 785
    iget-object v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 786
    invoke-virtual {v4, v1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->cover(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 787
    invoke-direct {v0, v1, v4}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->refreshReserveViewByClicking(ILus/zoom/zrp/reserve/ZRPTimeBlock;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 792
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onActionUpForAccessibility()V

    goto :goto_2

    .line 770
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    const/4 v1, 0x0

    .line 771
    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->clickDy:F

    :goto_2
    return v6

    .line 797
    :cond_2
    iget-object v5, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewArea:Landroid/view/View;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v1, v5, :cond_4

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_3

    .line 811
    :pswitch_4
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveAreaGestureHandling:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAreaCurrentPointerId:I

    if-ne v1, v3, :cond_8

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 813
    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    sub-float v2, v1, v2

    float-to-int v11, v2

    .line 815
    iget-object v12, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    div-int v13, v11, v2

    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v2}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getHeight()I

    move-result v15

    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    iget-object v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    iget-object v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Lus/zoom/zrp/reserve/ZRPGestureParser;->parseAreaGesture(IIILjava/util/List;Lus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 817
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 818
    iget-object v9, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    .line 819
    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getScrollViewScrollType()Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    move-result-object v10

    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getLocationDyByAreaGesture()I

    move-result v12

    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    .line 820
    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getHeightDyByAreaGesture()I

    move-result v13

    const/16 v14, 0x96

    .line 819
    invoke-virtual/range {v9 .. v14}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveViewAllInMins(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;IIII)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 822
    invoke-direct {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->handleUIUpdateSuccess(F)V

    .line 823
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->moveReserveTimeDuration()V

    goto/16 :goto_3

    .line 826
    :cond_3
    invoke-direct {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->handleMotionUntriggered(F)V

    goto/16 :goto_3

    .line 834
    :pswitch_5
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveAreaGestureHandling:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAreaCurrentPointerId:I

    if-ne v1, v2, :cond_8

    .line 835
    iput-boolean v6, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveAreaGestureHandling:Z

    .line 836
    iput v7, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAreaCurrentPointerId:I

    .line 837
    iget-object v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v1, v6}, Lus/zoom/zrp/view/ZRPReserveScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 838
    invoke-direct/range {p0 .. p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onActionUpForAccessibility()V

    goto/16 :goto_3

    .line 802
    :pswitch_6
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveAreaGestureHandling:Z

    if-nez v1, :cond_8

    .line 803
    iput-boolean v8, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isReserveAreaGestureHandling:Z

    .line 804
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveAreaCurrentPointerId:I

    .line 805
    iget-object v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v1, v8}, Lus/zoom/zrp/view/ZRPReserveScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    goto/16 :goto_3

    .line 843
    :cond_4
    iget-object v5, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewStartHandle:Landroid/widget/ImageView;

    const/16 v9, 0x96

    if-ne v1, v5, :cond_6

    packed-switch v3, :pswitch_data_2

    :pswitch_7
    goto/16 :goto_3

    .line 857
    :pswitch_8
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isStartHandleGestureHandling:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startHandleCurrentPointerId:I

    if-ne v1, v3, :cond_8

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 859
    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 861
    iget-object v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    iget v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    div-int/2addr v2, v4

    iget-object v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    iget-object v5, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    iget-object v6, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v3, v2, v4, v5, v6}, Lus/zoom/zrp/reserve/ZRPGestureParser;->parseStartHandleGesture(ILjava/util/List;Lus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 863
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 864
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->START:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    iget-object v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    .line 865
    invoke-virtual {v4}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getDyByHandleGesture()I

    move-result v4

    invoke-virtual {v2, v3, v4, v9}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveViewInMins(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 868
    invoke-direct {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->handleUIUpdateSuccess(F)V

    .line 869
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->changeReserveStartTime()V

    goto/16 :goto_3

    .line 872
    :cond_5
    invoke-direct {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->handleMotionUntriggered(F)V

    goto/16 :goto_3

    .line 880
    :pswitch_9
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isStartHandleGestureHandling:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startHandleCurrentPointerId:I

    if-ne v1, v2, :cond_8

    .line 881
    iput-boolean v6, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isStartHandleGestureHandling:Z

    .line 882
    iput v7, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startHandleCurrentPointerId:I

    .line 883
    iget-object v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v1, v6}, Lus/zoom/zrp/view/ZRPReserveScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 884
    invoke-direct/range {p0 .. p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onActionUpForAccessibility()V

    goto/16 :goto_3

    .line 848
    :pswitch_a
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isStartHandleGestureHandling:Z

    if-nez v1, :cond_8

    .line 849
    iput-boolean v8, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isStartHandleGestureHandling:Z

    .line 850
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startHandleCurrentPointerId:I

    .line 851
    iget-object v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v1, v8}, Lus/zoom/zrp/view/ZRPReserveScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    goto/16 :goto_3

    .line 889
    :cond_6
    iget-object v5, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewEndHandle:Landroid/widget/ImageView;

    if-ne v1, v5, :cond_8

    packed-switch v3, :pswitch_data_3

    :pswitch_b
    goto/16 :goto_3

    .line 903
    :pswitch_c
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isEndHandleGestureHandling:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->endHandleCurrentPointerId:I

    if-ne v1, v3, :cond_8

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 905
    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 907
    iget-object v3, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    iget v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->minuteHeight:I

    div-int/2addr v2, v4

    iget-object v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->availableBlocks:Ljava/util/List;

    iget-object v5, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentAvailableTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    iget-object v6, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->currentReserveTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v3, v2, v4, v5, v6}, Lus/zoom/zrp/reserve/ZRPGestureParser;->parseEndHandleGesture(ILjava/util/List;Lus/zoom/zrp/reserve/ZRPTimeBlock;Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 909
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    invoke-virtual {v2}, Lus/zoom/zrp/reserve/ZRPGestureParser;->isMotionTriggered()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 910
    iget-object v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->reserveViewContainer:Lus/zoom/zrp/view/ZRPReserveScrollerLayout;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->END:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    iget-object v4, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->gestureParser:Lus/zoom/zrp/reserve/ZRPGestureParser;

    .line 911
    invoke-virtual {v4}, Lus/zoom/zrp/reserve/ZRPGestureParser;->getDyByHandleGesture()I

    move-result v4

    invoke-virtual {v2, v3, v4, v9}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveViewInMins(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 914
    invoke-direct {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->handleUIUpdateSuccess(F)V

    .line 915
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->changeReserveEndTime()V

    goto :goto_3

    .line 918
    :cond_7
    invoke-direct {v0, v1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->handleMotionUntriggered(F)V

    goto :goto_3

    .line 926
    :pswitch_d
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isEndHandleGestureHandling:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->endHandleCurrentPointerId:I

    if-ne v1, v2, :cond_8

    .line 927
    iput-boolean v6, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isEndHandleGestureHandling:Z

    .line 928
    iput v7, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->endHandleCurrentPointerId:I

    .line 929
    iget-object v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v1, v6}, Lus/zoom/zrp/view/ZRPReserveScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 930
    invoke-direct/range {p0 .. p0}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onActionUpForAccessibility()V

    goto :goto_3

    .line 894
    :pswitch_e
    iget-boolean v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isEndHandleGestureHandling:Z

    if-nez v1, :cond_8

    .line 895
    iput-boolean v8, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->isEndHandleGestureHandling:Z

    .line 896
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->endHandleCurrentPointerId:I

    .line 897
    iget-object v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v1, v8}, Lus/zoom/zrp/view/ZRPReserveScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->startY:F

    :cond_8
    :goto_3
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public setOnControllerViewStateChangeListener(Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->onControllerViewStateChangeListener:Lus/zoom/zrp/reserve/ZRPReserveControllerView$OnControllerViewStateChangeListener;

    return-void
.end method
