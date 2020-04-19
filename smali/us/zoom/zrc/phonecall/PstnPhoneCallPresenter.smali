.class Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;
.super Lus/zoom/zrc/phonecall/PhoneCallPresenter;
.source "PstnPhoneCallPresenter.java"


# static fields
.field private static instance:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

.field private static timerHandler:Landroid/os/Handler;


# instance fields
.field private autoSendDTMFTask:Ljava/lang/Runnable;

.field private callOutConnectedTime:J

.field private callOutParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private currentCallingNumber:Ljava/lang/String;

.field private isMutedBeforeMeeting:Z

.field private needCheckIsMutedBeforeMeeting:Z

.field private numberOfPause4Comma:I

.field private phoneBridgeDTMFString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->numberOfPause4Comma:I

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutParticipants:Ljava/util/List;

    .line 55
    new-instance v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$1;-><init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->autoSendDTMFTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 64
    new-array v1, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->setup([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 66
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->needCheckIsMutedBeforeMeeting:Z

    .line 68
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->currentCallingNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onTimerToSendDTMFAutomatically()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;I)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getThirdPartyMeetingCallProvider(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getInstance()Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;
    .locals 1

    .line 79
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    return-object v0
.end method

.method private getThirdPartyDialNumber()Ljava/lang/String;
    .locals 3

    .line 626
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 630
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getDialNumbers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCDialNumber;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 622
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->getThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    return-object v0
.end method

.method private getThirdPartyMeetingCallProvider(I)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 654
    :pswitch_0
    sget p1, Lus/zoom/zrcbox/R$string;->service_provider_googlehangout_id:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 651
    :pswitch_1
    sget p1, Lus/zoom/zrcbox/R$string;->service_provider_bluejeans_id:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 645
    :pswitch_2
    sget p1, Lus/zoom/zrcbox/R$string;->service_provider_teams_id:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 648
    :pswitch_3
    sget p1, Lus/zoom/zrcbox/R$string;->service_provider_gotomeeting_id:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 642
    :pswitch_4
    sget p1, Lus/zoom/zrcbox/R$string;->service_provider_skype_id:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 639
    :pswitch_5
    sget p1, Lus/zoom/zrcbox/R$string;->service_provider_webex_id:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static obtainInstance()Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;
    .locals 1

    .line 72
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;-><init>()V

    sput-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    .line 75
    :cond_0
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    return-object v0
.end method

.method private onCallOutResult(Z)V
    .locals 5

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 527
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p1

    if-nez p1, :cond_1

    .line 528
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanDtmfForInviteByPhone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 529
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->InviteByPhoneDone:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    goto/16 :goto_1

    .line 530
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz p1, :cond_b

    .line 531
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setHangupButtonEnabled(Z)V

    goto/16 :goto_1

    .line 534
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz p1, :cond_2

    .line 535
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    iget-wide v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutConnectedTime:J

    invoke-interface {p1, v1, v2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->startDurationTimerForFirstCall(J)V

    .line 538
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p1

    if-ne v0, p1, :cond_b

    .line 539
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getThirdPartyDialNumber()Ljava/lang/String;

    move-result-object p1

    .line 540
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallProvider(Ljava/lang/CharSequence;)V

    .line 543
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const-string v0, ""

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallerInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 545
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->startAutoSendDTMFTimer()V

    goto/16 :goto_1

    .line 551
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getPstnCallOutStatus()I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_6

    .line 553
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->suggestedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 556
    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->userInputNumberInFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 557
    sget v4, Lus/zoom/zrcbox/R$string;->call_failed_incorrect_number:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 559
    :cond_5
    sget p1, Lus/zoom/zrcbox/R$string;->callout_not_available:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/16 v0, 0xd

    if-ne v0, p1, :cond_7

    .line 562
    sget p1, Lus/zoom/zrcbox/R$string;->callout_failed_no_answer:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    if-ne v0, p1, :cond_8

    .line 564
    sget p1, Lus/zoom/zrcbox/R$string;->callout_failed_no_host:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_8
    const/16 v0, 0xf

    if-ne v0, p1, :cond_9

    .line 566
    sget p1, Lus/zoom/zrcbox/R$string;->callout_failed_high_rate:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_9
    const/16 v0, 0x10

    if-ne v0, p1, :cond_a

    .line 568
    sget p1, Lus/zoom/zrcbox/R$string;->callout_failed_too_frequent:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 570
    :cond_a
    sget p1, Lus/zoom/zrcbox/R$string;->call_failed:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 573
    :goto_0
    invoke-direct {p0, p1, v2}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onError(Ljava/lang/CharSequence;Z)V

    :cond_b
    :goto_1
    return-void
.end method

.method private onCallOutStatusChanged(I)V
    .locals 2

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 326
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutConnectedTime:J

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x0

    .line 323
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onCallOutResult(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onCallOutStatusChangedInActive(I)V
    .locals 3

    .line 334
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "onCallOutStatusChanged(%s) callView is null!!!"

    .line 335
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCPSTNCallOutStatus;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 368
    :pswitch_1
    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onCallOutResult(Z)V

    goto :goto_0

    .line 352
    :pswitch_2
    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onCallOutResult(Z)V

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    sget v0, Lus/zoom/zrcbox/R$string;->call_accepted:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :pswitch_4
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    sget v0, Lus/zoom/zrcbox/R$string;->ringing:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :pswitch_5
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    sget v0, Lus/zoom/zrcbox/R$string;->calling:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallStatus(Ljava/lang/CharSequence;)V

    :goto_0
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private onEnterState(I)V
    .locals 1

    .line 290
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->isInLocalPresentation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 291
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDismissImmediately()V

    :cond_0
    return-void
.end method

.method private onError(Ljava/lang/CharSequence;Z)V
    .locals 3

    .line 578
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releasePropertyChanged()V

    .line 579
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releasePstnNotifications()V

    .line 581
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 583
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lus/zoom/zrc/model/Model;->callOutPSTNUser(Ljava/lang/String;Z)Z

    .line 586
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->stopDurationTimerForFirstCall()V

    .line 590
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->stopAutoSendDTMFTimer()V

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    .line 593
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 594
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, v1}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    goto :goto_1

    .line 595
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p2

    if-ne v1, p2, :cond_5

    .line 596
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutParticipants:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 597
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-virtual {v2, v0}, Lus/zoom/zrc/model/Model;->expelUser(I)V

    goto :goto_0

    .line 601
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 602
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result p2

    if-nez p2, :cond_4

    .line 603
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, v1}, Lus/zoom/zrc/model/Model;->updateMyAudio(Z)V

    .line 606
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 607
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDelayDismiss()V

    goto :goto_1

    .line 609
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 610
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDelayDismiss()V

    goto :goto_1

    .line 613
    :cond_6
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 614
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDelayDismiss()V

    .line 617
    :goto_1
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->showErrorToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onMeetingExited()V
    .locals 0

    .line 435
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 437
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDismissImmediately()V

    return-void
.end method

.method private onMyAudioStatusChanged()V
    .locals 4

    .line 400
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "onMyAudioStatusChanged: %s"

    const/4 v2, 0x1

    .line 411
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 418
    :cond_2
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->needCheckIsMutedBeforeMeeting:Z

    if-eqz v1, :cond_4

    .line 419
    iput-boolean v3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->needCheckIsMutedBeforeMeeting:Z

    .line 420
    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->isMutedBeforeMeeting:Z

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 421
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->isMutedBeforeMeeting:Z

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->updateMyAudio(Z)V

    .line 422
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, v3}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteButtonEnabled(Z)V

    :cond_3
    return-void

    .line 429
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v1, :cond_5

    .line 430
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    invoke-interface {v1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteState(Z)V

    :cond_5
    return-void
.end method

.method private onPSTNCallOutResult(ZZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 379
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 380
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDismissImmediately()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 383
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releasePropertyChanged()V

    .line 384
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releasePstnNotifications()V

    .line 386
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz p1, :cond_1

    .line 387
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->stopDurationTimerForFirstCall()V

    .line 388
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    sget p2, Lus/zoom/zrcbox/R$string;->call_ending:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallStatus(Ljava/lang/CharSequence;)V

    .line 391
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p2, p1, :cond_2

    .line 393
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 394
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDelayDismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onParticipantListChanged()V
    .locals 7

    .line 210
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 218
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 219
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 220
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v3

    if-nez v3, :cond_2

    .line 222
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getCallOutUserName()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "call view has %d phone user connected"

    const/4 v2, 0x1

    .line 234
    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "callee has hangup call, no calls left."

    .line 239
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    sget v0, Lus/zoom/zrcbox/R$string;->other_caller_exited:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onError(Ljava/lang/CharSequence;Z)V

    return-void

    .line 244
    :cond_4
    iput-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutParticipants:Ljava/util/List;

    .line 246
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v2

    .line 248
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v4

    if-ne v3, v4, :cond_5

    if-eqz v2, :cond_5

    .line 250
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->updateThirdPartyMeeting()V

    goto :goto_1

    .line 252
    :cond_5
    new-instance v2, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;

    const-string v4, "setKeypadButtonEnabled()"

    invoke-direct {v2, p0, v4, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;-><init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    .line 262
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v2

    if-ne v3, v2, :cond_6

    .line 263
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanDtmfForInviteByPhone()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    new-instance v2, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$3;

    const-string v3, "setStartMeetingButtonHidden()"

    invoke-direct {v2, p0, v3, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$3;-><init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    .line 275
    :cond_6
    :goto_1
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 276
    new-instance v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;

    const-string v2, "setCallerParticipant"

    invoke-direct {v0, p0, v2, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;-><init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    :cond_7
    return-void
.end method

.method private onStartPmiResult(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "failed to start meeting for callout."

    const/4 v0, 0x0

    .line 299
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    sget p1, Lus/zoom/zrcbox/R$string;->call_failed:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onError(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private onTimerToSendDTMFAutomatically()V
    .locals 7

    .line 693
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    .line 695
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->updateThirdPartyMeeting()V

    .line 696
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->stopAutoSendDTMFTimer()V

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    .line 701
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x190

    if-eqz v3, :cond_3

    .line 702
    iget v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->numberOfPause4Comma:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    .line 703
    iput v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->numberOfPause4Comma:I

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v2

    .line 705
    iput v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->numberOfPause4Comma:I

    .line 706
    iget v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->numberOfPause4Comma:I

    if-gtz v0, :cond_2

    .line 707
    iput v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->numberOfPause4Comma:I

    .line 708
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    .line 712
    :cond_2
    :goto_0
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->autoSendDTMFTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const-string v3, "send DTMF digit key %s automatically"

    .line 716
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lus/zoom/zrc/model/Model;->sendDTMF(ILjava/lang/String;)V

    .line 719
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    .line 721
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->autoSendDTMFTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onUpdateMyAudioResult()V
    .locals 2

    .line 305
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method private releasePstnNotifications()V
    .locals 3

    const/4 v0, 0x4

    .line 89
    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMyAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releaseNotifications([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method private startAutoSendDTMFTimer()V
    .locals 4

    .line 685
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->autoSendDTMFTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAutoSendDTMFTimer()V
    .locals 2

    .line 689
    sget-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->autoSendDTMFTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateThirdPartyMeeting()V
    .locals 3

    .line 661
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    .line 663
    new-instance v1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;

    const-string v2, "updateThirdPartyMeeting"

    invoke-direct {v1, p0, v2, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;-><init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method


# virtual methods
.method public clickHangup()V
    .locals 4

    .line 484
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releasePropertyChanged()V

    .line 485
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->releasePstnNotifications()V

    .line 487
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 489
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/model/Model;->callOutPSTNUser(Ljava/lang/String;Z)Z

    .line 492
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->stopDurationTimerForFirstCall()V

    .line 494
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    sget v1, Lus/zoom/zrcbox/R$string;->call_ending:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallStatus(Ljava/lang/CharSequence;)V

    .line 497
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 500
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    goto/16 :goto_2

    :cond_2
    if-ne v2, v0, :cond_5

    const/4 v0, 0x7

    .line 502
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 503
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 504
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v3, v1}, Lus/zoom/zrc/model/Model;->expelUser(I)V

    goto :goto_0

    .line 508
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 509
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->updateMyAudio(Z)V

    .line 512
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 513
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDelayDismiss()V

    goto :goto_2

    .line 516
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 517
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v2, v1}, Lus/zoom/zrc/model/Model;->expelUser(I)V

    goto :goto_1

    .line 520
    :cond_6
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 521
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDelayDismiss()V

    :cond_7
    :goto_2
    return-void
.end method

.method public clickMute(Z)V
    .locals 5

    const-string v0, "%s microphone button is tapped"

    const/4 v1, 0x1

    .line 442
    new-array v2, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "mute"

    goto :goto_0

    :cond_0
    const-string v3, "unmute"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->updateMyAudio(Z)V

    goto :goto_1

    .line 448
    :cond_1
    iput-boolean v1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->needCheckIsMutedBeforeMeeting:Z

    .line 449
    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->isMutedBeforeMeeting:Z

    .line 451
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteState(Z)V

    .line 453
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {p1, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteButtonEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method onHiddenChanged(Z)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onResume()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 203
    invoke-super {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onPause()V

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->stopDurationTimerForFirstCall()V

    :cond_0
    return-void
.end method

.method protected onPropertyChangedInActive(I)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onPropertyChangedInActive(I)V

    .line 139
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->audioStatus:I

    if-ne v0, p1, :cond_0

    .line 140
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onMyAudioStatusChanged()V

    :cond_0
    return-void
.end method

.method protected onReceivePropertyChanged(I)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivePropertyChanged(I)V

    .line 146
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne v0, p1, :cond_0

    .line 147
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onParticipantListChanged()V

    :cond_0
    return-void
.end method

.method protected onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 119
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 120
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 121
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onMeetingExited()V

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 123
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "status"

    .line 124
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onCallOutStatusChanged(I)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    .line 126
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 127
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "isCancelCall"

    .line 128
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "isSwitchToNormalMeeting"

    .line 129
    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 130
    invoke-direct {p0, p1, v0, p2}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onPSTNCallOutResult(ZZZ)V

    goto :goto_0

    .line 131
    :cond_2
    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p2, p1, :cond_3

    .line 132
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->StartPmiResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    const-string p1, "meetingNumber"

    .line 100
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "result"

    .line 104
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onStartPmiResult(Z)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMyAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    .line 106
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onUpdateMyAudioResult()V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_3

    .line 108
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "status"

    .line 109
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onCallOutStatusChangedInActive(I)V

    goto :goto_0

    .line 110
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_4

    .line 111
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "newState"

    .line 112
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 113
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onEnterState(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 153
    invoke-super {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onResume()V

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "onResume callView is null!!!"

    .line 155
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, v2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setRoomNameLabelHidden(Z)V

    .line 162
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    invoke-interface {v3, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteState(Z)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    iget-boolean v3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->isMutedBeforeMeeting:Z

    invoke-interface {v0, v3}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteState(Z)V

    .line 169
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x7

    .line 170
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 171
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, v2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setMuteButtonHidden(Z)V

    .line 172
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, v2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setRoomNameLabelHidden(Z)V

    .line 173
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanDtmfForInviteByPhone()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-interface {v0, v3}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setKeypadButtonHidden(Z)V

    .line 176
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->currentCallingNumber:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallerInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 178
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v3

    if-eq v0, v3, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-ne v2, v0, :cond_6

    .line 180
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->hasPurePhoneUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    iget-wide v3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutConnectedTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutConnectedTime:J

    .line 184
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    iget-wide v3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutConnectedTime:J

    invoke-interface {v0, v3, v4}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->startDurationTimerForFirstCall(J)V

    .line 188
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-interface {v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setSpeakerVolumeControlHidden(Z)V

    .line 190
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onParticipantListChanged()V

    return-void
.end method

.method protected release()V
    .locals 1

    .line 84
    invoke-super {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->release()V

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DTMF digit key %s is tapped"

    const/4 v1, 0x1

    .line 471
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 474
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lus/zoom/zrc/model/Model;->sendDTMF(ILjava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callOutParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 477
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lus/zoom/zrc/model/Model;->sendDTMF(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method setPhoneBridgeDTMFString(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->phoneBridgeDTMFString:Ljava/lang/String;

    return-void
.end method

.method public startMeeting()V
    .locals 2

    .line 460
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->switchPstnCallToMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->release()V

    .line 463
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->dispatchDismissImmediately()V

    .line 465
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_0
    return-void
.end method
