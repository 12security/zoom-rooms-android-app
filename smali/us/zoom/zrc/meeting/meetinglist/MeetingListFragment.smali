.class public Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "MeetingListFragment.java"


# instance fields
.field private count:I

.field private currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private mBtnStart:Landroid/widget/Button;

.field private mCheckInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

.field private mDateTV:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIvLoading:Landroid/widget/ImageView;

.field private mLLHaveMeetings:Landroid/widget/LinearLayout;

.field private mLLNoMeetings:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field private mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

.field private mServiceProviderTV:Landroid/widget/TextView;

.field private mTimerTask:Ljava/lang/Runnable;

.field private mTpMeetingIdTV:Landroid/widget/TextView;

.field private mTvHost:Landroid/widget/TextView;

.field private mTvHostLabel:Landroid/widget/TextView;

.field private mTvMeetingID:Landroid/widget/TextView;

.field private mTvMeetingName:Landroid/widget/TextView;

.field private mTvMeetingStartToEnd:Landroid/widget/TextView;

.field private mTvMeetingTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->count:I

    .line 82
    new-instance v0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$1;-><init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTimerTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)I
    .locals 0

    .line 53
    iget p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->count:I

    return p0
.end method

.method static synthetic access$002(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;I)I
    .locals 0

    .line 53
    iput p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->count:I

    return p1
.end method

.method static synthetic access$008(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)I
    .locals 2

    .line 53
    iget v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->count:I

    return v0
.end method

