.class public Lus/zoom/zrc/utils/UsageTraceUtils;
.super Ljava/lang/Object;
.source "UsageTraceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/UsageTraceUtils$Prop;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs extraJson([Lus/zoom/zrc/utils/UsageTraceUtils$Prop;)Ljava/lang/String;
    .locals 6

    .line 32
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 33
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 34
    iget-object v4, v3, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;->key:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;->value:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v3, v3, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prop(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;Ljava/lang/Object;)Lus/zoom/zrc/utils/UsageTraceUtils$Prop;
    .locals 1

    .line 25
    new-instance v0, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;

    invoke-direct {v0}, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;-><init>()V

    .line 26
    iput-object p0, v0, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;->key:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    .line 27
    iput-object p1, v0, Lus/zoom/zrc/utils/UsageTraceUtils$Prop;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public static sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;)V
    .locals 1

    const-string v0, ""

    .line 13
    invoke-static {p0, p1, p2, v0}, Lus/zoom/zrc/utils/UsageTraceUtils;->sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUsageTrack(Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result p1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p2

    .line 20
    invoke-virtual {v0, p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    return-void
.end method
