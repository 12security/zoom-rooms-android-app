.class public Lus/zoom/androidlib/util/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final ALLDAY_WHERE:Ljava/lang/String; = "dispAllday=1"

.field private static final DISPLAY_AS_ALLDAY:Ljava/lang/String; = "dispAllday"

.field private static final EVENTS_WHERE:Ljava/lang/String; = "dispAllday=0"

.field public static final EVENT_PROJECTION:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final PROFILE:Z = false

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_DESCRIPTION:I = 0x14

.field private static final PROJECTION_DISPLAY_AS_ALLDAY:I = 0x13

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_GUESTS_CAN_INVITE_OTHERS_INDEX:I = 0x12

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_ORGANIZER_INDEX:I = 0x11

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I = 0x0

.field private static final SORT_ALLDAY_BY:Ljava/lang/String; = "startDay ASC, endDay DESC, title ASC"

.field private static final SORT_EVENTS_BY:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field private static final TAG:Ljava/lang/String; = "CalEvent"

.field private static mNoColorColor:I

.field private static mNoTitleString:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public description:Ljava/lang/CharSequence;

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lus/zoom/androidlib/util/Event;

.field public nextLeft:Lus/zoom/androidlib/util/Event;

.field public nextRight:Lus/zoom/androidlib/util/Event;

.field public nextUp:Lus/zoom/androidlib/util/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public rrule:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x15

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "eventLocation"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "allDay"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "displayColor"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "eventTimezone"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "event_id"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "begin"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "end"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "_id"

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "startDay"

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "endDay"

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "startMinute"

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "endMinute"

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "hasAlarm"

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "rrule"

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "rdate"

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "selfAttendeeStatus"

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "organizer"

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, "guestsCanModify"

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "description"

    const/16 v3, 0x14

    aput-object v1, v0, v3

    sput-object v0, Lus/zoom/androidlib/util/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 116
    invoke-static {}, Lus/zoom/androidlib/util/Event;->isJellybeanOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lus/zoom/androidlib/util/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v1, "calendar_color"

    aput-object v1, v0, v2

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 363
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const-string p2, ""

    .line 364
    sput-object p2, Lus/zoom/androidlib/util/Event;->mNoTitleString:Ljava/lang/String;

    const/high16 p2, -0x1000000

    .line 365
    sput p2, Lus/zoom/androidlib/util/Event;->mNoColorColor:I

    const/4 p2, -0x1

    .line 368
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 369
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 370
    invoke-static {p1}, Lus/zoom/androidlib/util/Event;->generateEventFromCursor(Landroid/database/Cursor;)Lus/zoom/androidlib/util/Event;

    move-result-object p2

    .line 371
    iget v0, p2, Lus/zoom/androidlib/util/Event;->startDay:I

    if-gt v0, p4, :cond_2

    iget v0, p2, Lus/zoom/androidlib/util/Event;->endDay:I

    if-ge v0, p3, :cond_3

    goto :goto_0

    .line 374
    :cond_3
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method static computePositions(Ljava/util/ArrayList;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;J)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 456
    invoke-static {p0, p1, p2, v0}, Lus/zoom/androidlib/util/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    const/4 v0, 0x1

    .line 457
    invoke-static {p0, p1, p2, v0}, Lus/zoom/androidlib/util/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    return-void
.end method

