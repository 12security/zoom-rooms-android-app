.class public Lus/zoom/zrc/model/MeetingChatMessageManager;
.super Landroidx/databinding/BaseObservable;
.source "MeetingChatMessageManager.java"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# static fields
.field private static final REQUEST_PAGE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MeetingChatMessageManager"


# instance fields
.field private confApp:Lus/zoom/zrcsdk/ConfApp;

.field private isShowMeetingChatListOnZR:Z

.field private isShowMeetingChatNotificationOnZR:Z

.field private notifiedMessageCount:I

.field private originalMessages:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private realStartIndex:I

.field private requestingStartIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->originalMessages:Ljava/util/TreeMap;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    .line 37
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    .line 39
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->confApp:Lus/zoom/zrcsdk/ConfApp;

    return-void
.end method

.method public static isMeetingChatEnabled()Z
    .locals 4

    .line 42
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MeetingChatMessageManager"

    const-string v1, "updateChatIcon meetingInfo == null"

    const/4 v2, 0x0

    .line 44
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 47
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isMeetingChatEnabled()Z

    move-result v0

    return v0
.end method

.method private updateOriginalMessages(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->originalMessages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateRealStartIndex(I)V
    .locals 1

    .line 141
    iput p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    .line 142
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->originalMessages:Ljava/util/TreeMap;

    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method cleanupMeetingData()V
    .locals 2

    .line 57
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->setSupportsMeetingChat(Z)V

    .line 58
    iput v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->originalMessages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    .line 61
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    .line 62
    iput-boolean v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatNotificationOnZR:Z

    .line 63
    iput-boolean v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatListOnZR:Z

    return-void
.end method

.method public getCachedMessagesToDisplay()Ljava/util/TreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->originalMessages:Ljava/util/TreeMap;

    iget v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 185
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 186
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getNotifiedMessageCount()I
    .locals 1

    .line 67
    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    return v0
.end method

.method public isHistorySynced()Z
    .locals 1

    .line 166
    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 3

    .line 159
    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 162
    :cond_0
    iget v2, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isShowMeetingChatListOnZR()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 212
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatListOnZR:Z

    return v0
.end method

.method public isShowMeetingChatNotificationOnZR()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 199
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatNotificationOnZR:Z

    return v0
.end method

.method public onInitUI()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    .line 174
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->getCachedMessagesToDisplay()Ljava/util/TreeMap;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isHistorySynced()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestHistory()V

    .line 178
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method onMeetingChatMessageNotification(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->updateOriginalMessages(Ljava/util/List;)V

    .line 77
    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    .line 78
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->updateRealStartIndex(I)V

    .line 79
    iget v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 82
    :goto_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    if-nez v4, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isPublic()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v5

    iget v6, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    if-le v5, v6, :cond_2

    .line 88
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    :cond_4
    iget p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    add-int/2addr p1, v2

    :goto_2
    if-gt p1, v0, :cond_7

    .line 93
    iget-object v2, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->originalMessages:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    if-nez v2, :cond_5

    goto :goto_3

    .line 97
    :cond_5
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 98
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 101
    :cond_7
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_a

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isHistorySynced()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 105
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageToDisplay:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_4

    .line 107
    :cond_8
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestHistory()V

    goto :goto_4

    .line 113
    :cond_9
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageToDisplay:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    :goto_5
    return-void
.end method

.method onUpdateMessageCount(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 119
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->setSupportsMeetingChat(Z)V

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->setSupportsMeetingChat(Z)V

    .line 123
    iget v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    if-lt v1, p1, :cond_1

    const-string v1, "MeetingChatMessageManager"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateMessageCount() called with: new count = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], old count = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_1
    iput p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    .line 128
    iget p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifiedMessageCount:I

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->updateRealStartIndex(I)V

    return-void
.end method

.method public requestHistory()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    add-int/lit8 v0, v0, -0x14

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    .line 152
    iget v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    .line 155
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->confApp:Lus/zoom/zrcsdk/ConfApp;

    iget v1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestingStartIndex:I

    iget v2, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->realStartIndex:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/ConfApp;->requestMeetingChatMessage(II)Z

    return-void
.end method

.method setShowMeetingChatListOnZR(Z)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatListOnZR:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatListOnZR:Z

    .line 220
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->showMeetingChatListOnZR:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifyPropertyChanged(I)V

    return-void
.end method

.method setShowMeetingChatNotificationOnZR(Z)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatNotificationOnZR:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 206
    :cond_0
    iput-boolean p1, p0, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatNotificationOnZR:Z

    .line 207
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->showMeetingChatNotificationOnZR:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->notifyPropertyChanged(I)V

    return-void
.end method
