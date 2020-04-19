.class public Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;
.super Ljava/lang/Object;
.source "ZoomCalendarServiceErrorCode.java"


# static fields
.field public static ERROR_CACHED_EVENT_QUERY_FAIL:I = 0x0

.field public static ERROR_CALENDAR:I = 0x1cb2310

.field public static ERROR_CALENDAR_CANCEL_EVENT_FAIL:I

.field public static ERROR_CALENDAR_EVENT_NOT_EXIST:I

.field public static ERROR_CALENDAR_EVENT_QUERY_FAIL:I

.field public static ERROR_CALENDAR_OAUTH_TOKEN_INVALID:I

.field public static ERROR_CALENDAR_OAUTH_TOKEN_NOT_EXIST:I

.field public static ERROR_CALENDAR_RESOURCE_UNAVAILABLE:I

.field public static ERROR_CALENDAR_SCHEDULE_FAIL:I

.field public static ERROR_CALENDAR_SCHEDULE_OVERBOOK_NOT_ALLOWED:I

.field public static ERROR_CAN_NOT_DECRYPT_DATA:I

.field public static ERROR_EVENT_TOPIC_MISSING:I

.field public static ERROR_NOT_AUTHORIZED:I

.field public static ERROR_PARAMETER_INCORRECT:I

.field public static ERROR_RESOURCE_TOKEN_INCORRECT:I

.field public static ERROR_TIME_FORMAT_INCORRECT:I

.field public static ERROR_TIME_RANGE_INCORRECT:I

.field public static ERROR_TIME_RANGE_MISSING:I

.field public static ERROR_TIME_ZONE_INCORRECT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    sget v0, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR:I

    add-int/lit16 v1, v0, 0xbb9

    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_EVENT_QUERY_FAIL:I

    add-int/lit16 v1, v0, 0xbba

    .line 10
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_RESOURCE_UNAVAILABLE:I

    add-int/lit16 v1, v0, 0xbbb

    .line 11
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CACHED_EVENT_QUERY_FAIL:I

    add-int/lit16 v1, v0, 0xbbc

    .line 12
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_OAUTH_TOKEN_INVALID:I

    add-int/lit16 v1, v0, 0xbbd

    .line 13
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_OAUTH_TOKEN_NOT_EXIST:I

    add-int/lit16 v1, v0, 0xbbe

    .line 14
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_SCHEDULE_FAIL:I

    add-int/lit16 v1, v0, 0xbbf

    .line 15
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_EVENT_NOT_EXIST:I

    add-int/lit16 v1, v0, 0xbc0

    .line 16
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_SCHEDULE_OVERBOOK_NOT_ALLOWED:I

    add-int/lit16 v1, v0, 0xbc1

    .line 17
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CALENDAR_CANCEL_EVENT_FAIL:I

    add-int/lit16 v1, v0, 0xfa0

    .line 22
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_PARAMETER_INCORRECT:I

    add-int/lit16 v1, v0, 0xfa1

    .line 23
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_RESOURCE_TOKEN_INCORRECT:I

    add-int/lit16 v1, v0, 0xfa2

    .line 24
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_TIME_RANGE_INCORRECT:I

    add-int/lit16 v1, v0, 0xfa3

    .line 25
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_TIME_FORMAT_INCORRECT:I

    add-int/lit16 v1, v0, 0xfa4

    .line 26
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_TIME_RANGE_MISSING:I

    add-int/lit16 v1, v0, 0xfa5

    .line 27
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_EVENT_TOPIC_MISSING:I

    add-int/lit16 v1, v0, 0xfa6

    .line 28
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_TIME_ZONE_INCORRECT:I

    add-int/lit16 v1, v0, 0xfa7

    .line 29
    sput v1, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_CAN_NOT_DECRYPT_DATA:I

    add-int/lit16 v0, v0, 0xfa8

    .line 30
    sput v0, Lus/zoom/zrcsdk/model/ZoomCalendarServiceErrorCode;->ERROR_NOT_AUTHORIZED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
