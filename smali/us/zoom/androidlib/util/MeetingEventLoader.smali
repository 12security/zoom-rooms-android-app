.class public Lus/zoom/androidlib/util/MeetingEventLoader;
.super Ljava/lang/Object;
.source "MeetingEventLoader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;,
        Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MeetingEventLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLoader:Lus/zoom/androidlib/util/EventLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    .line 21
    iput-object v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Lus/zoom/androidlib/util/MeetingEventLoader;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lus/zoom/androidlib/util/EventLoader;

    invoke-direct {v0, p1}, Lus/zoom/androidlib/util/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/MeetingEventLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/androidlib/util/MeetingEventLoader;->parseMeetingEvents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseMeetingEvents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;",
            "Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/util/Event;

    .line 74
    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    .line 75
    :goto_1
    iget-object v3, v0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_2

    const-string v4, "https://.+/j/([0-9]+)([?&]pwd=(\\S[^&\\s\\n<]+))*"

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v2

    move-object v4, v3

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_4

    const-string v1, "https://.+/j/([0-9]+)([?&]pwd=(\\S[^&\\s\\n<]+))*"

    .line 85
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 92
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 93
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_3

    :cond_4
    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    :goto_3
    if-nez v1, :cond_5

    goto :goto_0

    .line 100
    :cond_5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-interface {p3, v5}, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;->isAccepted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    .line 106
    :cond_6
    new-instance v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;

    invoke-direct {v5}, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;-><init>()V

    .line 107
    iget-wide v6, v0, Lus/zoom/androidlib/util/Event;->id:J

    iput-wide v6, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->eventId:J

    .line 108
    iput-object v1, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->meetingUri:Ljava/lang/String;

    .line 109
    iput-object v3, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->meetingPwd:Ljava/lang/String;

    if-nez v4, :cond_7

    goto :goto_0

    .line 113
    :cond_7
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->meetingID:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    iget-wide v3, v0, Lus/zoom/androidlib/util/Event;->startMillis:J

    iput-wide v3, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->beginTime:J

    .line 121
    iget-wide v3, v0, Lus/zoom/androidlib/util/Event;->endMillis:J

    iput-wide v3, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->endTime:J

    .line 122
    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->location:Ljava/lang/String;

    .line 123
    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    iput-object v2, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->topic:Ljava/lang/String;

    .line 124
    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    iput-object v1, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->rrule:Ljava/lang/String;

    .line 126
    iget-object v1, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 127
    new-instance v1, Lus/zoom/androidlib/util/EventRecurrence;

    invoke-direct {v1}, Lus/zoom/androidlib/util/EventRecurrence;-><init>()V

    .line 128
    iget-object v0, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lus/zoom/androidlib/util/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 130
    iget v0, v1, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 159
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->UNKNOWN:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    goto :goto_4

    .line 155
    :pswitch_0
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->YEARLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    .line 156
    invoke-direct {p0, v5, v1}, Lus/zoom/androidlib/util/MeetingEventLoader;->parseRepeatCountAndUntil(Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;Lus/zoom/androidlib/util/EventRecurrence;)V

    goto :goto_4

    .line 151
    :pswitch_1
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->MONTHLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    .line 152
    invoke-direct {p0, v5, v1}, Lus/zoom/androidlib/util/MeetingEventLoader;->parseRepeatCountAndUntil(Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;Lus/zoom/androidlib/util/EventRecurrence;)V

    goto :goto_4

    .line 136
    :pswitch_2
    iget v0, v1, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    if-eqz v0, :cond_9

    .line 137
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->UNKNOWN:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    goto :goto_4

    .line 139
    :cond_9
    iget v0, v1, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_a

    .line 140
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->UNKNOWN:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    goto :goto_4

    .line 141
    :cond_a
    iget v0, v1, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    if-ne v0, v2, :cond_b

    .line 142
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->BIWEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    .line 143
    invoke-direct {p0, v5, v1}, Lus/zoom/androidlib/util/MeetingEventLoader;->parseRepeatCountAndUntil(Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;Lus/zoom/androidlib/util/EventRecurrence;)V

    goto :goto_4

    .line 145
    :cond_b
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WEEKLY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    .line 146
    invoke-direct {p0, v5, v1}, Lus/zoom/androidlib/util/MeetingEventLoader;->parseRepeatCountAndUntil(Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;Lus/zoom/androidlib/util/EventRecurrence;)V

    goto :goto_4

    .line 132
    :pswitch_3
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->DAILY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    iput-object v0, v5, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatType:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    .line 133
    invoke-direct {p0, v5, v1}, Lus/zoom/androidlib/util/MeetingEventLoader;->parseRepeatCountAndUntil(Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;Lus/zoom/androidlib/util/EventRecurrence;)V

    .line 164
    :cond_c
    :goto_4
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 167
    :cond_d
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRepeatCountAndUntil(Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;Lus/zoom/androidlib/util/EventRecurrence;)V
    .locals 2

    .line 172
    iget v0, p2, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    iput v0, p1, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->repeatCount:I

    .line 173
    iget-object v0, p2, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 177
    iget-object p2, p2, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/4 p2, 0x0

    .line 178
    invoke-virtual {v0, p2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p1, Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;->untilTime:J
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public queryMeetingsByDate(ILjava/util/ArrayList;JLus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/MeetingEventLoader$MeetingCalendarEvent;",
            ">;J",
            "Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-wide/from16 v0, p3

    .line 50
    iget-object v2, v6, Lus/zoom/androidlib/util/MeetingEventLoader;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 55
    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v7, v6, Lus/zoom/androidlib/util/MeetingEventLoader;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    new-instance v11, Lus/zoom/androidlib/util/MeetingEventLoader$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, v9

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lus/zoom/androidlib/util/MeetingEventLoader$1;-><init>(Lus/zoom/androidlib/util/MeetingEventLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/zoom/androidlib/util/MeetingEventLoader$MeetingDomainFilter;Ljava/lang/Runnable;)V

    move v8, p1

    move-object/from16 v12, p7

    invoke-virtual/range {v7 .. v12}, Lus/zoom/androidlib/util/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startBackgroundThread()V
    .locals 1

    .line 35
    iget-object v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventLoader;->startBackgroundThread()V

    return-void
.end method

.method public stopBackgroundThread()V
    .locals 1

    .line 42
    iget-object v0, p0, Lus/zoom/androidlib/util/MeetingEventLoader;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventLoader;->stopBackgroundThread()V

    return-void
.end method
