.class Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lus/zoom/androidlib/util/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventDaysRequest"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public eventDays:[Z

.field public numDays:I

.field public startDay:I

.field public uiCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "startDay"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "endDay"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[ZLjava/lang/Runnable;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->startDay:I

    .line 82
    iput p2, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->numDays:I

    .line 83
    iput-object p3, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    .line 84
    iput-object p4, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->uiCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public processRequest(Lus/zoom/androidlib/util/EventLoader;)V
    .locals 8

    .line 90
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$000(Lus/zoom/androidlib/util/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$100(Lus/zoom/androidlib/util/EventLoader;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 94
    iget-object v1, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 97
    iget v1, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->startDay:I

    iget v3, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->numDays:I

    sget-object v4, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->PROJECTION:[Ljava/lang/String;

    invoke-static {p1, v1, v3, v4}, Landroid/provider/CalendarContract$EventDays;->query(Landroid/content/ContentResolver;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "startDay"

    .line 99
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v3, "endDay"

    .line 100
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 103
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 105
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 107
    iget v6, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->startDay:I

    sub-int/2addr v4, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 108
    iget v6, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->startDay:I

    sub-int/2addr v5, v6

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    if-gt v4, v5, :cond_0

    .line 111
    iget-object v6, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2
    iget-object p1, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;->uiCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_3
    throw v0

    return-void
.end method

.method public skipRequest(Lus/zoom/androidlib/util/EventLoader;)V
    .locals 0

    return-void
.end method
