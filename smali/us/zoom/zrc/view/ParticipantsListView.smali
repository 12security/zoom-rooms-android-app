.class public Lus/zoom/zrc/view/ParticipantsListView;
.super Landroid/widget/FrameLayout;
.source "ParticipantsListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;
.implements Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;
.implements Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;,
        Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParticipantsListView"


# instance fields
.field private MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private generalParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/GeneralParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

.field private hideSelfView:Landroid/view/View;

.field private listener:Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;

.field private mClaimHost:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private mLLMenuBar:Landroid/widget/LinearLayout;

.field private mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private mMuteAll:Landroid/widget/TextView;

.field private mParticipantNum:Landroid/widget/TextView;

.field private mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private mUnmuteAll:Landroid/widget/TextView;

.field private manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

.field private moreList:Landroid/widget/TextView;

.field private onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private pinnedUserChangedNotification:Lus/zoom/zrc/base/notification/INotification;

.field private ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

.field private removeFragment:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

.field private rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

.field private showAudioParticipant:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lus/zoom/zrc/view/ParticipantsListView$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ParticipantsListView$1;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 103
    new-instance v0, Lus/zoom/zrc/view/ParticipantsListView$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ParticipantsListView$2;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->pinnedUserChangedNotification:Lus/zoom/zrc/base/notification/INotification;

    .line 142
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance p2, Lus/zoom/zrc/view/ParticipantsListView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantsListView$1;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantsListView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 103
    new-instance p2, Lus/zoom/zrc/view/ParticipantsListView$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantsListView$2;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantsListView;->pinnedUserChangedNotification:Lus/zoom/zrc/base/notification/INotification;

    .line 137
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance p2, Lus/zoom/zrc/view/ParticipantsListView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantsListView$1;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantsListView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 103
    new-instance p2, Lus/zoom/zrc/view/ParticipantsListView$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantsListView$2;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantsListView;->pinnedUserChangedNotification:Lus/zoom/zrc/base/notification/INotification;

    .line 132
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantCount()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantMenuBar()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/ParticipantsListView;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mParticipantNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantsListView;->listener:Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantListPtFrameLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantsListView;->ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/ParticipantsListView;Landroid/graphics/RectF;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ParticipantsListView;->isInRectScope(Landroid/graphics/RectF;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private claimHost()V
    .locals 3

    .line 404
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getMeetingActivity()Lus/zoom/zrc/MeetingActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ParticipantsListView"

    const-string v1, "claimHost meetingActivity == null"

    const/4 v2, 0x0

    .line 406
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 409
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/MeetingActivity;->onClickClaimHost()V

    return-void
.end method

.method private getMeetingActivity()Lus/zoom/zrc/MeetingActivity;
    .locals 2

    .line 712
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 713
    instance-of v1, v0, Lus/zoom/zrc/MeetingActivity;

    if-eqz v1, :cond_0

    .line 714
    check-cast v0, Lus/zoom/zrc/MeetingActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 159
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mContext:Landroid/content/Context;

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mContext:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCParticipantItem:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 161
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    sget v1, Lus/zoom/zrcbox/R$layout;->participants_list_view:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    new-instance v1, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;

    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;-><init>(Lus/zoom/zrc/view/ParticipantsListView;Landroid/content/Context;)V

    const/4 v2, -0x1

    .line 164
    invoke-virtual {v1, v0, v2, v2}, Lus/zoom/zrc/view/ParticipantsListView$ParticipantsListViewFrameLayout;->addView(Landroid/view/View;II)V

    .line 165
    invoke-virtual {p0, v1, v2, v2}, Lus/zoom/zrc/view/ParticipantsListView;->addView(Landroid/view/View;II)V

    .line 166
    sget v1, Lus/zoom/zrcbox/R$id;->lv_participants_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    .line 167
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-virtual {v1, p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->setOnMeetingParticipantOperateListener(Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;)V

    .line 168
    sget v1, Lus/zoom/zrcbox/R$id;->ic_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 169
    sget v2, Lus/zoom/zrcbox/R$id;->iv_mute_all:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->mMuteAll:Landroid/widget/TextView;

    .line 170
    sget v2, Lus/zoom/zrcbox/R$id;->iv_unmute_all:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnmuteAll:Landroid/widget/TextView;

    .line 171
    sget v2, Lus/zoom/zrcbox/R$id;->iv_more_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    .line 172
    sget v2, Lus/zoom/zrcbox/R$id;->ll_menu_bar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLLMenuBar:Landroid/widget/LinearLayout;

    .line 173
    sget v2, Lus/zoom/zrcbox/R$id;->iv_participants_num:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->mParticipantNum:Landroid/widget/TextView;

    .line 174
    sget v2, Lus/zoom/zrcbox/R$id;->claim_host:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->mClaimHost:Landroid/view/View;

    .line 175
    sget v2, Lus/zoom/zrcbox/R$id;->show_audio_participant:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    .line 176
    sget v2, Lus/zoom/zrcbox/R$id;->hide_my_video:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    .line 178
    sget v2, Lus/zoom/zrcbox/R$id;->rv_participants:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 180
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 181
    new-instance v0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-direct {v0, p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    .line 182
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-virtual {p1, v4}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->setHasStableIds(Z)V

    .line 183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    .line 184
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    invoke-virtual {p1, v0, v3, v3}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->setGeneralParticipantsAndListInfos(Ljava/util/List;II)V

    .line 185
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->setOnParticipantOperateListener(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;)V

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mMuteAll:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnmuteAll:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mClaimHost:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-static {}, Lus/zoom/zrc/utils/ObserverCallBackManager;->getInstant()Lus/zoom/zrc/utils/ObserverCallBackManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    .line 195
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/utils/ObserverCallBackManager;->registerObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V

    .line 196
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanMuteOnEntry()Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->lock_meeting:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mParticipantNum:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 201
    new-instance v0, Lus/zoom/zrc/view/ParticipantsListView$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ParticipantsListView$3;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 212
    new-instance p1, Lus/zoom/zrc/view/ParticipantsListView$4;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/ParticipantsListView$4;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 223
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-class v0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->removeFragment:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    return-void
.end method

.method private isInRectScope(Landroid/graphics/RectF;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 670
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 673
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    int-to-float v1, v1

    cmpg-float v2, v2, v1

    if-lez v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v1

    if-lez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v1

    if-lez v2, :cond_2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method private showDisableUnmuteDialog()V
    .locals 3

    .line 498
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    return-void

    .line 503
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lus/zoom/zrcbox/R$string;->allow_attendees_unmute_themselves_alert_title:I

    .line 504
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->alert_attendees_unmute_themselves_alert_allow:I

    new-instance v2, Lus/zoom/zrc/view/ParticipantsListView$10;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantsListView$10;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 505
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->allow_attendees_unmute_themselves_alert_not_allow:I

    new-instance v2, Lus/zoom/zrc/view/ParticipantsListView$9;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantsListView$9;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 513
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 521
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 524
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showLockMeetingDialog()V
    .locals 3

    .line 438
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    return-void

    .line 442
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lus/zoom/zrcbox/R$string;->lock_meeting_prompt:I

    .line 443
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v2, Lus/zoom/zrc/view/ParticipantsListView$6;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantsListView$6;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 444
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v2, Lus/zoom/zrc/view/ParticipantsListView$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantsListView$5;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 451
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 460
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showParticipantRemovalConfirmationDialog(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 2

    .line 702
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->removeFragment:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->removeFragment:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    .line 705
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 706
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 707
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->removeFragment:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 708
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->removeFragment:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-class v1, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showUnlockMeetingDialog()V
    .locals 3

    .line 468
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    return-void

    .line 473
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_meeting_prompt:I

    .line 474
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v2, Lus/zoom/zrc/view/ParticipantsListView$8;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantsListView$8;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 475
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v2, Lus/zoom/zrc/view/ParticipantsListView$7;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantsListView$7;-><init>(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 482
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 491
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateParticipantCount()V
    .locals 6

    .line 228
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mParticipantNum:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 234
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getTotalVisibleParticipantNumber()I

    move-result v0

    .line 236
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mParticipantNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->participants_number:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateParticipantMenuBar()V
    .locals 6

    .line 270
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLLMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mClaimHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 276
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->dismissShowingAlertDialogs()V

    .line 277
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLLMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShowAudioParticipant()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    .line 286
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsHideSelfVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    goto :goto_1

    .line 290
    :cond_2
    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :goto_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportClaimHost()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isBillingPlanEnded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mClaimHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    goto :goto_2

    .line 298
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mClaimHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-nez v3, :cond_4

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->participant_list_bg:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundResource(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateSelfViewState()V
    .locals 2

    .line 425
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsHideSelfVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 429
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->show_self_view:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->hide_self_view:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateShowAudioParticipantState()V
    .locals 2

    .line 413
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShowAudioParticipant()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 416
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isShowAudioParticipant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->hide_none_video_participant:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->show_none_video_participant:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getmListParticipantPop()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public dismissShowingAlertDialogs()V
    .locals 2

    .line 610
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->dismiss()V

    .line 613
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 617
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mDisableUnmuteDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 124
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 125
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 126
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 127
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getListener()Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;
    .locals 1

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->listener:Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 147
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 148
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 149
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PinVideoUserChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->pinnedUserChangedNotification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 150
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantCount()V

    .line 151
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantList()V

    .line 152
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantMenuBar()V

    .line 153
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateSelfViewState()V

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateShowAudioParticipantState()V

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mMuteAll:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 384
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->muteAllAudio(Z)I

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnmuteAll:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 386
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/ConfApp;->muteAllAudio(Z)I

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 388
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanMuteOnEntry()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 389
    new-instance p1, Lus/zoom/zrc/view/Participants_More_PopupView;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lus/zoom/zrc/view/Participants_More_PopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    .line 390
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    invoke-static {p1, v0, v1, v2}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->onClickLockMeeting()V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mClaimHost:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 395
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->claimHost()V

    goto :goto_0

    .line 396
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->hideSelfView:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 397
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->onClickSelfView()V

    goto :goto_0

    .line 398
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->showAudioParticipant:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 399
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->onClickShowAudioParticipant()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onClickAdmitAllSilentParticipants()V
    .locals 1

    .line 678
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestSilentModeAdmitAll()Z

    return-void
.end method

.method public onClickAdmitSilentParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 3

    .line 683
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->requestPutOutSilentMode([I)Z

    return-void
.end method

.method public onClickAllowAttendeesUnmuteThemselves()V
    .locals 2

    .line 582
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSupportAllowAttendeesUnmuteThemselves()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCanAttendeesUnmuteThemselves()Z

    move-result v0

    .line 585
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->requestAllowAttendeesUnmuteThemselves(Z)Z

    return-void
.end method

.method public onClickClaimHost()V
    .locals 0

    .line 567
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->claimHost()V

    return-void
.end method

.method public onClickLockMeeting()V
    .locals 1

    .line 534
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isMeetingLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->showUnlockMeetingDialog()V

    goto :goto_0

    .line 537
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->showLockMeetingDialog()V

    :goto_0
    return-void
.end method

.method public onClickLowerAllHand()V
    .locals 3

    .line 577
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/model/Model;->requestRaiseHand(IZ)Z

    return-void
.end method

.method public onClickMuteOnEntry()V
    .locals 3

    .line 543
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isOnEntryMuted()Z

    move-result v0

    .line 544
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/ConfApp;->muteOnEntry(Z)I

    .line 545
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSupportAllowAttendeesUnmuteThemselves()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 548
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->showDisableUnmuteDialog()V

    :cond_1
    return-void
.end method

.method public onClickPutMeetingParticipantInSilentMode(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 3

    .line 693
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->requestPutInSilentMode([I)Z

    return-void
.end method

.method public onClickRemoveMeetingParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 698
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->showParticipantRemovalConfirmationDialog(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    return-void
.end method

.method public onClickRemoveSilentParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->showParticipantRemovalConfirmationDialog(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    return-void
.end method

.method public onClickSelfView()V
    .locals 2

    .line 559
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden()Z

    move-result v0

    .line 561
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/PTApp;->setMyVideoHidden(Z)I

    :cond_0
    return-void
.end method

.method public onClickShowAudioParticipant()V
    .locals 2

    .line 572
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isShowAudioParticipant()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->requestShowAudioParticipants(Z)Z

    return-void
.end method

.method public onClickWaitingOnEntry()V
    .locals 2

    .line 554
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->isOnEntryWaiting()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->requestEnableWaitingRoomOnEntry(Z)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 370
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 371
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->onModelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 372
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 373
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->dismiss()V

    .line 375
    iput-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    :cond_0
    const-string v0, ""

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    .line 377
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateAllowAttendeesUnmuteThemselves()V
    .locals 1

    .line 353
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->onUpdateAllowAttendeesUnmuteThemselves()V

    :cond_0
    return-void
.end method

.method public onUpdateGenericSettings()V
    .locals 2

    .line 359
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden()Z

    move-result v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->onUpdateShowSelfView(Z)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateSelfViewState()V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->onUpdateIsOnEntryMuted(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateIsOnEntryWaiting(Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->onUpdateIsOnEntryWaiting(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateShowAudioParticipant()V
    .locals 1

    .line 346
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->onUpdateShowAudioParticipant()V

    .line 349
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsListView;->updateShowAudioParticipantState()V

    return-void
.end method

.method public registerObserver()V
    .locals 1

    .line 595
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    if-nez v0, :cond_0

    .line 596
    invoke-static {}, Lus/zoom/zrc/utils/ObserverCallBackManager;->getInstant()Lus/zoom/zrc/utils/ObserverCallBackManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    .line 598
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/utils/ObserverCallBackManager;->registerObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V

    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->listener:Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;

    return-void
.end method

.method public unregisterObserver()V
    .locals 1

    .line 589
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, p0}, Lus/zoom/zrc/utils/ObserverCallBackManager;->unregisterObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public updateLockMeetingState(Z)V
    .locals 3

    .line 313
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanMuteOnEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->updateLockMeetingState(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->unlock_meeting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->moreList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->lock_meeting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 325
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->mLockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_3
    if-nez p1, :cond_4

    .line 328
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 329
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView;->mUnlockmeetingDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_4
    return-void
.end method

.method public updateParticipantList()V
    .locals 6

    .line 241
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    new-instance v4, Lus/zoom/zrc/model/GeneralParticipant;

    sget-object v5, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    invoke-direct {v4, v5, v3}, Lus/zoom/zrc/model/GeneralParticipant;-><init>(Lus/zoom/zrc/model/GeneralParticipant$Type;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_1
    new-instance v4, Lus/zoom/zrc/model/GeneralParticipant;

    sget-object v5, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    invoke-direct {v4, v5, v3}, Lus/zoom/zrc/model/GeneralParticipant;-><init>(Lus/zoom/zrc/model/GeneralParticipant$Type;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 258
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    new-instance v3, Lus/zoom/zrc/model/GeneralParticipant;

    sget-object v4, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lus/zoom/zrc/model/GeneralParticipant;-><init>(Lus/zoom/zrc/model/GeneralParticipant$Type;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    new-instance v3, Lus/zoom/zrc/model/GeneralParticipant;

    sget-object v4, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    invoke-direct {v3, v4, v5}, Lus/zoom/zrc/model/GeneralParticipant;-><init>(Lus/zoom/zrc/model/GeneralParticipant$Type;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipants:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->setGeneralParticipantsAndListInfos(Ljava/util/List;II)V

    .line 264
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->generalParticipantsAdapter:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->notifyDataSetChanged()V

    .line 266
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->ptFrameLayout:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->updateParticipant()V

    return-void
.end method

.method public updateZRCParticipantChanged()V
    .locals 1

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView;->MorePopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->onZRCParticipantChanged()V

    :cond_0
    return-void
.end method
