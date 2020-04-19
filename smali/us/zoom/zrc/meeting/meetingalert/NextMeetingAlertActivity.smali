.class public Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "NextMeetingAlertActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NextMeetingAlertActivity"

.field private static final UPDATE_INTERVAL:J = 0x2710L


# instance fields
.field private checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

.field private currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private final dismissTask:Ljava/lang/Runnable;

.field private mDateTV:Landroid/widget/TextView;

.field private mMonitorHandler:Landroid/os/Handler;

.field private mServiceProviderTV:Landroid/widget/TextView;

.field private mTaskHandler:Landroid/os/Handler;

.field private mTimeTV:Landroid/widget/TextView;

.field private final mTimeUpdateTask:Ljava/lang/Runnable;

.field private mTvMeetingName:Landroid/widget/TextView;

.field private mTvStartTime:Landroid/widget/TextView;

.field private mUpdateHandler:Landroid/os/Handler;

.field public manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private root:Landroid/view/ViewGroup;

.field private startBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mUpdateHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mMonitorHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTaskHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$1;-><init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissTask:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$2;-><init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTimeUpdateTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;J)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTimeUpdateTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Landroid/os/Handler;
    .locals 0

    .line 96
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 0

    .line 96
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 96
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->root:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->notifyZR(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->load(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method private static calculateSecondsWithin1Min()J
    .locals 4

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private dismissAlert(J)V
    .locals 4

    .line 419
    sget-object v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissAlert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_1

    .line 425
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/PTApp;->closeUpcomingMeetingAlert()I

    .line 426
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnController(Z)V

    .line 427
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnTV(Z)V

    .line 428
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setCurrentMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 429
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->finish()V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private static getColorByTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "#000000"

    .line 451
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 453
    :try_start_0
    sget-object v1, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v2, "Z$"

    const-string v3, "+00:00"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 457
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string p0, "#ff9933"

    goto :goto_1

    :cond_2
    const-string p0, "#eb5959"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 470
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private load(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTvMeetingName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mServiceProviderTV:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    .line 227
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mServiceProviderTV:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mServiceProviderTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getServiceProviderName(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTvStartTime:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getStartTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->getColorByTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 239
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 242
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->updateStartButton(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 245
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->updateTimeAndDate()V

    return-void
.end method

.method private notifyZR(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 7
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 366
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    .line 367
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isNotUpcomingMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v2

    .line 368
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->formatTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v6, p1

    .line 366
    invoke-virtual/range {v1 .. v6}, Lus/zoom/zrcsdk/PTApp;->showUpcomingMeetingAlert(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    return-void
.end method

.method private onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidThirdPartyMeetingAndAllowed(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    sget-object p1, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->TAG:Ljava/lang/String;

    const-string v0, "!meetingInfoProxy.isValidThirdPartyMeetingAndAllowed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 408
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAutoStartScheduleMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 413
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    const-wide/16 v0, 0x0

    .line 415
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    return-void
.end method

.method private onCheckInConfigureChanged()V
    .locals 2

    .line 335
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCCheckInOption;->getStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 337
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->calculateReleaseTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->calculateReleaseTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    :goto_0
    return-void
.end method

.method private setMeetingBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 437
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->startBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->shouldShowCheckedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->setButtonCheckedIn()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->setButtonNormal()V

    :goto_0
    return-void
.end method

.method private startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 270
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    const-wide/16 v0, 0x0

    .line 272
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    return-void
.end method

.method private updateMeetingList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getUpdatedMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 349
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 350
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    return-void

    .line 354
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    iget-object v2, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {p1, v2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 355
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    :cond_1
    return-void
.end method

.method private updateStartButton(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2

    .line 360
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->startBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->setMeetingBtnText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 142
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget p1, Lus/zoom/zrcbox/R$layout;->next_meeting_alert:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->setContentView(I)V

    .line 144
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    .line 146
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->checkIsInit()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getCurrentMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-nez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->finish()V

    .line 156
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$id;->tv_meeting_sp:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mServiceProviderTV:Landroid/widget/TextView;

    .line 157
    sget p1, Lus/zoom/zrcbox/R$id;->root:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->root:Landroid/view/ViewGroup;

    .line 158
    sget p1, Lus/zoom/zrcbox/R$id;->tv_meeting_name:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTvMeetingName:Landroid/widget/TextView;

    .line 159
    sget p1, Lus/zoom/zrcbox/R$id;->tv_start_time:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTvStartTime:Landroid/widget/TextView;

    .line 160
    sget p1, Lus/zoom/zrcbox/R$id;->nma_date_tv:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mDateTV:Landroid/widget/TextView;

    .line 161
    sget p1, Lus/zoom/zrcbox/R$id;->nma_time_tv:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTimeTV:Landroid/widget/TextView;

    .line 164
    sget p1, Lus/zoom/zrcbox/R$id;->btn_start:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->startBtn:Landroid/widget/Button;

    .line 165
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->startBtn:Landroid/widget/Button;

    new-instance v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$3;-><init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance p1, Lus/zoom/zrc/meeting/CheckInButtonHelper;

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->startBtn:Landroid/widget/Button;

    invoke-direct {p1, v0}, Lus/zoom/zrc/meeting/CheckInButtonHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    .line 174
    sget p1, Lus/zoom/zrcbox/R$id;->tv_dismiss:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$4;-><init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->load(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 183
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 184
    invoke-virtual {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    const/4 v1, 0x0

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->ShowUpcomingMeetingAlertResult:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 189
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->currentTimeOverStartTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mMonitorHandler:Landroid/os/Handler;

    new-instance v2, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$5;-><init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setNextMeetingAlertActivity(Landroid/app/Activity;)V

    .line 205
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    new-instance v1, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity$6;-><init>(Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 285
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onDestroy()V

    .line 286
    sget-object v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mMonitorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setNextMeetingAlertActivity(Landroid/app/Activity;)V

    .line 297
    iput-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->manager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 377
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 378
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ShowUpcomingMeetingAlertResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    const-string p1, "result"

    .line 379
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "isDelayed"

    .line 383
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 385
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->root:Landroid/view/ViewGroup;

    const-string p2, "#eb5959"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnAskToJoinThirdPartyMeeting:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_3

    const-string p1, "result"

    .line 388
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 389
    sget-object v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAskToJoinThirdPartyMeeting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    return-void

    .line 393
    :cond_2
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 394
    invoke-direct {p0, p2}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 2

    .line 302
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 303
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->h323Enabled:I

    if-ne p1, p2, :cond_0

    .line 304
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->updateStartButton(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto :goto_0

    .line 305
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    if-ne p1, p2, :cond_1

    .line 306
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->updateMeetingList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 307
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->airPlayBlackMagicStatus:I

    const-wide/16 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 308
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 309
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    goto :goto_0

    .line 311
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingStatus:I

    if-ne p1, p2, :cond_5

    .line 312
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    return-void

    .line 327
    :cond_4
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->dismissAlert(J)V

    goto :goto_0

    .line 328
    :cond_5
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->checkInOption:I

    if-ne p1, p2, :cond_6

    .line 329
    invoke-direct {p0}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->onCheckInConfigureChanged()V

    .line 330
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->currentMeeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {p0, p1}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->updateStartButton(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 277
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 280
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTimeUpdateTask:Ljava/lang/Runnable;

    invoke-static {}, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->calculateSecondsWithin1Min()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTimeAndDate()V
    .locals 3

    .line 250
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 251
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "H:mm"

    goto :goto_0

    :cond_0
    const-string v1, "h:mm aa"

    .line 253
    :goto_0
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEEE, MMMM d"

    .line 256
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v2, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mTimeTV:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;->mDateTV:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
