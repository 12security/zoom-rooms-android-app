.class public Lus/zoom/zrp/ZRPPanelFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "ZRPPanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/ZRPPanelFragment$Listener;
    }
.end annotation


# static fields
.field public static final SAVED_CHECKING_IN_POSITION:Ljava/lang/String; = "savedCheckingInPosition"

.field public static final SAVED_DELETING_CALENDAR_EVENT_TIME:Ljava/lang/String; = "savedDeletingCalendarEventTime"

.field public static final SAVED_IS_CHECK_IN_ANIMATION_SHOWING:Ljava/lang/String; = "savedIsCheckInAnimationShowing"

.field public static final SAVED_IS_CLOSE_RESERVE_FRAGMENT_ANIMATION_SHOWING:Ljava/lang/String; = "savedIsCloseReserveFragmentAnimationShowing"

.field public static final SAVED_IS_REFRESH_LAYOUT_REFRESHING:Ljava/lang/String; = "savedIsRefreshLayoutRefreshing"

.field public static final SAVED_MANUALLY_REFRESH_MEETING_LIST_TIME:Ljava/lang/String; = "savedManuallyRefreshMeetingListTime"

.field public static final SAVED_STATUS_VIEW_ENLARGED_HEIGHT:Ljava/lang/String; = "savedStatusViewEnlargedHeight"

.field public static final SAVED_STATUS_VIEW_NORMAL_HEIGHT:Ljava/lang/String; = "savedStatusViewNormalHeight"

.field private static final TAG_FOR_FULLY_RESERVED:Ljava/lang/String; = "fully_reserved"

.field private static final TAG_FOR_MEETING_SCHEDULED_FROM_CALENDAR:Ljava/lang/String; = "meeting_scheduled_from_calendar"

.field public static final WEB_ZOOM_HELP_CENTER_CHECKIN:Ljava/lang/String; = "https://support.zoom.us/hc/en-us/articles/360001147163-Check-In-with-Zoom-Rooms"

.field private static final ZRPDeleteCalendarEventResult_Fail:I = 0x3

.field private static final ZRPDeleteCalendarEventResult_FailByDeleteCalendar:I = 0x1

.field private static final ZRPDeleteCalendarEventResult_FailByZoomRoomInMeeting:I = 0x2

.field private static final ZRPDeleteCalendarEventResult_Success:I


# instance fields
.field private alertDialogForFullyReserved:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

.field private alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

.field private dateView:Landroid/widget/TextView;

.field private deletingCalendarEventTime:J

.field private emptyView:Landroid/widget/TextView;

.field private errorView:Landroid/widget/TextView;

.field private isClosingReserveFragment:Z

.field private lastRefreshMeetingListTime:J

.field private listener:Lus/zoom/zrp/ZRPPanelFragment$Listener;

.field private manuallyRefreshMeetingListTime:J

.field private meetingItemForAlert:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

.field private meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

.field private nextRetryConnectingPNSTime:J

.field private refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private reserveButton:Landroid/widget/Button;

.field private roomNameView:Landroid/widget/TextView;

.field private roomStatusStateView:Landroid/widget/TextView;

.field private roomStatusView:Landroid/view/View;

.field private screenOrientation:I

.field private showMeetingList:Z

.field private statusViewEnlargedHeight:I

