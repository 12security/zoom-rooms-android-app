.class public Lus/zoom/zrc/view/MeetingRedPointController;
.super Landroidx/databinding/BaseObservable;
.source "MeetingRedPointController.java"


# static fields
.field private static final MASK_CHANGE_CONTENT:I = 0x2

.field private static final MASK_CHAT:I = 0x4

.field private static final MASK_PARTICIPANTS:I = 0x1


# instance fields
.field private fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

.field private isChangeContentClicked:Z

.field private meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

.field private notification:Lus/zoom/zrc/base/notification/INotification;

.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private redPointFlag:I

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    .line 35
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 36
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingChatMessageManager()Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    .line 40
    new-instance v0, Lus/zoom/zrc/view/MeetingRedPointController$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingRedPointController$1;-><init>(Lus/zoom/zrc/view/MeetingRedPointController;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 56
    new-instance v0, Lus/zoom/zrc/view/MeetingRedPointController$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingRedPointController$2;-><init>(Lus/zoom/zrc/view/MeetingRedPointController;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->notification:Lus/zoom/zrc/base/notification/INotification;

    .line 70
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->initStatus()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MeetingRedPointController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->updateChangeViewStatus()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MeetingRedPointController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->updateParticipantStatus()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/MeetingRedPointController;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingRedPointController;->onUpdateMessageCount(I)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/MeetingRedPointController;Ljava/util/List;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingRedPointController;->onNewChatMessage(Ljava/util/List;)V

    return-void
.end method

.method private initStatus()V
    .locals 3

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 87
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageInitCount:Lus/zoom/zrc/base/notification/ModelEvent;

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingRedPointController;->notification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 88
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageToDisplay:Lus/zoom/zrc/base/notification/ModelEvent;

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingRedPointController;->notification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 90
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->updateChangeViewStatus()V

    .line 91
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->updateParticipantStatus()V

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->getNotifiedMessageCount()I

    move-result v0

    .line 94
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->getCachedMessagesToDisplay()Ljava/util/TreeMap;

    move-result-object v1

    if-gtz v0, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method

.method private isMeetingChatFragmentShowing()Z
    .locals 3

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    const-class v2, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onNewChatMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->isMeetingChatFragmentShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method

.method private onUpdateMessageCount(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingRedPointController;->isMeetingChatFragmentShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method

.method private setFlag(IZ)V
    .locals 1

    .line 110
    iget v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 115
    iget p2, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    or-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    goto :goto_1

    .line 117
    :cond_2
    iget p2, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    .line 119
    :goto_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->redPointFlag:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingRedPointController;->notifyPropertyChanged(I)V

    return-void
.end method

.method private updateChangeViewStatus()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->isChangeContentClicked:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldShowChangeContent()Z

    move-result v0

    const/4 v1, 0x2

    .line 142
    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method

.method private updateParticipantStatus()V
    .locals 2

    .line 146
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->hasUserInSilentMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->hasUserRaisingHand()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method


# virtual methods
.method public attachFragmentManager(Lus/zoom/zrc/MeetingActivity;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/MeetingActivity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p1}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-void
.end method

.method public detachFragmentManager()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-void
.end method

.method public getRedPointFlag()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 106
    iget v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    return v0
.end method

.method public onClickChangeContent()V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->isChangeContentClicked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->isChangeContentClicked:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method

.method onClickChat()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/view/MeetingRedPointController;->setFlag(IZ)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 99
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 100
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingRedPointController;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 101
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method shouldShowOnChangeContent()Z
    .locals 1

    .line 196
    iget v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldShowOnChat()Z
    .locals 1

    .line 192
    iget v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowOnMore()Z
    .locals 1

    .line 188
    iget v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldShowOnParticipant()Z
    .locals 2

    .line 200
    iget v0, p0, Lus/zoom/zrc/view/MeetingRedPointController;->redPointFlag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
