.class public Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;
.super Ljava/lang/Object;
.source "ZRPMeetingListItemHelper.java"


# static fields
.field public static final DISPLAY_STATE_CHECKED_IN:I = 0x2

.field public static final DISPLAY_STATE_CHECK_IN:I = 0x1

.field public static final DISPLAY_STATE_IN_MEETING:I = 0x3

.field private static final DISPLAY_STATE_NORMAL:I

.field private static instance:Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private allowCheckInMeetingItemOnList(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 19

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 104
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-object/from16 v11, p1

    .line 105
    invoke-virtual {v10, v11}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_2

    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v10}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v10}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    goto :goto_1

    :cond_2
    const-wide/16 v14, 0x0

    :goto_1
    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    neg-long v14, v12

    .line 110
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v16

    add-int/lit8 v2, v16, 0x3c

    int-to-long v2, v2

    const-wide/16 v17, 0x1

    cmp-long v16, v12, v2

    if-lez v16, :cond_3

    add-long v4, v4, v17

    goto :goto_0

    .line 112
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForPriorCheckIn()I

    move-result v2

    int-to-long v2, v2

    cmp-long v12, v14, v2

    if-gtz v12, :cond_0

    .line 113
    invoke-virtual {v10}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isCheckedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    add-long v8, v8, v17

    goto :goto_0

    :cond_4
    add-long v6, v6, v17

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v6, v0

    if-gtz v2, :cond_7

    cmp-long v2, v4, v0

    if-lez v2, :cond_6

    cmp-long v2, v8, v0

    if-nez v2, :cond_7

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0x2

    cmp-long v2, v8, v0

    if-gez v2, :cond_7

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;
    .locals 2

    const-class v0, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->instance:Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    invoke-direct {v1}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;-><init>()V

    sput-object v1, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->instance:Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    .line 26
    :cond_0
    sget-object v1, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->instance:Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public parseMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    return v2

    .line 42
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 47
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 51
    :cond_2
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 52
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isNowInMeetingRange()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 60
    :cond_3
    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isCheckInEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v3

    invoke-virtual {p1, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->canEditItem(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_6

    .line 62
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isNowInMeetingRange()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    :cond_5
    return v0

    .line 66
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_1

    :cond_7
    const-wide/16 v7, 0x0

    :goto_1
    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 71
    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_8

    return v2

    :cond_8
    neg-long v5, v5

    .line 77
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isCheckedIn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 80
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {p1, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    .line 82
    :goto_2
    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForPriorCheckIn()I

    move-result v1

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-gtz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    return v2

    :cond_b
    const/4 p1, 0x2

    return p1

    .line 91
    :cond_c
    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForPriorCheckIn()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v5, v1

    if-lez v3, :cond_d

    return v0

    .line 95
    :cond_d
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->allowCheckInMeetingItemOnList(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method
