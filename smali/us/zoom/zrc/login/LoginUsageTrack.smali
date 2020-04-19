.class public Lus/zoom/zrc/login/LoginUsageTrack;
.super Ljava/lang/Object;
.source "LoginUsageTrack.java"


# static fields
.field static sPTApp:Lus/zoom/zrcsdk/PTApp;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPaired()Z
    .locals 2

    .line 247
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sendAddCalendarClickGoogle()V
    .locals 3

    .line 184
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ADD_A_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_GOOGLE_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static sendAddCalendarClickMicrosoft()V
    .locals 3

    .line 188
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ADD_A_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_MICROSOFT_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendAddCalendarResult(I)V
    .locals 5

    .line 192
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ADD_A_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_ADD_GOOGLE_CALENDAR_SERVICE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_RESULT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendAssignCalendar(Z)V
    .locals 5

    .line 206
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SELECT_A_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_ASSIGN_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_MANUAL_INPUT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 207
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendAssignLocation(Ljava/lang/String;)V
    .locals 5

    .line 216
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SELECT_A_LOCATION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_ASSIGN_LOCATION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_LOCATION_PATH:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 217
    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendBackPressed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 99
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_BACK:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x2

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_PAIRED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 100
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->isPaired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_FROM_CONTROLLER:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendClickCreateRoom()V
    .locals 6

    .line 165
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_CREATE_A_NEW_ROOM:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_PAIRED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 166
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->isPaired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendCreateNewRoom()V
    .locals 6

    .line 175
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ENTER_A_ROOM_NAME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CREATE_ROOM:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_PAIRED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 176
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->isPaired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendEnterLicenseKeyHelp()V
    .locals 3

    .line 148
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ACTIVATION_CODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_HELP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendEnterPairingCodeHelp()V
    .locals 3

    .line 110
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SET_PAIRING_CODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_HELP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendEnterSignIn()V
    .locals 3

    .line 106
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SET_PAIRING_CODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SIGN_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendEnterSignInWithLicenseKey()V
    .locals 3

    .line 127
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_ENTER_ACTIVATION_CODE_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendEnterSignUp()V
    .locals 3

    .line 131
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ZOOM_ROOMS_LOGIN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SIGN_UP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendErrorAlert(Lus/zoom/zrc/login/LoginContract$LoginErrorType;I)V
    .locals 6

    .line 94
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ALERT_MESSAGE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_NONE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x2

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_PAIRED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 95
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->isPaired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_RESULT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendJoinOnlyClickLicenseKey()V
    .locals 3

    .line 241
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_JOIN_ONLY_MODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_ENTER_ACTIVATION_CODE_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendJoinOnlyClickSignIn()V
    .locals 3

    .line 237
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_JOIN_ONLY_MODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SIGN_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendQueryWithPairingCode(I)V
    .locals 5

    .line 114
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SET_PAIRING_CODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_QUERY_PAIRING_CODE_FAILED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_RESULT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendRefreshCalendar()V
    .locals 3

    .line 202
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SELECT_A_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_REFRESH_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendRenameRoom()V
    .locals 6

    .line 170
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ENTER_A_ROOM_NAME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_RENAME_ROOM:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_PAIRED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 171
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->isPaired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendRetryConnect()V
    .locals 3

    .line 73
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_DISCONNECTED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_RETRY:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static sendSelectRoom(II)V
    .locals 5

    .line 156
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_ROOM_PICKER_CLICK_NEXT_BUTTON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x2

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_ROOM_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    sget-object p0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_ROOM_LIST_SCROLL_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendSetPassCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 226
    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 228
    :goto_0
    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SET_ROOM_PASSCODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_DONE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v5, 0x2

    new-array v5, v5, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v6, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_MODIFY_DEFAULT_VALUE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v6, p1}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p1

    aput-object p1, v5, v1

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_PASSCODE_LENGTH:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    aput-object p0, v5, v0

    invoke-static {v5}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-static {v2, v3, v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendSignInWithGoogle()V
    .locals 3

    .line 123
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_LOGIN_WITH_GOOGLE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendSignInWithLicenseKey()V
    .locals 3

    .line 144
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ACTIVATION_CODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_ENTER_ACTIVATION_CODE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method static sendSignInWithWorkEmail()V
    .locals 3

    .line 140
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_LOGIN_WITH_EMAIL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V

    return-void
.end method

.method public static sendSignOut(Ljava/lang/Class;)V
    .locals 7

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user sign out from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SIGN_OUT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v4, 0x2

    new-array v4, v4, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_PAIRED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 79
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->isPaired()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_CURRENT_CONTROLLER:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v4, v1

    invoke-static {v4}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {v0, v2, v3, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendSignOut(Ljava/lang/String;)V
    .locals 8

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user sign out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_LOG_IN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SIGN_OUT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v4, 0x2

    new-array v4, v4, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_ZRC_MODEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    const/4 v6, 0x1

    .line 90
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_SIGN_OUT_REASON:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v1, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    aput-object p0, v4, v6

    invoke-static {v4}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {v0, v2, v3, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendSignOut(Lus/zoom/zrc/login/LoginContract$LoginErrorType;I)V
    .locals 4

    const-string v0, "user sign out from error dialog : (%s-%s)"

    const/4 v1, 0x2

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alert("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Ljava/lang/String;)V

    return-void
.end method

.method static sendSignUpFinished(Ljava/lang/String;)V
    .locals 5

    .line 135
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_ZOOM_ROOMS_LOGIN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SIGN_UP_FINISH:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_USER_EMAIL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 136
    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendUnAssignCalendar(Z)V
    .locals 5

    .line 211
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SELECT_A_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SET_UP_WITHOUT_CALENDAR:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_UNASSIGN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method static sendUnAssignLocation(Z)V
    .locals 5

    .line 221
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_USER_INTERACTION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SELECT_A_LOCATION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SET_UP_WITHOUT_LOCATION:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_UNASSIGN:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 222
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v4, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method
