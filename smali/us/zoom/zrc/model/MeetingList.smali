.class public Lus/zoom/zrc/model/MeetingList;
.super Ljava/util/ArrayList;
.source "MeetingList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public containsMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 2

    .line 17
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 18
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public deleteMeetingListItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 37
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/MeetingList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public insertMeetingListItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 1

    .line 26
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/MeetingList;->containsMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/MeetingList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 29
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public upcomingMeetingList()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 54
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gez v4, :cond_0

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