.field private statusViewNormalHeight:I

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->isClosingReserveFragment:Z

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrp/ZRPPanelFragment$Listener;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->listener:Lus/zoom/zrp/ZRPPanelFragment$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrp/ZRPPanelFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onReserveRoom()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForFullyReserved:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrp/ZRPPanelFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->deleteMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method static synthetic access$1302(Lus/zoom/zrp/ZRPPanelFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->isClosingReserveFragment:Z

    return p1
.end method

.method static synthetic access$200(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrp/view/ZRPMeetingListAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/ZRPPanelFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->onMeetingListItemClicked(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrp/ZRPPanelFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrp/ZRPPanelFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->manuallyRefreshMeetingList()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrp/ZRPPanelFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewNormalHeight:I

    return p0
.end method

.method static synthetic access$602(Lus/zoom/zrp/ZRPPanelFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewNormalHeight:I

    return p1
.end method

.method static synthetic access$700(Lus/zoom/zrp/ZRPPanelFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewEnlargedHeight:I

    return p0
.end method

.method static synthetic access$702(Lus/zoom/zrp/ZRPPanelFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewEnlargedHeight:I

    return p1
.end method

.method static synthetic access$800(Lus/zoom/zrp/ZRPPanelFragment;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrp/ZRPPanelFragment;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method private canReserveRoom()Z
    .locals 5

    .line 745
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isZrpReserveDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 749
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    .line 751
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCUserProfile;->getBillingType()I

    move-result v0

    if-ne v2, v0, :cond_1

    goto :goto_0

    .line 755
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 759
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 769
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    .line 770
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v2

    .line 772
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    .line 776
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportOutRoomDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_0
    return v1

    :cond_7
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x139a
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13a7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private changeRoomStatusPanelBackground(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 624
    invoke-static {}, Lus/zoom/zrc/lightbar/LightBarManager;->getDefault()Lus/zoom/zrc/lightbar/LightBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/lightbar/LightBarManager;->setLightBarBusy()V

    .line 625
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendZRPStateEvent(I)V

    .line 626
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-static {}, Lus/zoom/zrc/lightbar/LightBarManager;->getDefault()Lus/zoom/zrc/lightbar/LightBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/lightbar/LightBarManager;->setLightBarAvailable()V

    .line 629
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendZRPStateEvent(I)V

    .line 630
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private checkUselessAlert()V
    .locals 4

    .line 1133
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingItemForAlert:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1135
    :goto_0
    iget-object v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v2}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1136
    iget-object v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v2, v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getMeetingItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1137
    iget-object v3, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingItemForAlert:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1144
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->dismissDialogForMeetingScheduledFromCalendar()V

    :cond_2
    return-void
.end method

.method private deleteMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 3

    .line 1158
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 1160
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 1163
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->onDeleteMeetingFailed(I)V

    goto :goto_0

    .line 1165
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->deleteCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    .line 1167
    sget p1, Lus/zoom/zrcbox/R$string;->deleting_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 1169
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->onDeleteMeetingFailed(I)V

    .line 1173
    :goto_0
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->deleteMeeting()V

    return-void
.end method

.method private dismissAllAlerts()V
    .locals 3

    .line 302
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    const-string v1, "dismissAllAlerts"

    new-instance v2, Lus/zoom/zrp/ZRPPanelFragment$8;

    invoke-direct {v2, p0}, Lus/zoom/zrp/ZRPPanelFragment$8;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private dismissDialogForMeetingScheduledFromCalendar()V
    .locals 2

    .line 1150
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1154
    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingItemForAlert:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-void
.end method

.method private getListMeetingTimeInterval()J
    .locals 2

    .line 879
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 880
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v1, :cond_0

    .line 881
    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCActivity;->getBrightnessHelper()Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->isDimScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x36ee80

    return-wide v0

    .line 886
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 887
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarRefreshInterval()I

    move-result v0

    const/16 v1, 0x384

    .line 888
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method private hasAvailableTime()Z
    .locals 16

    .line 682
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 683
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v2

    .line 684
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->endOfDay()J

    move-result-wide v4

    .line 691
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v6

    .line 692
    invoke-virtual {v6}, Lus/zoom/zrc/model/MeetingList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/32 v10, 0xdbba0

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 693
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v12

    if-eqz v12, :cond_1

    return v9

    .line 697
    :cond_1
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v9, v12, v2

    if-gtz v9, :cond_2

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 702
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v14, v12, v2

    cmp-long v9, v14, v10

    if-ltz v9, :cond_3

    sub-long/2addr v12, v0

    cmp-long v9, v12, v10

    if-ltz v9, :cond_3

    return v8

    .line 708
    :cond_3
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 709
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    :cond_4
    sub-long v2, v4, v2

    cmp-long v6, v2, v10

    if-ltz v6, :cond_5

    sub-long/2addr v4, v0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    return v8
.end method

.method private hostFromMeetingItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 2

    .line 1061
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :cond_0
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "@"

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1072
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 p1, 0x0

    .line 1073
    aget-object v0, v0, p1

    goto :goto_0

    .line 1075
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private manuallyRefreshMeetingList()V
    .locals 2

    .line 616
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->listMeeting()V

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->manuallyRefreshMeetingListTime:J

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->lastRefreshMeetingListTime:J

    .line 619
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrp/util/ZRPUsageTrace;->refreshMeetingList(I)V

    return-void
.end method

.method private onAirPlayBlackMagicStatusChanged()V
    .locals 0

    .line 478
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method private onAppStateChanged()V
    .locals 2

    .line 519
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 523
    :pswitch_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingList()V

    .line 524
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    goto :goto_0

    .line 527
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->retryConnectingToPushNotificationServer()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCalendarAccessTokenChanged()V
    .locals 4

    .line 463
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v0

    const/16 v1, 0x139a

    if-eq v1, v0, :cond_0

    const/16 v0, 0x13a7

    .line 464
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 465
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setListMeetingResult(I)V

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->lastRefreshMeetingListTime:J

    :cond_1
    return-void
.end method

.method private onCalendarRefreshTokenExpiredChanged()V
    .locals 2

    .line 471
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshViewContent()V

    .line 472
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/model/MeetingList;

    invoke-direct {v1}, Lus/zoom/zrc/model/MeetingList;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingList(Lus/zoom/zrc/model/MeetingList;)V

    :cond_0
    return-void
.end method

.method private onCalendarTypeChanged()V
    .locals 2

    .line 438
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->setUpcomingMeetingList(Ljava/util/List;)V

    .line 439
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingListView()V

    .line 440
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    .line 441
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshViewContent()V

    return-void
.end method

.method private onCheckInOptionChanged()V
    .locals 0

    .line 398
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingListView()V

    .line 399
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method private onConnectingFinished(I)V
    .locals 1

    .line 507
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 512
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->retryConnectingToPushNotificationServer()V

    :cond_1
    return-void
.end method

.method private onDeleteCalendarEventResult(I)V
    .locals 5

    .line 493
    iget-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 496
    :cond_0
    iput-wide v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    .line 497
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->dismissWaitingDialog()V

    if-nez p1, :cond_1

    const-string p1, "delete meeting success"

    const/4 v0, 0x0

    .line 500
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->onDeleteMeetingFailed(I)V

    :goto_0
    return-void
.end method

.method private onDeleteMeetingFailed(I)V
    .locals 4

    .line 1177
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_delete_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    const-string p1, "delete meeting event from calendar failed"

    .line 1179
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_delete_meeting_reason_1:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v3, p1, :cond_1

    const-string p1, "delete meeting failed, meeting in progress"

    .line 1182
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_delete_meeting_reason_2:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string p1, "delete meeting failed"

    .line 1185
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onDisableReserveButtonStatusChange()V
    .locals 2

    .line 445
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->reserveButton:Landroid/widget/Button;

    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->canReserveRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private onListMeetingResultChange()V
    .locals 2

    .line 449
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x139a

    .line 450
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 451
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->directRefreshGoogleCalendarAccessToken()V

    :cond_0
    const/16 v0, 0x13a7

    .line 454
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 455
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->directRefreshExchangeCalendarAccessToken()V

    .line 459
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshViewContent()V

    return-void
.end method

.method private onMeetingListChanged()V
    .locals 2

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->lastRefreshMeetingListTime:J

    .line 392
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 393
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingList()V

    .line 394
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method private onMeetingListItemClicked(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 6

    .line 1086
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dismiss()V

    .line 1094
    :cond_1
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 1095
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 1096
    sget v1, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1098
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getScheduledFrom()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v0, v2

    goto :goto_1

    .line 1108
    :pswitch_0
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingItemForAlert:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 1109
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1110
    sget v1, Lus/zoom/zrcbox/R$string;->scheduled_today_at:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 1111
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v5

    .line 1110
    invoke-static {v4, v5}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 1113
    :cond_2
    sget v1, Lus/zoom/zrcbox/R$string;->delete:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrp/ZRPPanelFragment$9;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrp/ZRPPanelFragment$9;-><init>(Lus/zoom/zrp/ZRPPanelFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1119
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$color;->zm_red:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveTextColor(I)V

    goto :goto_1

    .line 1100
    :pswitch_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, " "

    .line 1101
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_4
    sget v1, Lus/zoom/zrcbox/R$string;->host_with_label:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->hostFromMeetingItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 1105
    :goto_0
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingItemForAlert:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    :goto_1
    if-eqz v0, :cond_5

    .line 1126
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "meeting_scheduled_from_calendar"

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1127
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->showMeetingDetails()V

    .line 1129
    :cond_5
    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPrivateMeetingOptionChanged()V
    .locals 0

    .line 422
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingListView()V

    .line 423
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    .line 424
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->dismissDialogForMeetingScheduledFromCalendar()V

    return-void
.end method

.method private onReserveRoom()V
    .locals 1

    .line 719
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->listener:Lus/zoom/zrp/ZRPPanelFragment$Listener;

    if-eqz v0, :cond_0

    .line 720
    invoke-interface {v0}, Lus/zoom/zrp/ZRPPanelFragment$Listener;->onReserveButtonClicked()V

    .line 722
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->startOpenReserveViewAnimation()V

    return-void
.end method

.method private onRoomInfoChanged()V
    .locals 2

    .line 415
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomNameView:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onSipCallChanged()V
    .locals 0

    .line 482
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method private onSupportOutRoomDisplayChanged()V
    .locals 2

    .line 431
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->reserveButton:Landroid/widget/Button;

    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->canReserveRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private onTimeOrTimeConfigChange()V
    .locals 1

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshDate(Ljava/util/Calendar;)V

    .line 320
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingListView()V

    return-void
.end method

.method private onTimerForCheckOperatingCalendarTimeout()V
    .locals 7

    .line 850
    iget-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 851
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->dismissWaitingDialog()V

    const/4 v0, 0x3

    .line 852
    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->onDeleteMeetingFailed(I)V

    .line 855
    :cond_0
    iget-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->manuallyRefreshMeetingListTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->manuallyRefreshMeetingListTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 856
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    return-void
.end method

.method private onTimerForConnectingToPushNotificationServer()V
    .locals 6

    .line 861
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    iget-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->nextRetryConnectingPNSTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    .line 869
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 870
    iget-wide v4, p0, Lus/zoom/zrp/ZRPPanelFragment;->nextRetryConnectingPNSTime:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    return-void

    .line 874
    :cond_2
    iput-wide v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->nextRetryConnectingPNSTime:J

    .line 875
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->connectWithZoomRoom()V

    return-void
.end method

.method private onTimerForListMeeting()V
    .locals 5

    .line 896
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 900
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 904
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x139a

    .line 908
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/16 v0, 0x13a7

    .line 909
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 913
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->lastRefreshMeetingListTime:J

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getListMeetingTimeInterval()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    return-void

    .line 917
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->listMeeting()V

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->lastRefreshMeetingListTime:J

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private onTimerForReleaseNoCheckInMeeting()V
    .locals 8

    .line 922
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isMasterOfMultiStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 930
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCheckInEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 934
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v0

    .line 936
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-nez v2, :cond_4

    goto :goto_0

    .line 941
    :cond_4
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isCheckedIn()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 945
    :cond_5
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 949
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    add-int/lit8 v5, v0, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 952
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v3

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->canEditItem(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 953
    invoke-static {v2}, Lus/zoom/zrp/util/ZRPUtils;->isMeetingRecurring(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/ZRCCheckInOption;->getCountForReleaseRecurringMeetings()I

    move-result v3

    if-lez v3, :cond_a

    .line 954
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getAbsentTimesForRecurringMeeting()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 955
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 957
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/ZRCCheckInOption;->getCountForReleaseRecurringMeetings()I

    move-result v5

    if-lt v3, v5, :cond_9

    .line 958
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5, v2}, Lus/zoom/zrc/model/Model;->deleteCalendarRecurrence(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recurrence meeting - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is deleting because of continuous "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times over check-in release time."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    invoke-direct {p0, v2}, Lus/zoom/zrp/ZRPPanelFragment;->sendEmailForDeletingRecurrence(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto/16 :goto_0

    .line 964
    :cond_9
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5, v2}, Lus/zoom/zrc/model/Model;->absentRecurringEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 965
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recurrence meeting - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has been absent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    invoke-direct {p0, v2, v3}, Lus/zoom/zrp/ZRPPanelFragment;->sendEmailForAbsentRecurringMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;I)V

    goto/16 :goto_0

    .line 970
    :cond_a
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3, v2}, Lus/zoom/zrc/model/Model;->deleteCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Meeting - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being deleted because of over check-in release time."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    invoke-direct {p0, v2}, Lus/zoom/zrp/ZRPPanelFragment;->sendEmailForDeleteMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private onUserProfileChanged()V
    .locals 2

    .line 406
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomNameView:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshViewContent()V

    .line 408
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method private refreshDate(Ljava/util/Calendar;)V
    .locals 3

    .line 540
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->timeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lus/zoom/zrp/util/ZRPUtils;->getPanelFormattedTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->dateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {v1, p1}, Lus/zoom/zrp/util/ZRPUtils;->getPanelFormattedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshMeetingList()V
    .locals 1

    .line 561
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->shouldRefreshMeetingListView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingListView()V

    :cond_0
    return-void
.end method

.method private refreshMeetingListView()V
    .locals 3

    .line 545
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->setUpcomingMeetingList(Ljava/util/List;)V

    .line 547
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->checkUselessAlert()V

    .line 549
    iget-boolean v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->showMeetingList:Z

    if-eqz v1, :cond_1

    .line 550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 551
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshRoomStatus()V
    .locals 7

    .line 635
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    .line 637
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCUserProfile;->getBillingType()I

    move-result v0

    if-ne v2, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x6

    .line 643
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v0, 0x7

    .line 644
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto/16 :goto_1

    .line 647
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    invoke-direct {p0, v3}, Lus/zoom/zrp/ZRPPanelFragment;->changeRoomStatusPanelBackground(Z)V

    .line 649
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->busy:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 650
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 651
    invoke-direct {p0, v3}, Lus/zoom/zrp/ZRPPanelFragment;->changeRoomStatusPanelBackground(Z)V

    .line 652
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->busy:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 655
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    const/4 v5, 0x3

    .line 656
    invoke-static {}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->getInstance()Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->parseMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v6

    if-ne v5, v6, :cond_5

    goto :goto_0

    .line 660
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 661
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 662
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 663
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-lez v6, :cond_4

    .line 664
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gez v5, :cond_4

    :goto_0
    move-object v0, v4

    :cond_6
    if-eqz v0, :cond_7

    .line 672
    invoke-direct {p0, v3}, Lus/zoom/zrp/ZRPPanelFragment;->changeRoomStatusPanelBackground(Z)V

    .line 673
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->busy:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 675
    :cond_7
    invoke-direct {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->changeRoomStatusPanelBackground(Z)V

    .line 676
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->available:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 645
    :cond_8
    :goto_1
    invoke-direct {p0, v3}, Lus/zoom/zrp/ZRPPanelFragment;->changeRoomStatusPanelBackground(Z)V

    .line 646
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->busy:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 638
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->changeRoomStatusPanelBackground(Z)V

    .line 639
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->available:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshViewContent()V
    .locals 5

    .line 783
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    .line 785
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCUserProfile;->getBillingType()I

    move-result v0

    if-ne v3, v0, :cond_0

    goto/16 :goto_1

    .line 790
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    if-nez v0, :cond_1

    .line 791
    sget v0, Lus/zoom/zrcbox/R$string;->alert_add_calendar:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 792
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCalendarRefreshTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_refresh_token_expired:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 794
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getListMeetingResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 818
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_no_mailbox:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 814
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_impersonation:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 810
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_delegate:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 806
    :pswitch_3
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_401:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 802
    :pswitch_4
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_403:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 798
    :pswitch_5
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_error_401:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 786
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->webDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/billing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    sget v3, Lus/zoom/zrcbox/R$string;->upgrade_account_alert:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lus/zoom/zrcbox/R$string;->plan_has_ended:I

    invoke-virtual {p0, v4}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 v3, 0x8

    if-eqz v0, :cond_5

    .line 824
    iput-boolean v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->showMeetingList:Z

    .line 825
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0, v3}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 830
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 832
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->calendarNotWork()V

    goto :goto_3

    .line 834
    :cond_5
    iput-boolean v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->showMeetingList:Z

    .line 835
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 837
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 838
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 841
    :cond_6
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0, v3}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    :goto_3
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->reserveButton:Landroid/widget/Button;

    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->canReserveRoom()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

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

.method private retryConnectingToPushNotificationServer()V
    .locals 6

    const/16 v0, 0x3c

    .line 533
    invoke-static {v0}, Lus/zoom/androidlib/util/ZMSecureRandom;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->nextRetryConnectingPNSTime:J

    const-string v2, "retry connecting after %d seconds"

    .line 536
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendEmailForAbsentRecurringMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;I)V
    .locals 11

    .line 1007
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1009
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send email to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for deleting occurrence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    sget v1, Lus/zoom/zrcbox/R$string;->email_subject_for_no_checkin_release:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v1, v4}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1013
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getCountForReleaseRecurringMeetings()I

    move-result v1

    .line 1016
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1017
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1019
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v4

    .line 1022
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v5

    .line 1024
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v3}, Lus/zoom/zrp/util/ZRPUtils;->getZRPMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Ljava/lang/String;

    move-result-object v6

    .line 1026
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v7

    invoke-virtual {v7}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v7

    invoke-virtual {v7}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    .line 1028
    sget v9, Lus/zoom/zrcbox/R$string;->email_body_for_occurrence_no_checkin_release:I

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v2

    aput-object v5, v10, v3

    const/4 v2, 0x2

    aput-object v0, v10, v2

    const/4 v0, 0x3

    aput-object v6, v10, v0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v10, v0

    const/4 p2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, p2

    const/4 p2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, p2

    const/4 p2, 0x7

    const-string v0, "https://support.zoom.us/hc/en-us/articles/360001147163-Check-In-with-Zoom-Rooms"

    aput-object v0, v10, p2

    invoke-virtual {p0, v9, v10}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1031
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lus/zoom/zrcsdk/PTApp;->sendEmailTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    return-void
.end method

.method private sendEmailForDeleteMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 11

    .line 981
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 983
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send email to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for deleting meeting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    sget v1, Lus/zoom/zrcbox/R$string;->email_subject_for_no_checkin_release:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v1, v4}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 988
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 991
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    .line 994
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v4

    .line 996
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v3}, Lus/zoom/zrp/util/ZRPUtils;->getZRPMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Ljava/lang/String;

    move-result-object v5

    .line 998
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    .line 1000
    sget v7, Lus/zoom/zrcbox/R$string;->email_body_for_no_checkin_release:I

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v2

    aput-object v4, v9, v3

    const/4 v1, 0x2

    aput-object v0, v9, v1

    const/4 v0, 0x3

    aput-object v5, v9, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "https://support.zoom.us/hc/en-us/articles/360001147163-Check-In-with-Zoom-Rooms"

    aput-object v1, v9, v0

    invoke-virtual {p0, v7, v9}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1003
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lus/zoom/zrcsdk/PTApp;->sendEmailTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    return-void
.end method

.method private sendEmailForDeletingRecurrence(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 11

    .line 1035
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1037
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send email to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for deleting recurrence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    sget v1, Lus/zoom/zrcbox/R$string;->email_subject_for_recurrence_no_checkin_release:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v1, v4}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1041
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getCountForReleaseRecurringMeetings()I

    move-result v1

    .line 1044
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1045
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1047
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v4

    .line 1050
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v3}, Lus/zoom/zrp/util/ZRPUtils;->getZRPMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Ljava/lang/String;

    move-result-object v6

    .line 1054
    sget v7, Lus/zoom/zrcbox/R$string;->email_body_for_recurrence_no_checkin_release:I

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v2

    aput-object v5, v9, v3

    const/4 v2, 0x2

    aput-object v0, v9, v2

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "https://support.zoom.us/hc/en-us/articles/360001147163-Check-In-with-Zoom-Rooms"

    aput-object v1, v9, v0

    invoke-virtual {p0, v7, v9}, Lus/zoom/zrp/ZRPPanelFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1057
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lus/zoom/zrcsdk/PTApp;->sendEmailTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    return-void
.end method

.method private shouldRefreshMeetingListView()Z
    .locals 16

    move-object/from16 v0, p0

    .line 567
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v1

    .line 568
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 570
    iget-object v3, v0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    return v4

    .line 574
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_9

    .line 577
    iget-object v8, v0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v8, v7}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getMeetingItem(I)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v8

    .line 578
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-eqz v9, :cond_8

    if-nez v8, :cond_1

    goto/16 :goto_1

    .line 585
    :cond_1
    invoke-virtual {v8, v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v10

    if-nez v10, :cond_2

    return v4

    .line 590
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v10

    invoke-virtual {v10}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v10

    .line 592
    invoke-virtual {v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v11

    const-wide/32 v12, 0xea60

    if-eqz v11, :cond_4

    .line 593
    invoke-virtual {v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-ltz v11, :cond_3

    .line 594
    invoke-virtual {v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-virtual {v10}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForPriorCheckIn()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v12, v11

    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    :cond_3
    return v4

    .line 599
    :cond_4
    invoke-virtual {v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 600
    invoke-virtual {v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0xea60

    cmp-long v15, v11, v13

    if-ltz v15, :cond_5

    .line 601
    invoke-virtual {v9}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long v11, v5, v11

    invoke-virtual {v10}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v13, v10

    cmp-long v10, v11, v13

    if-ltz v10, :cond_6

    :cond_5
    return v4

    .line 606
    :cond_6
    invoke-static {}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->getInstance()Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->parseMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v8

    .line 607
    invoke-static {}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->getInstance()Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;

    move-result-object v10

    invoke-virtual {v10, v9}, Lus/zoom/zrc/meeting/ZRPMeetingListItemHelper;->parseMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v9

    if-eq v8, v9, :cond_7

    return v4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_1
    return v4

    :cond_9
    return v3
.end method

.method private startOpenReserveViewAnimation()V
    .locals 7

    .line 1191
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    .line 1192
    iget v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewNormalHeight:I

    .line 1193
    iget v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewEnlargedHeight:I

    .line 1197
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    .line 1198
    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x1

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1199
    new-instance v2, Lus/zoom/zrp/ZRPPanelFragment$10;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrp/ZRPPanelFragment$10;-><init>(Lus/zoom/zrp/ZRPPanelFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1209
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    const-string v2, "alpha"

    .line 1210
    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1211
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1212
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 138
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->screenOrientation:I

    if-eqz p1, :cond_0

    const-string v0, "savedStatusViewNormalHeight"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewNormalHeight:I

    const-string v0, "savedStatusViewEnlargedHeight"

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewEnlargedHeight:I

    .line 144
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "fully_reserved"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForFullyReserved:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "meeting_scheduled_from_calendar"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->alertDialogForMeetingScheduledFromCalendar:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    .line 147
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 148
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 155
    sget p3, Lus/zoom/zrcbox/R$layout;->zrp_panel_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 338
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 339
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->DeleteCalendarResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 340
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->onDeleteCalendarEventResult(I)V

    goto :goto_0

    .line 341
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    if-ne v0, p1, :cond_1

    .line 342
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onTimeOrTimeConfigChange()V

    goto :goto_0

    .line 343
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    .line 344
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->onConnectingFinished(I)V

    goto :goto_0

    .line 345
    :cond_2
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_3

    .line 346
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onAppStateChanged()V

    goto :goto_0

    .line 347
    :cond_3
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ZrGoogleAccessTokenChange:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_4

    .line 348
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onCalendarAccessTokenChanged()V

    goto :goto_0

    .line 349
    :cond_4
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ExchangeAccessTokenChange:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_5

    .line 350
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onCalendarAccessTokenChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 358
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 359
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    if-ne p1, p2, :cond_0

    .line 360
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onMeetingListChanged()V

    goto/16 :goto_1

    .line 361
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne p1, p2, :cond_1

    .line 362
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onUserProfileChanged()V

    goto :goto_1

    .line 363
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-ne p1, p2, :cond_2

    .line 364
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onRoomInfoChanged()V

    goto :goto_1

    .line 365
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->forcePrivateMeeting:I

    if-eq p1, p2, :cond_b

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideHostInfoForPrivateMeeting:I

    if-ne p1, p2, :cond_3

    goto :goto_0

    .line 368
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p1, p2, :cond_4

    .line 369
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onSupportOutRoomDisplayChanged()V

    goto :goto_1

    .line 370
    :cond_4
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarType:I

    if-ne p1, p2, :cond_5

    .line 371
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onCalendarTypeChanged()V

    goto :goto_1

    .line 372
    :cond_5
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->checkInOption:I

    if-ne p1, p2, :cond_6

    .line 373
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onCheckInOptionChanged()V

    goto :goto_1

    .line 374
    :cond_6
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrpReserveDisabled:I

    if-ne p1, p2, :cond_7

    .line 375
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onDisableReserveButtonStatusChange()V

    goto :goto_1

    .line 376
    :cond_7
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->listMeetingResult:I

    if-ne p1, p2, :cond_8

    .line 377
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onListMeetingResultChange()V

    goto :goto_1

    .line 378
    :cond_8
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarRefreshTokenExpired:I

    if-ne p1, p2, :cond_9

    .line 379
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onCalendarRefreshTokenExpiredChanged()V

    goto :goto_1

    .line 380
    :cond_9
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->airPlayBlackMagicStatus:I

    if-ne p1, p2, :cond_a

    .line 381
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onAirPlayBlackMagicStatusChanged()V

    goto :goto_1

    .line 382
    :cond_a
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p1, p2, :cond_c

    .line 383
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onSipCallChanged()V

    goto :goto_1

    .line 367
    :cond_b
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onPrivateMeetingOptionChanged()V

    :cond_c
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 281
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "savedStatusViewNormalHeight"

    .line 282
    iget v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewNormalHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "savedStatusViewEnlargedHeight"

    .line 283
    iget v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewEnlargedHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "savedIsCloseReserveFragmentAnimationShowing"

    .line 285
    iget-boolean v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->isClosingReserveFragment:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "savedDeletingCalendarEventTime"

    .line 287
    iget-wide v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 289
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "savedIsRefreshLayoutRefreshing"

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "savedManuallyRefreshMeetingListTime"

    .line 292
    iget-wide v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->manuallyRefreshMeetingListTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 295
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->isCheckInAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "savedIsCheckInAnimationShowing"

    .line 296
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "savedCheckingInPosition"

    .line 297
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getCheckingInPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 259
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 260
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomNameView:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$7;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelFragment$7;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshDate(Ljava/util/Calendar;)V

    .line 267
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshViewContent()V

    .line 268
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingList()V

    .line 269
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 274
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->dismissAllAlerts()V

    .line 276
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStop()V

    return-void
.end method

.method public onTimer(Ljava/util/Calendar;)V
    .locals 1

    const/16 v0, 0xd

    .line 324
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lus/zoom/zrp/ZRPPanelFragment;->refreshDate(Ljava/util/Calendar;)V

    .line 326
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshMeetingList()V

    .line 327
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->refreshRoomStatus()V

    .line 329
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onTimerForReleaseNoCheckInMeeting()V

    .line 331
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onTimerForListMeeting()V

    .line 332
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onTimerForCheckOperatingCalendarTimeout()V

    .line 333
    invoke-direct {p0}, Lus/zoom/zrp/ZRPPanelFragment;->onTimerForConnectingToPushNotificationServer()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    sget v0, Lus/zoom/zrcbox/R$id;->iv_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelFragment$1;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v0, Lus/zoom/zrcbox/R$id;->tv_room_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomNameView:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomNameView:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->screenOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 173
    sget v0, Lus/zoom/zrcbox/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->timeView:Landroid/widget/TextView;

    .line 174
    sget v0, Lus/zoom/zrcbox/R$id;->tv_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->dateView:Landroid/widget/TextView;

    .line 176
    sget v0, Lus/zoom/zrcbox/R$id;->btn_reserve:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->reserveButton:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->reserveButton:Landroid/widget/Button;

    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelFragment$2;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget v0, Lus/zoom/zrcbox/R$id;->meeting_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/FixedRowsRecyclerView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    .line 185
    iget v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->screenOrientation:I

    if-ne v0, v2, :cond_1

    .line 186
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setMaxRows(I)V

    .line 188
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getDividerHeight()I

    move-result v0

    .line 189
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getDividerColor()I

    move-result v1

    .line 190
    iget-object v3, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    new-instance v4, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v0, v1}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v3, v4}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 191
    new-instance v0, Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    .line 192
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 193
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 194
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelFragment$3;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 204
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->meetingListAdapter:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelFragment$4;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->setListener(Lus/zoom/zrp/view/ZRPMeetingListAdapter$Listener;)V

    .line 216
    sget v0, Lus/zoom/zrcbox/R$id;->empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->emptyView:Landroid/widget/TextView;

    .line 217
    sget v0, Lus/zoom/zrcbox/R$id;->error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->errorView:Landroid/widget/TextView;

    .line 219
    sget v0, Lus/zoom/zrcbox/R$id;->zrp_meeting_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 220
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrp/ZRPPanelFragment$5;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 227
    sget v0, Lus/zoom/zrcbox/R$id;->zrp_room_status_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusStateView:Landroid/widget/TextView;

    .line 229
    sget v0, Lus/zoom/zrcbox/R$id;->zrp_room_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrp/ZRPPanelFragment$6;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrp/ZRPPanelFragment$6;-><init>(Lus/zoom/zrp/ZRPPanelFragment;Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_3

    const-string p1, "savedDeletingCalendarEventTime"

    .line 246
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->deletingCalendarEventTime:J

    const-string p1, "savedIsRefreshLayoutRefreshing"

    .line 247
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 248
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string p1, "savedManuallyRefreshMeetingListTime"

    .line 249
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->manuallyRefreshMeetingListTime:J

    :cond_2
    const-string p1, "savedIsCheckInAnimationShowing"

    .line 251
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 252
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object p1

    const-string v0, "savedCheckingInPosition"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setCheckInStatus(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setListener(Lus/zoom/zrp/ZRPPanelFragment$Listener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment;->listener:Lus/zoom/zrp/ZRPPanelFragment$Listener;

    return-void
.end method

.method public startCloseReserveViewAnimation()V
    .locals 7

    .line 1216
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment;->roomStatusView:Landroid/view/View;

    .line 1218
    iget v1, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewEnlargedHeight:I

    .line 1219
    iget v2, p0, Lus/zoom/zrp/ZRPPanelFragment;->statusViewNormalHeight:I

    .line 1223
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    .line 1224
    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x1

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1226
    new-instance v2, Lus/zoom/zrp/ZRPPanelFragment$11;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrp/ZRPPanelFragment$11;-><init>(Lus/zoom/zrp/ZRPPanelFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1236
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    const-string v2, "alpha"

    .line 1237
    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1238
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1239
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1240
    new-instance v0, Lus/zoom/zrp/ZRPPanelFragment$12;

    invoke-direct {v0, p0}, Lus/zoom/zrp/ZRPPanelFragment$12;-><init>(Lus/zoom/zrp/ZRPPanelFragment;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