.method private static doComputePositions(Ljava/util/ArrayList;JZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;JZ)V"
        }
    .end annotation

    move/from16 v0, p3

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    move-wide v12, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p1

    .line 471
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, 0x0

    move-wide v10, v3

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lus/zoom/androidlib/util/Event;

    .line 473
    invoke-virtual {v8}, Lus/zoom/androidlib/util/Event;->drawAsAllday()Z

    move-result v6

    if-eq v6, v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 478
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v8

    move-object v3, v8

    move-wide v8, v12

    .line 477
    invoke-static/range {v6 .. v11}, Lus/zoom/androidlib/util/Event;->removeNonAlldayActiveEvents(Lus/zoom/androidlib/util/Event;Ljava/util/Iterator;JJ)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-object v3, v8

    .line 480
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v3, v4, v10, v11}, Lus/zoom/androidlib/util/Event;->removeAlldayActiveEvents(Lus/zoom/androidlib/util/Event;Ljava/util/Iterator;J)J

    move-result-wide v6

    .line 485
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 486
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/androidlib/util/Event;

    .line 487
    invoke-virtual {v6, v15}, Lus/zoom/androidlib/util/Event;->setMaxColumns(I)V

    goto :goto_3

    .line 491
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v6, 0x0

    const/4 v15, 0x0

    .line 496
    :cond_4
    invoke-static {v6, v7}, Lus/zoom/androidlib/util/Event;->findFirstZeroBit(J)I

    move-result v4

    const/16 v8, 0x40

    if-ne v4, v8, :cond_5

    const/16 v4, 0x3f

    :cond_5
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    or-long v10, v6, v8

    .line 500
    invoke-virtual {v3, v4}, Lus/zoom/androidlib/util/Event;->setColumn(I)V

    .line 501
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_6

    move v15, v3

    :cond_6
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 507
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/util/Event;

    .line 508
    invoke-virtual {v1, v15}, Lus/zoom/androidlib/util/Event;->setMaxColumns(I)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static generateEventFromCursor(Landroid/database/Cursor;)Lus/zoom/androidlib/util/Event;
    .locals 7

    .line 383
    new-instance v0, Lus/zoom/androidlib/util/Event;

    invoke-direct {v0}, Lus/zoom/androidlib/util/Event;-><init>()V

    const/4 v1, 0x5

    .line 385
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lus/zoom/androidlib/util/Event;->id:J

    const/4 v1, 0x0

    .line 386
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    .line 387
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    .line 388
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lus/zoom/androidlib/util/Event;->allDay:Z

    const/16 v3, 0x11

    .line 389
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->organizer:Ljava/lang/String;

    const/16 v3, 0x12

    .line 390
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lus/zoom/androidlib/util/Event;->guestsCanModify:Z

    .line 392
    iget-object v3, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 393
    :cond_2
    sget-object v3, Lus/zoom/androidlib/util/Event;->mNoTitleString:Ljava/lang/String;

    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    :cond_3
    const/4 v3, 0x3

    .line 396
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/high16 v3, -0x1000000

    .line 398
    iput v3, v0, Lus/zoom/androidlib/util/Event;->color:I

    goto :goto_2

    .line 400
    :cond_4
    sget v3, Lus/zoom/androidlib/util/Event;->mNoColorColor:I

    iput v3, v0, Lus/zoom/androidlib/util/Event;->color:I

    :goto_2
    const/4 v3, 0x6

    .line 403
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x7

    .line 404
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 406
    iput-wide v3, v0, Lus/zoom/androidlib/util/Event;->startMillis:J

    const/16 v3, 0xb

    .line 407
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lus/zoom/androidlib/util/Event;->startTime:I

    const/16 v3, 0x9

    .line 408
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lus/zoom/androidlib/util/Event;->startDay:I

    .line 410
    iput-wide v5, v0, Lus/zoom/androidlib/util/Event;->endMillis:J

    const/16 v3, 0xc

    .line 411
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lus/zoom/androidlib/util/Event;->endTime:I

    const/16 v3, 0xa

    .line 412
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lus/zoom/androidlib/util/Event;->endDay:I

    const/16 v3, 0xd

    .line 414
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v0, Lus/zoom/androidlib/util/Event;->hasAlarm:Z

    const/16 v3, 0xe

    .line 417
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    .line 418
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 422
    :cond_6
    iput-boolean v1, v0, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    goto :goto_5

    .line 420
    :cond_7
    :goto_4
    iput-boolean v2, v0, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    .line 425
    :goto_5
    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    const/16 v1, 0x10

    .line 427
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lus/zoom/androidlib/util/Event;->selfAttendeeStatus:I

    const/16 v1, 0x14

    .line 429
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static final instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    move-object/from16 v0, p5

    const-string v1, "visible=?"

    const/4 v2, 0x1

    .line 318
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "begin ASC"

    .line 321
    sget-object v6, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    move/from16 v7, p2

    int-to-long v7, v7

    .line 322
    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move/from16 v7, p3

    int-to-long v7, v7

    .line 323
    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 324
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v11, v1

    move-object v12, v3

    goto :goto_0

    .line 328
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 329
    array-length v7, v0

    if-lez v7, :cond_1

    .line 330
    array-length v7, v0

    add-int/2addr v7, v2

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 331
    array-length v7, v0

    sub-int/2addr v7, v2

    aget-object v2, v3, v5

    aput-object v2, v0, v7

    move-object v12, v0

    move-object v11, v1

    goto :goto_0

    :cond_1
    move-object v11, v1

    move-object v12, v3

    .line 336
    :goto_0
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    if-nez p6, :cond_2

    move-object v13, v4

    goto :goto_1

    :cond_2
    move-object/from16 v13, p6

    :goto_1
    move-object v8, p0

    move-object v10, p1

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static isJellybeanOrLater()Z
    .locals 2

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;III",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v4, "dispAllday=0"

    const-string v8, "dispAllday=1"

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lus/zoom/androidlib/util/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "begin ASC, end DESC, title ASC"

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/util/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lus/zoom/androidlib/util/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, endDay DESC, title ASC"

    move v2, p2

    move v3, p3

    move-object v4, v8

    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/util/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 276
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p4, p5, :cond_2

    if-eqz v9, :cond_0

    .line 285
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v7, :cond_1

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 280
    :cond_2
    :try_start_2
    invoke-static {p1, v9, p0, p2, p3}, Lus/zoom/androidlib/util/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 281
    invoke-static {p1, v7, p0, p2, p3}, Lus/zoom/androidlib/util/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_3

    .line 285
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v7, :cond_4

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v9, v7

    :goto_0
    if-eqz v9, :cond_5

    .line 285
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v7, :cond_6

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_6
    throw p0
