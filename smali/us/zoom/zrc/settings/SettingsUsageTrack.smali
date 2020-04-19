.class public Lus/zoom/zrc/settings/SettingsUsageTrack;
.super Ljava/lang/Object;
.source "SettingsUsageTrack.java"


# static fields
.field public static final ZPCSettingsMenuItemAbout:I = 0x6c

.field public static final ZPCSettingsMenuItemAudioLog:I = 0x6f

.field public static final ZPCSettingsMenuItemCamera:I = 0x69

.field public static final ZPCSettingsMenuItemClosedCaption:I = 0x65

.field public static final ZPCSettingsMenuItemClosedCaptionFontControl:I = 0x66

.field public static final ZPCSettingsMenuItemDisplayTopBanner:I = 0x6e

.field public static final ZPCSettingsMenuItemLock:I = 0x6d

.field public static final ZPCSettingsMenuItemMicrophone:I = 0x67

.field public static final ZPCSettingsMenuItemPhone:I = 0x6a

.field public static final ZPCSettingsMenuItemRoom:I = 0x64

.field public static final ZPCSettingsMenuItemRoomProfile:I = 0x70

.field public static final ZPCSettingsMenuItemScreen:I = 0x6b

.field public static final ZPCSettingsMenuItemSpeaker:I = 0x68

.field public static final ZPCSettingsMenuItemVirtualBackground:I = 0x71

.field public static final ZPCSettingsMenuItemWhiteboardCamera:I = 0x72


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRoomsLogLocation()Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;
    .locals 2

    .line 58
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    goto :goto_0

    :cond_0
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    :goto_0
    return-object v0
.end method

.method public static sendUsageTrackForRoom(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V
    .locals 3

    .line 53
    invoke-static {}, Lus/zoom/zrc/settings/SettingsUsageTrack;->getRoomsLogLocation()Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    move-result-object v0

    .line 54
    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SET_ROOM:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    const-string v2, ""

    invoke-static {v0, v1, p0, v2}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUsageTrackForSettingsLocked(Ljava/lang/String;)V
    .locals 5

    .line 37
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    goto :goto_0

    :cond_0
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 40
    :goto_0
    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_LOCKED:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v1, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    .line 41
    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SWITCH_CONTROLLER_TAB:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 42
    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUsageTrackForSettingsTab(Ljava/lang/String;)V
    .locals 5

    .line 28
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    goto :goto_0

    :cond_0
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 31
    :goto_0
    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_DESTINATION_TAB_NAME:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v1, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    .line 32
    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SWITCH_CONTROLLER_TAB:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_SETTINGS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 33
    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUsageTrackForSignOut(Ljava/lang/String;)V
    .locals 5

    .line 46
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_ZRC_MODEL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-static {v0, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    move-result-object p0

    .line 47
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_SETTING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SET_ROOM:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CLICK_SIGN_OUT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    const/4 v3, 0x1

    new-array v3, v3, [Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 48
    invoke-static {v3}, Lus/zoom/zrc/utils/UsageTraceUtils;->extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {v0, v1, v2, p0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method
