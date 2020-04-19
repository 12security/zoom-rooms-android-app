.class public Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "PreMeetingListFragment.java"

# interfaces
.implements Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;


# instance fields
.field private adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

.field private currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private lastUpdateTime:J

.field private mMeetingListPromptView:Landroid/widget/TextView;

.field private mMeetingNoneSystemDate:Landroid/widget/TextView;

.field private mMeetingNoneSystemTime:Landroid/widget/TextView;

.field private mMeetingNoneView:Landroid/view/View;

.field private mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mMeetingSystemDate:Landroid/widget/TextView;

.field private mMeetingSystemTime:Landroid/widget/TextView;

.field private mMeetingView:Landroid/view/View;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private refreshHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private refreshMeetingListTask:Ljava/lang/Runnable;

.field private refreshTimeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$1;-><init>(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshTimeTask:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$2;-><init>(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshMeetingListTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->formatDateOrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneSystemTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingSystemTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneSystemDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingSystemDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->onCheckInTimer()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshMeetingListTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static formatDateOrTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 322
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onCheckInTimer()V
    .locals 5

    const/4 v0, 0x0

    .line 284
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 285
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

    .line 291
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v2

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-virtual {v4}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->getMeetingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v2, v3, v4}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->updateButton(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private shouldEnableMeetingListFeature()Z
    .locals 4

    .line 298
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isPublicRoomEnabled()Z

    move-result v0

    .line 299
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private updateMeetingList()V
    .locals 9

    .line 143
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->shouldEnableMeetingListFeature()Z

    move-result v0

    .line 148
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v2

    const/16 v3, 0x139a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v2, :cond_2

    const/16 v3, 0x139b

    if-eq v3, v2, :cond_2

    const/16 v3, 0x13a7

    if-eq v3, v2, :cond_2

    const/16 v3, 0x13a8

    if-eq v3, v2, :cond_2

    const/16 v3, 0x13a9

    if-eq v3, v2, :cond_2

    const/16 v3, 0x13aa

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 161
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v6

    if-eqz v6, :cond_4

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    .line 164
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 166
    :cond_4
    :goto_2
    iget-object v6, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v4, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v6, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingView:Landroid/view/View;

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_c

    .line 170
    sget v4, Lus/zoom/zrcbox/R$string;->no_meeting_prompt:I

    invoke-virtual {p0, v4}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_7

    const-string v4, ""

    goto/16 :goto_5

    .line 173
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    if-nez v0, :cond_8

    .line 174
    sget v0, Lus/zoom/zrcbox/R$string;->alert_add_calendar:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 175
    :cond_8
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_refresh_token_expired:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_5

    .line 201
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_no_mailbox:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    .line 197
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_impersonation:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    .line 193
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_delegate:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    .line 189
    :pswitch_3
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_401:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    .line 185
    :pswitch_4
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_403:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    .line 181
    :pswitch_5
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_401:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    .line 204
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    sget v0, Lus/zoom/zrcbox/R$string;->no_meeting_prompt:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    :cond_b
    :goto_5
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingListPromptView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 210
    :cond_c
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    if-nez v0, :cond_d

    goto :goto_7

    .line 214
    :cond_d
    invoke-virtual {v0, v1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->updateMeetingList(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->notifyDataSetChanged()V

    :goto_6
    return-void

    :cond_e
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x139a
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13a7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRefreshStatus()V
    .locals 2

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 222
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 223
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_list_none_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneView:Landroid/view/View;

    .line 224
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_list_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingView:Landroid/view/View;

    .line 225
    sget p2, Lus/zoom/zrcbox/R$id;->system_time_hour:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneSystemTime:Landroid/widget/TextView;

    .line 226
    sget p2, Lus/zoom/zrcbox/R$id;->system_time_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneSystemDate:Landroid/widget/TextView;

    .line 227
    sget p2, Lus/zoom/zrcbox/R$id;->tv_meeting_list_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingListPromptView:Landroid/widget/TextView;

    .line 228
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_list_system_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingSystemTime:Landroid/widget/TextView;

    .line 229
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_list_system_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingSystemDate:Landroid/widget/TextView;

    .line 231
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 233
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 234
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListItemDecoration;

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 235
    new-instance p2, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, p3, p0, v1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;-><init>(Landroid/content/Context;Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;Ljava/util/List;)V

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    .line 236
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->adapter:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    sget p2, Lus/zoom/zrcbox/R$id;->ml_srl:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 239
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p3, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment$3;-><init>(Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;)V

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 248
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "H:mm"

    goto :goto_0

    :cond_0
    const-string p2, "h:mm aa"

    .line 249
    :goto_0
    invoke-static {p2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->formatDateOrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "EEEE, MMMM d"

    .line 250
    invoke-static {p3}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->formatDateOrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 251
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneSystemTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingSystemTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingNoneSystemDate:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->mMeetingSystemDate:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshHandler:Landroid/os/Handler;

    iget-object p3, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshTimeTask:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p2

    new-array p3, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 262
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 274
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onDestroyView()V

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->refreshMeetingListTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 280
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onItemSelect(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-void
.end method

.method public onMeetingStart(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 328
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->startMeeting()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 99
    sget-object p2, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    if-ne p2, p1, :cond_0

    .line 100
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->updateMeetingList()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 106
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->publicRoomEnabled:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->listMeetingResult:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->forcePrivateMeeting:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideHostInfoForPrivateMeeting:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->thirdPartyMeetingEnabled:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->appState:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutCountryCode:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneDigitalSignage:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneZRP:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->h323Enabled:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->crcCalloutOnlyEnabled:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarType:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->checkInOption:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    if-ne p1, p2, :cond_1

    .line 125
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->updateRefreshStatus()V

    .line 126
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->updateMeetingList()V

    goto :goto_1

    .line 127
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarRefreshTokenExpired:I

    if-ne p1, p2, :cond_4

    .line 128
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    new-instance p2, Lus/zoom/zrc/model/MeetingList;

    invoke-direct {p2}, Lus/zoom/zrc/model/MeetingList;-><init>()V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->setMeetingList(Lus/zoom/zrc/model/MeetingList;)V

    .line 131
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->updateMeetingList()V

    goto :goto_1

    .line 123
    :cond_3
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->updateMeetingList()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 268
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 269
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->updateMeetingList()V

    return-void
.end method

.method public startMeeting()V
    .locals 3

    .line 304
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 305
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    .line 306
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    sget v1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
