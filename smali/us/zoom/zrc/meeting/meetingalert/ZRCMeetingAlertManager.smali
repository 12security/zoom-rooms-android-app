.class public Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;
.super Ljava/lang/Object;
.source "ZRCMeetingAlertManager.java"


# instance fields
.field private currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private ignoredMeetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field

.field private isMeetingAlertOnController:Z

.field private isMeetingAlertOnTV:Z

.field private nextMeetingAlertActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnTV:Z

    .line 25
    iput-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnController:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    return-void
.end method

.method private isMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 78
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 84
    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnController:Z

    .line 213
    iput-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnTV:Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->nextMeetingAlertActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 1

    .line 32
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object v0
.end method

.method public getUpdatedMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_4

    .line 99
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 105
    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public ignoreCurrentMeeting()V
    .locals 2

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isActivityPresented()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->nextMeetingAlertActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIgnoredMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public isMeetingAlertOn()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnController:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnTV:Z

    if-eqz v0, :cond_0

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

.method public isMeetingAlertOnController()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnController:Z

    return v0
.end method

.method public isMeetingAlertOnTV()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnTV:Z

    return v0
.end method

.method public nextMeeting(Ljava/util/List;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 164
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 167
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 170
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->filterNextAlertMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 175
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 176
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 177
    iget-object v4, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    move-object v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 183
    const-class v2, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v3, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public onMeetingListChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 203
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    iget-object v4, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public setCurrentMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-void
.end method

.method public setMeetingAlertOnController(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnController:Z

    return-void
.end method

.method public setMeetingAlertOnTV(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOnTV:Z

    return-void
.end method

.method public setNextMeetingAlertActivity(Landroid/app/Activity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->nextMeetingAlertActivity:Landroid/app/Activity;

    return-void
.end method

.method public updateIgnoredMeetingList(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 10

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 131
    :goto_0
    iget-object v4, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 132
    iget-object v4, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 133
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/32 v7, -0xea60

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_2

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1, v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoredMeetingList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
