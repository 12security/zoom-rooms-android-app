.class public Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;
.super Ljava/lang/Object;
.source "MeetingEventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/MeetingEventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeetingCalendarEvent"
.end annotation


# instance fields
.field public beginTime:J

.field public endTime:J

.field public eventId:J

.field public location:Ljava/lang/String;

.field public meetingID:J

.field public meetingPwd:Ljava/lang/String;

.field public meetingUri:Ljava/lang/String;

.field public repeatCount:I

.field public repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

.field public rrule:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public untilTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->meetingID:J

    const/4 v2, 0x0

    .line 190
    iput-object v2, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->meetingPwd:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->meetingUri:Ljava/lang/String;

    .line 192
    iput-wide v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->beginTime:J

    .line 193
    iput-wide v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->endTime:J

    .line 194
    sget-object v2, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->NONE:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v2, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    const/4 v2, 0x0

    .line 195
    iput v2, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatCount:I

    .line 196
    iput-wide v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->untilTime:J

    const-wide/16 v0, -0x1

    .line 198
    iput-wide v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->eventId:J

    return-void
.end method