.end method

.method public static final newInstance()Lus/zoom/androidlib/util/Event;
    .locals 5

    .line 214
    new-instance v0, Lus/zoom/androidlib/util/Event;

    invoke-direct {v0}, Lus/zoom/androidlib/util/Event;-><init>()V

    const-wide/16 v1, 0x0

    .line 216
    iput-wide v1, v0, Lus/zoom/androidlib/util/Event;->id:J

    const/4 v3, 0x0

    .line 217
    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 218
    iput v4, v0, Lus/zoom/androidlib/util/Event;->color:I

    .line 219
    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    .line 220
    iput-boolean v4, v0, Lus/zoom/androidlib/util/Event;->allDay:Z

    .line 221
    iput v4, v0, Lus/zoom/androidlib/util/Event;->startDay:I

    .line 222
    iput v4, v0, Lus/zoom/androidlib/util/Event;->endDay:I

    .line 223
    iput v4, v0, Lus/zoom/androidlib/util/Event;->startTime:I

    .line 224
    iput v4, v0, Lus/zoom/androidlib/util/Event;->endTime:I

    .line 225
    iput-wide v1, v0, Lus/zoom/androidlib/util/Event;->startMillis:J

    .line 226
    iput-wide v1, v0, Lus/zoom/androidlib/util/Event;->endMillis:J

    .line 227
    iput-boolean v4, v0, Lus/zoom/androidlib/util/Event;->hasAlarm:Z

    .line 228
    iput-boolean v4, v0, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    .line 229
    iput v4, v0, Lus/zoom/androidlib/util/Event;->selfAttendeeStatus:I

    .line 230
    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    .line 231
    iput-object v3, v0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static removeAlldayActiveEvents(Lus/zoom/androidlib/util/Event;Ljava/util/Iterator;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/util/Event;",
            "Ljava/util/Iterator<",
            "Lus/zoom/androidlib/util/Event;",
            ">;J)J"
        }
    .end annotation

    .line 516
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/util/Event;

    .line 518
    iget v1, v0, Lus/zoom/androidlib/util/Event;->endDay:I

    iget v2, p0, Lus/zoom/androidlib/util/Event;->startDay:I

    if-ge v1, v2, :cond_0

    const-wide/16 v1, 0x1

    .line 519
    invoke-virtual {v0}, Lus/zoom/androidlib/util/Event;->getColumn()I

    move-result v0

    shl-long v0, v1, v0

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    and-long/2addr p2, v0

    .line 520
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-wide p2
.end method