.method static synthetic access$100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingList()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->announceMeetingListSelectedForAccessibility(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingDetail()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingListHighlight(Z)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateDate(I)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object p0
.end method

.method static synthetic access$602(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object p1
.end method

.method static synthetic access$700(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateStartButton()V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->animateRefreshView()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    return-object p0
.end method

.method private animateRefreshView()V
    .locals 8

    .line 448
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x384

    .line 452
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x0

    .line 453
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 454
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mIvLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private announceMeetingListSelectedForAccessibility(Landroid/view/View;)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 443
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 444
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDate(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 432
    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mDateTV:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->date_of_today:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMeetingDetail()V
    .locals 6

    .line 239
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-nez v0, :cond_1

    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingStartToEnd:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->formatMeetingTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isMeetingIDShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    .line 253
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingID:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingID:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1, v4, v5}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isServiceProviderShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    .line 260
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mServiceProviderTV:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mServiceProviderTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1, v4, v5}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getServiceProviderName(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isThirdPartyMeetingIdShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    .line 265
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTpMeetingIdTV:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTpMeetingIdTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1, v4, v5}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getThirdPartyMeetingNumber(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isHostShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    .line 272
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvHostLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvHost:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvHost:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_a
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateStartButton()V

    return-void
.end method

.method private updateMeetingList()V
    .locals 8

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v1

    const/16 v2, 0x139a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_2

    const/16 v2, 0x139b

    if-eq v2, v1, :cond_2

    const/16 v2, 0x13a7

    if-eq v2, v1, :cond_2

    const/16 v2, 0x13a8

    if-eq v2, v1, :cond_2

    const/16 v2, 0x13a9

    if-eq v2, v1, :cond_2

    const/16 v2, 0x13aa

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 173
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    .line 176
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 178
    :cond_4
    :goto_2
    iget-object v5, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mLLNoMeetings:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    if-eqz v3, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v5, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mLLHaveMeetings:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    const/16 v4, 0x8

    :cond_6
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v3, :cond_b

    .line 183
    sget v3, Lus/zoom/zrcbox/R$string;->no_meeting_prompt:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v4

    if-nez v4, :cond_7

    .line 185
    sget v0, Lus/zoom/zrcbox/R$string;->alert_add_calendar:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 186
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 187
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_refresh_token_expired:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 212
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_no_mailbox:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 208
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_impersonation:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 204
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_delegate:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 200
    :pswitch_3
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_401:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 196
    :pswitch_4
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_403:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 192
    :pswitch_5
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_401:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 215
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    sget v0, Lus/zoom/zrcbox/R$string;->no_meeting_prompt:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_a
    :goto_4
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 221
    :cond_b
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    if-eqz v1, :cond_c

    .line 222
    invoke-virtual {v1, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->setList(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 225
    :cond_c
    new-instance v1, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    .line 226
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->setList(Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    :goto_5
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->dismissWaitingDialog()V

    return-void

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

.method private updateMeetingListHighlight(Z)V
    .locals 5

    .line 460
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    if-nez v0, :cond_1

    return-void

    .line 466
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    return-void

    .line 474
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 476
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    .line 477
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    .line 479
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 476
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 481
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mMeetingListAdapter:Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    const-string p1, "MeetingListFragment"

    const-string v2, "The current recover meeting is %s"

    .line 483
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateStartButton()V
    .locals 3

    .line 283
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnType(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v0

    .line 284
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mBtnStart:Landroid/widget/Button;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mBtnStart:Landroid/widget/Button;

    new-instance v1, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$2;-><init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mCheckInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->shouldShowCheckedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mCheckInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->setButtonCheckedIn()V

    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mCheckInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->setButtonNormal()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 107
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 108
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 117
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 334
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 335
    sget p2, Lus/zoom/zrcbox/R$id;->rl_no_meeting_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mLLNoMeetings:Landroid/widget/RelativeLayout;

    .line 336
    sget p2, Lus/zoom/zrcbox/R$id;->ll_have_meetings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mLLHaveMeetings:Landroid/widget/LinearLayout;

    .line 337
    sget p2, Lus/zoom/zrcbox/R$id;->listview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    .line 338
    sget p2, Lus/zoom/zrcbox/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mDateTV:Landroid/widget/TextView;

    .line 339
    sget p2, Lus/zoom/zrcbox/R$id;->iv_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mIvLoading:Landroid/widget/ImageView;

    .line 340
    sget p2, Lus/zoom/zrcbox/R$id;->tv_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingName:Landroid/widget/TextView;

    .line 341
    sget p2, Lus/zoom/zrcbox/R$id;->tv_time_start_end:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingStartToEnd:Landroid/widget/TextView;

    .line 342
    sget p2, Lus/zoom/zrcbox/R$id;->tv_host:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvHost:Landroid/widget/TextView;

    .line 343
    sget p2, Lus/zoom/zrcbox/R$id;->tv_meeting_id_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingID:Landroid/widget/TextView;

    .line 344
    sget p2, Lus/zoom/zrcbox/R$id;->tv_host_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvHostLabel:Landroid/widget/TextView;

    .line 345
    sget p2, Lus/zoom/zrcbox/R$id;->zoom_meeting_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    .line 346
    sget p2, Lus/zoom/zrcbox/R$id;->btn_start:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mBtnStart:Landroid/widget/Button;

    .line 347
    sget p2, Lus/zoom/zrcbox/R$id;->service_provider_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mServiceProviderTV:Landroid/widget/TextView;

    .line 348
    sget p2, Lus/zoom/zrcbox/R$id;->tp_meeting_id_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTpMeetingIdTV:Landroid/widget/TextView;

    .line 350
    new-instance p2, Lus/zoom/zrc/meeting/CheckInButtonHelper;

    iget-object p3, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mBtnStart:Landroid/widget/Button;

    invoke-direct {p2, p3}, Lus/zoom/zrc/meeting/CheckInButtonHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mCheckInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    .line 352
    sget p2, Lus/zoom/zrcbox/R$id;->btn_refresh:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$3;-><init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mIvLoading:Landroid/widget/ImageView;

    new-instance p3, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$4;-><init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mListView:Landroid/widget/ListView;

    new-instance p3, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;

    invoke-direct {p3, p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$5;-><init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 377
    sget p2, Lus/zoom/zrcbox/R$string;->date_format:I

    invoke-direct {p0, p2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateDate(I)V

    .line 380
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingList()V

    .line 381
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingDetail()V

    const/4 p2, 0x1

    .line 382
    invoke-direct {p0, p2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingListHighlight(Z)V

    .line 385
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTvMeetingTxt:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 386
    new-instance p3, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;

    invoke-direct {p3, p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment$6;-><init>(Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 417
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onDestroy()V

    .line 418
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 420
    iput-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 426
    sget v0, Lus/zoom/zrcbox/R$string;->date_format:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateDate(I)V

    .line 427
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 411
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    .line 412
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 324
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 325
    sget-object p2, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    if-ne p2, p1, :cond_0

    .line 326
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingList()V

    .line 327
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingDetail()V

    const/4 p1, 0x1

    .line 328
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingListHighlight(Z)V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 122
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 123
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->publicRoomEnabled:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->listMeetingResult:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->forcePrivateMeeting:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideHostInfoForPrivateMeeting:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->thirdPartyMeetingEnabled:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->appState:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutCountryCode:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneDigitalSignage:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneZRP:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->h323Enabled:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->crcCalloutOnlyEnabled:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarType:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->checkInOption:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarRefreshTokenExpired:I

    if-ne p1, p2, :cond_3

    .line 145
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    new-instance p2, Lus/zoom/zrc/model/MeetingList;

    invoke-direct {p2}, Lus/zoom/zrc/model/MeetingList;-><init>()V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->setMeetingList(Lus/zoom/zrc/model/MeetingList;)V

    .line 148
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingList()V

    .line 149
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingDetail()V

    .line 150
    invoke-direct {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingListHighlight(Z)V

    goto :goto_1

    .line 141
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingList()V

    .line 142
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingDetail()V

    .line 143
    invoke-direct {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateMeetingListHighlight(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 403
    sget v0, Lus/zoom/zrcbox/R$string;->date_format:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->updateDate(I)V

    .line 405
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 406
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;->mTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
