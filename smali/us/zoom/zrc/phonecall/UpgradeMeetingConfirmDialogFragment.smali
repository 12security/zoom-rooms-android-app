.class public Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
.source "UpgradeMeetingConfirmDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipCallAlertStopMeeting"


# instance fields
.field private final hasOtherCall:Z

.field private final isInNormalMeeting:Z

.field private final isLocalPresentationSharing:Z

.field private final sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

.field private final sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field private upgradeMeetingInShareListener:Landroid/content/DialogInterface$OnClickListener;

.field private upgradeMeetingListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;ZZZLus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1
    .param p1    # Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 143
    new-instance v0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$2;-><init>(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 152
    new-instance v0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$3;-><init>(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingInShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    .line 55
    iput-boolean p2, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isInNormalMeeting:Z

    .line 56
    iput-boolean p3, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isLocalPresentationSharing:Z

    .line 57
    iput-boolean p4, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->hasOtherCall:Z

    .line 58
    iput-object p5, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-object p0
.end method

.method static checkToUpgradeSipToMeeting(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 9
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "SipCallAlertStopMeeting"

    const-string p1, "checkToUpgradeSipToMeeting() called with: presenter is null."

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "SipCallAlertStopMeeting"

    const-string p1, "checkToUpgradeSipToMeeting() called with: foreground call is null"

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result v5

    .line 41
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->isLocalPresentationSharing()Z

    move-result v6

    .line 42
    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->upgradeSipCallToMeeting(Z)V

    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    new-instance v0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;

    .line 45
    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;-><init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;ZZZLus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 46
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :goto_1
    return-void
.end method

.method private setContentForCall()V
    .locals 2

    .line 169
    sget v0, Lus/zoom/zrcbox/R$string;->start_video_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 170
    sget v0, Lus/zoom/zrcbox/R$string;->upgrade_meeting_end_call_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 171
    sget v0, Lus/zoom/zrcbox/R$string;->start_video_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setContentForMeeting()V
    .locals 2

    .line 163
    sget v0, Lus/zoom/zrcbox/R$string;->start_new_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 164
    sget v0, Lus/zoom/zrcbox/R$string;->upgrade_meeting_end_meeting_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 165
    sget v0, Lus/zoom/zrcbox/R$string;->start_new_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setContentForMeetingAndCall()V
    .locals 2

    .line 175
    sget v0, Lus/zoom/zrcbox/R$string;->start_new_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 176
    sget v0, Lus/zoom/zrcbox/R$string;->upgrade_meeting_end_meeting_and_call_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 177
    sget v0, Lus/zoom/zrcbox/R$string;->start_new_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setContentForShare()V
    .locals 2

    .line 181
    sget v0, Lus/zoom/zrcbox/R$string;->start_video_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 182
    sget v0, Lus/zoom/zrcbox/R$string;->stop_share_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 183
    sget v0, Lus/zoom/zrcbox/R$string;->start_video_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingInShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setContentForShareAndCall()V
    .locals 2

    .line 187
    sget v0, Lus/zoom/zrcbox/R$string;->start_video_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 188
    sget v0, Lus/zoom/zrcbox/R$string;->stop_share_and_call_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 189
    sget v0, Lus/zoom/zrcbox/R$string;->start_video_meeting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->upgradeMeetingInShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setVerticalStyle(Z)V

    .line 64
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$1;-><init>(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)V

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isInNormalMeeting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 72
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->hasOtherCall:Z

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setContentForMeetingAndCall()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setContentForMeeting()V

    goto :goto_0

    .line 77
    :cond_1
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isLocalPresentationSharing:Z

    if-eqz v1, :cond_3

    .line 79
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->hasOtherCall:Z

    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setContentForShareAndCall()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setContentForShare()V

    goto :goto_0

    .line 86
    :cond_3
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->hasOtherCall:Z

    if-eqz v1, :cond_4

    .line 87
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->setContentForCall()V

    goto :goto_0

    :cond_4
    const-string v1, "SipCallAlertStopMeeting"

    const-string v3, "UpgradeMeetingConfirmDialogFragment() called, but no meeting, no sharing, no call."

    .line 89
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v3, Lus/zoom/zrc/base/notification/ModelEvent;->MeetingTypeChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v3, v1, v2

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 101
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->MeetingTypeChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_1

    .line 102
    iget-boolean p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isInNormalMeeting:Z

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    goto :goto_0

    .line 104
    :cond_0
    iget-boolean p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isLocalPresentationSharing:Z

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isLocalPresentationSharing()Z

    move-result p2

    if-eq p1, p2, :cond_3

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    goto :goto_0

    .line 107
    :cond_1
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_3

    .line 108
    iget-boolean p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isInNormalMeeting:Z

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    goto :goto_0

    .line 110
    :cond_2
    iget-boolean p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isLocalPresentationSharing:Z

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isLocalPresentationSharing()Z

    move-result p2

    if-eq p1, p2, :cond_3

    .line 111
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 118
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 119
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->airPlayBlackMagicStatus:I

    if-ne p2, p1, :cond_0

    .line 120
    iget-boolean p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isLocalPresentationSharing:Z

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isLocalPresentationSharing()Z

    move-result p2

    if-eq p1, p2, :cond_4

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    goto :goto_0

    .line 123
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_4

    .line 124
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->canMeet()Z

    move-result p2

    if-nez p2, :cond_1

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    return-void

    .line 129
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 130
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    return-void

    .line 133
    :cond_2
    iget-boolean p2, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->isLocalPresentationSharing:Z

    if-eqz p2, :cond_3

    return-void

    .line 136
    :cond_3
    iget-boolean p2, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->hasOtherCall:Z

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-ne p2, p1, :cond_4

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method