.method private static removeNonAlldayActiveEvents(Lus/zoom/androidlib/util/Event;Ljava/util/Iterator;JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/util/Event;",
            "Ljava/util/Iterator<",
            "Lus/zoom/androidlib/util/Event;",
            ">;JJ)J"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lus/zoom/androidlib/util/Event;->getStartMillis()J

    move-result-wide v0

    .line 532
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 533
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/util/Event;

    .line 536
    invoke-virtual {p0}, Lus/zoom/androidlib/util/Event;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lus/zoom/androidlib/util/Event;->getStartMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 535
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 537
    invoke-virtual {p0}, Lus/zoom/androidlib/util/Event;->getStartMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x1

    .line 538
    invoke-virtual {p0}, Lus/zoom/androidlib/util/Event;->getColumn()I

    move-result p0

    shl-long/2addr v2, p0

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr p4, v2

    .line 539
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-wide p4
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 169
    new-instance v0, Lus/zoom/androidlib/util/Event;

    invoke-direct {v0}, Lus/zoom/androidlib/util/Event;-><init>()V

    .line 171
    iget-object v1, p0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    .line 172
    iget v1, p0, Lus/zoom/androidlib/util/Event;->color:I

    iput v1, v0, Lus/zoom/androidlib/util/Event;->color:I

    .line 173
    iget-object v1, p0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    .line 174
    iget-boolean v1, p0, Lus/zoom/androidlib/util/Event;->allDay:Z

    iput-boolean v1, v0, Lus/zoom/androidlib/util/Event;->allDay:Z

    .line 175
    iget v1, p0, Lus/zoom/androidlib/util/Event;->startDay:I

    iput v1, v0, Lus/zoom/androidlib/util/Event;->startDay:I

    .line 176
    iget v1, p0, Lus/zoom/androidlib/util/Event;->endDay:I

    iput v1, v0, Lus/zoom/androidlib/util/Event;->endDay:I

    .line 177
    iget v1, p0, Lus/zoom/androidlib/util/Event;->startTime:I

    iput v1, v0, Lus/zoom/androidlib/util/Event;->startTime:I

    .line 178
    iget v1, p0, Lus/zoom/androidlib/util/Event;->endTime:I

    iput v1, v0, Lus/zoom/androidlib/util/Event;->endTime:I

    .line 179
    iget-wide v1, p0, Lus/zoom/androidlib/util/Event;->startMillis:J

    iput-wide v1, v0, Lus/zoom/androidlib/util/Event;->startMillis:J

    .line 180
    iget-wide v1, p0, Lus/zoom/androidlib/util/Event;->endMillis:J

    iput-wide v1, v0, Lus/zoom/androidlib/util/Event;->endMillis:J

    .line 181
    iget-boolean v1, p0, Lus/zoom/androidlib/util/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lus/zoom/androidlib/util/Event;->hasAlarm:Z

    .line 182
    iget-boolean v1, p0, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    iput-boolean v1, v0, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    .line 183
    iget v1, p0, Lus/zoom/androidlib/util/Event;->selfAttendeeStatus:I

    iput v1, v0, Lus/zoom/androidlib/util/Event;->selfAttendeeStatus:I

    .line 184
    iget-object v1, p0, Lus/zoom/androidlib/util/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/androidlib/util/Event;->organizer:Ljava/lang/String;

    .line 185
    iget-boolean v1, p0, Lus/zoom/androidlib/util/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lus/zoom/androidlib/util/Event;->guestsCanModify:Z

    .line 186
    iget-object v1, p0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final copyTo(Lus/zoom/androidlib/util/Event;)V
    .locals 2

    .line 193
    iget-wide v0, p0, Lus/zoom/androidlib/util/Event;->id:J

    iput-wide v0, p1, Lus/zoom/androidlib/util/Event;->id:J

    .line 194
    iget-object v0, p0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    .line 195
    iget v0, p0, Lus/zoom/androidlib/util/Event;->color:I

    iput v0, p1, Lus/zoom/androidlib/util/Event;->color:I

    .line 196
    iget-object v0, p0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    .line 197
    iget-boolean v0, p0, Lus/zoom/androidlib/util/Event;->allDay:Z

    iput-boolean v0, p1, Lus/zoom/androidlib/util/Event;->allDay:Z

    .line 198
    iget v0, p0, Lus/zoom/androidlib/util/Event;->startDay:I

    iput v0, p1, Lus/zoom/androidlib/util/Event;->startDay:I

    .line 199
    iget v0, p0, Lus/zoom/androidlib/util/Event;->endDay:I

    iput v0, p1, Lus/zoom/androidlib/util/Event;->endDay:I

    .line 200
    iget v0, p0, Lus/zoom/androidlib/util/Event;->startTime:I

    iput v0, p1, Lus/zoom/androidlib/util/Event;->startTime:I

    .line 201
    iget v0, p0, Lus/zoom/androidlib/util/Event;->endTime:I

    iput v0, p1, Lus/zoom/androidlib/util/Event;->endTime:I

    .line 202
    iget-wide v0, p0, Lus/zoom/androidlib/util/Event;->startMillis:J

    iput-wide v0, p1, Lus/zoom/androidlib/util/Event;->startMillis:J

    .line 203
    iget-wide v0, p0, Lus/zoom/androidlib/util/Event;->endMillis:J

    iput-wide v0, p1, Lus/zoom/androidlib/util/Event;->endMillis:J

    .line 204
    iget-boolean v0, p0, Lus/zoom/androidlib/util/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lus/zoom/androidlib/util/Event;->hasAlarm:Z

    .line 205
    iget-boolean v0, p0, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    iput-boolean v0, p1, Lus/zoom/androidlib/util/Event;->isRepeating:Z

    .line 206
    iget v0, p0, Lus/zoom/androidlib/util/Event;->selfAttendeeStatus:I

    iput v0, p1, Lus/zoom/androidlib/util/Event;->selfAttendeeStatus:I

    .line 207
    iget-object v0, p0, Lus/zoom/androidlib/util/Event;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lus/zoom/androidlib/util/Event;->organizer:Ljava/lang/String;

    .line 208
    iget-boolean v0, p0, Lus/zoom/androidlib/util/Event;->guestsCanModify:Z

    iput-boolean v0, p1, Lus/zoom/androidlib/util/Event;->guestsCanModify:Z

    .line 209
    iget-object v0, p0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    iput-object v0, p1, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    iput-object v0, p1, Lus/zoom/androidlib/util/Event;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method public drawAsAllday()Z
    .locals 5

    .line 656
    iget-boolean v0, p0, Lus/zoom/androidlib/util/Event;->allDay:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lus/zoom/androidlib/util/Event;->endMillis:J

    iget-wide v2, p0, Lus/zoom/androidlib/util/Event;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final dump()V
    .locals 0

    return-void
.end method

.method public getColumn()I
    .locals 1

    .line 627
    iget v0, p0, Lus/zoom/androidlib/util/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .line 651
    iget-wide v0, p0, Lus/zoom/androidlib/util/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .line 635
    iget v0, p0, Lus/zoom/androidlib/util/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .line 643
    iget-wide v0, p0, Lus/zoom/androidlib/util/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 3

    .line 608
    iget-object v0, p0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 614
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final intersects(III)Z
    .locals 4

    .line 572
    iget v0, p0, Lus/zoom/androidlib/util/Event;->endDay:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    .line 576
    :cond_0
    iget v2, p0, Lus/zoom/androidlib/util/Event;->startDay:I

    if-le v2, p1, :cond_1

    return v1

    :cond_1
    if-ne v0, p1, :cond_4

    .line 581
    iget v3, p0, Lus/zoom/androidlib/util/Event;->endTime:I

    if-ge v3, p2, :cond_2

    return v1

    :cond_2
    if-ne v3, p2, :cond_4

    .line 587
    iget p2, p0, Lus/zoom/androidlib/util/Event;->startTime:I

    if-ne p2, v3, :cond_3

    if-eq v2, v0, :cond_4

    :cond_3
    return v1

    .line 593
    :cond_4
    iget p2, p0, Lus/zoom/androidlib/util/Event;->startDay:I

    if-ne p2, p1, :cond_5

    iget p1, p0, Lus/zoom/androidlib/util/Event;->startTime:I

    if-le p1, p3, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public setColumn(I)V
    .locals 0

    .line 623
    iput p1, p0, Lus/zoom/androidlib/util/Event;->mColumn:I

    return-void
.end method

.method public setEndMillis(J)V
    .locals 0

    .line 647
    iput-wide p1, p0, Lus/zoom/androidlib/util/Event;->endMillis:J

    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0

    .line 631
    iput p1, p0, Lus/zoom/androidlib/util/Event;->mMaxColumns:I

    return-void
.end method

.method public setStartMillis(J)V
    .locals 0

    .line 639
    iput-wide p1, p0, Lus/zoom/androidlib/util/Event;->startMillis:J

    return-void
.end method
