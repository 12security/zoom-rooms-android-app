.class public Lus/zoom/zrcsdk/model/MeetingHistory;
.super Ljava/lang/Object;
.source "MeetingHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/MeetingHistory;",
        ">;"
    }
.end annotation


# instance fields
.field private meetingHistoryID:Ljava/lang/String;

.field private meetingTopic:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lus/zoom/zrcsdk/model/MeetingHistory;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/MeetingHistory;->compareTo(Lus/zoom/zrcsdk/model/MeetingHistory;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/MeetingHistory;)I
    .locals 4

    .line 35
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->time:J

    iget-wide v2, p1, Lus/zoom/zrcsdk/model/MeetingHistory;->time:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getMeetingHistoryID()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->meetingHistoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingTopic()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->meetingTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->time:J

    return-wide v0
.end method

.method public setMeetingHistoryID(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->meetingHistoryID:Ljava/lang/String;

    return-void
.end method

.method public setMeetingTopic(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->meetingTopic:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/MeetingHistory;->time:J

    return-void
.end method
