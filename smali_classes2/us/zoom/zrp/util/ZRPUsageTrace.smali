.class public Lus/zoom/zrp/util/ZRPUsageTrace;
.super Ljava/lang/Object;
.source "ZRPUsageTrace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calendarNotWork()V
    .locals 3

    .line 74
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_PANEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CALENDAR_NOT_WORK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static cancelReserveByClickButton()V
    .locals 6

    .line 100
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLOSE_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v4, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_CLICK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 101
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelReserveByTimeOut()V
    .locals 6

    .line 95
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLOSE_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v4, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_TIME_OUT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 96
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static changeReserveEndTime()V
    .locals 3

    .line 170
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CHANGE_END_TIME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static changeReserveStartTime()V
    .locals 3

    .line 166
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CHANGE_START_TIME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static clickCheckInButton()V
    .locals 3

    .line 78
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_CHECK_IN_ROOMS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CHECK_IN_ON_MEETING_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static deleteMeeting()V
    .locals 3

    .line 82
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_PANEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_DELETE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static endEditingMeetingTitle()V
    .locals 3

    .line 146
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_EDIT_MEETING_TITLE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static lockSettings()V
    .locals 7

    .line 59
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_LOCK_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x2

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_LOCKED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    const/4 v5, 0x1

    .line 60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_ZRC_MODEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static moveReserveTimeDuration()V
    .locals 3

    .line 162
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_MOVE_DURATION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static refreshMeetingList(I)V
    .locals 5

    .line 69
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_PANEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_REFRESH_MEETING_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_MEETING_LIST_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static reserveAnotherRoom()V
    .locals 6

    .line 137
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_RESERVE_ANOTHER_ROOM_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v4, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_CLICK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static scheduleMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTime(J)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 113
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 115
    :goto_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x1

    if-eqz p0, :cond_3

    .line 117
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 120
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 125
    :goto_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p0, 0x1

    .line 127
    :goto_4
    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v7, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v8, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_RESERVE_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v9, 0x6

    new-array v9, v9, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v10, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 128
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v10, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    aput-object p0, v9, v5

    sget-object p0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_MEETING_START_TIME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 129
    invoke-static {p0, v1}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    aput-object p0, v9, v6

    const/4 p0, 0x2

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_DURATION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 130
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v1

    aput-object v1, v9, p0

    const/4 p0, 0x3

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_SCHEDULE_TIME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 131
    invoke-static {v1, v0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v0

    aput-object v0, v9, p0

    const/4 p0, 0x4

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_RESERVE_OTHER:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    xor-int/2addr p1, v6

    .line 132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p1

    aput-object p1, v9, p0

    const/4 p0, 0x5

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_INVITEE_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    if-eqz p2, :cond_6

    .line 133
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p1

    aput-object p1, v9, p0

    .line 128
    invoke-static {v9}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {v4, v7, v8, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static scheduleMeetingFailed()V
    .locals 3

    .line 150
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_RESERVE_ROOM_FAILED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static scrollCalendarView()V
    .locals 3

    .line 142
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SCROLL_TIME_AREA:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static scrollMeetingList(I)V
    .locals 5

    .line 90
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_PANEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SCROLL_MEETING_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_MEETING_LIST_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static selectSettingsItem(Ljava/lang/String;)V
    .locals 5

    .line 54
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SWITCH_CONTROLLER_TAB:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x2

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_DESTINATION_TAB_NAME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 55
    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    sget-object p0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_ZRC_MODEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v4}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static showMeetingDetails()V
    .locals 3

    .line 86
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_PANEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SHOW_MEETING_DETAILED_INFO:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static tapAvailableTimeBlock()V
    .locals 3

    .line 154
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_TIME_ZONE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static tapReservedTimeBlock()V
    .locals 3

    .line 158
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_RESERVE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_EXISTING_MEETING_AREA:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static unlockSettings()V
    .locals 7

    .line 64
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_LOCK_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x2

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_LOCKED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    const/4 v5, 0x0

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_ZRC_MODEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method
