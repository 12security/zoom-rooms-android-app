.class public Lus/zoom/zrp/reserve/ZRPReserveMeeting;
.super Ljava/lang/Object;
.source "ZRPReserveMeeting.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrp/reserve/ZRPReserveMeeting;",
        ">;"
    }
.end annotation


# instance fields
.field private endMins:I

.field private meetingName:Ljava/lang/String;

.field private startMins:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->startMins:I

    .line 22
    iput p2, p0, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->endMins:I

    .line 23
    iput-object p3, p0, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->meetingName:Ljava/lang/String;

    return-void
.end method

.method public static parseZRCMeetingListItems(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPReserveMeeting;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->parseZRCMeetingListItems(Ljava/util/List;Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseZRCMeetingListItems(Ljava/util/List;Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPReserveMeeting;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 54
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v2

    .line 60
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->endOfDay()J

    move-result-wide v4

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 62
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 63
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_1
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 67
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->endOfDay()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 68
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v2, v3}, Lus/zoom/zrp/util/ZRPUtils;->minsOfDay(J)I

    move-result v2

    .line 69
    :goto_2
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->endOfDay()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    const/16 v3, 0x5a0

    goto :goto_3

    :cond_4
    invoke-static {v4, v5}, Lus/zoom/zrp/util/ZRPUtils;->minsOfDay(J)I

    move-result v3

    :goto_3
    if-eqz p1, :cond_5

    .line 72
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v4

    invoke-static {v4, v1, p1}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 74
    :cond_5
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v4

    invoke-static {v4, v1}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_4
    new-instance v4, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    invoke-direct {v4, v2, v3, v1}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseZRCMeetingListItems(Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/util/List;
    .locals 1
    .param p0    # Lus/zoom/zrp/model/ZRPRoomInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrp/reserve/ZRPReserveMeeting;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomMeetings()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->parseZRCMeetingListItems(Ljava/util/List;Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lus/zoom/zrp/reserve/ZRPReserveMeeting;

    invoke-virtual {p0, p1}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->compareTo(Lus/zoom/zrp/reserve/ZRPReserveMeeting;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrp/reserve/ZRPReserveMeeting;)I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result v0

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->getStartMins()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getEndMins()I
    .locals 1

    .line 31
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->endMins:I

    return v0
.end method

.method public getMeetingName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->meetingName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMins()I
    .locals 1

    .line 27
    iget v0, p0, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->startMins:I

    return v0
.end method
