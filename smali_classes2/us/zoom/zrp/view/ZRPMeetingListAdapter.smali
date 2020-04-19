.class public Lus/zoom/zrp/view/ZRPMeetingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZRPMeetingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;,
        Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private checkInAnimRunning:Z

.field private checkingInPosition:I

.field private clickedItemMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private inflater:Landroid/view/LayoutInflater;

.field private listener:Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;

.field private pendingMeetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field

.field private upcomingMeetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->onListItemClicked(Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListItemView;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->onCheckInClicked(Lus/zoom/zrp/view/ZRPMeetingListItemView;I)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrp/view/ZRPMeetingListAdapter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->onCheckInAnimationEnded()V

    return-void
.end method

.method private onCheckInAnimationEnded()V
    .locals 2

    .line 133
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->clickedItemMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 134
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setCheckInStatus(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->clickedItemMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    :cond_0
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkInAnimRunning:Z

    .line 138
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->pendingMeetingList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->setUpcomingMeetingList(Ljava/util/List;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->setUpcomingMeetingList(Ljava/util/List;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->listener:Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;->onCheckInAnimationEnded()V

    :cond_2
    return-void
.end method

.method private onCheckInClicked(Lus/zoom/zrp/view/ZRPMeetingListItemView;I)V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkInAnimRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->clickedItemMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-nez v0, :cond_1

    return-void

    .line 124
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->checkInCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkInAnimRunning:Z

    .line 126
    iput p2, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkingInPosition:I

    .line 127
    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->startCheckInAnimation()V

    .line 129
    :cond_2
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->clickCheckInButton()V

    return-void
.end method

.method private onListItemClicked(Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkInAnimRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getMeetingItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->listener:Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0, p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;->onItemClicked(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCheckingInPosition()I
    .locals 1

    .line 163
    iget v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkingInPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->upcomingMeetingList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMeetingItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->upcomingMeetingList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->upcomingMeetingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCheckInAnimRunning()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkInAnimRunning:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    check-cast p1, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;I)V
    .locals 1
    .param p1    # Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->upcomingMeetingList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 59
    iget-object v0, p1, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->meetingListItemView:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-virtual {v0, p2}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->setMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 60
    invoke-static {}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->getInstance()Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->parseMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p2

    .line 61
    iget-object v0, p1, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->meetingListItemView:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-virtual {v0, p2}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->setViewType(I)V

    .line 62
    iget-object p2, p1, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->meetingListItemView:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    new-instance v0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;-><init>(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p2, p1, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->meetingListItemView:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    new-instance v0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;-><init>(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->setListener(Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    iget-object p2, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lus/zoom/zrcbox/R$layout;->zrp_meeting_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setListener(Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->listener:Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;

    return-void
.end method

.method public setUpcomingMeetingList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->checkInAnimRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->pendingMeetingList:Ljava/util/List;

    .line 98
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->upcomingMeetingList:Ljava/util/List;

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 101
    :cond_0
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->pendingMeetingList:Ljava/util/List;

    :goto_0
    return-void
.end method
