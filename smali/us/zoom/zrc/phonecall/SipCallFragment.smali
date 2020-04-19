.class public Lus/zoom/zrc/phonecall/SipCallFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "SipCallFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SipCallFragment"


# instance fields
.field private addImageView:Landroid/widget/ImageView;

.field private addLayout:Landroid/view/View;

.field private addTextView:Landroid/widget/TextView;

.field private backgroundLayout:Landroid/view/View;

.field private backgroundMoreView:Landroid/view/View;

.field private backgroundSubtitleView:Landroid/widget/TextView;

.field private backgroundTitleView:Landroid/widget/TextView;

.field private cancelTransferView:Landroid/view/View;

.field private completeTransferView:Landroid/view/View;

.field private contextThemeWrapper:Landroid/view/ContextThemeWrapper;

.field private controlLayout:Landroid/view/View;

.field private dtmfHeaderLayout:Landroid/view/View;

.field private dtmfStatusView:Landroid/widget/TextView;

.field private dtmfTitleView:Landroid/widget/TextView;

.field private foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field private foregroundMergeView:Landroid/view/View;

.field private foregroundMoreView:Landroid/view/View;

.field private hangupButton:Landroid/widget/ImageView;

.field private hideKeypadButton:Landroid/view/View;

.field private holdImageView:Landroid/widget/ImageView;

.field private holdLayout:Landroid/view/View;

.field private holdTextView:Landroid/widget/TextView;

.field private inputDTMFView:Landroid/widget/TextView;

.field private isError:Z

.field private isMuted:Z

.field private isTimerRunning:Z

.field private keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

.field private keypadImageView:Landroid/widget/ImageView;

.field private keypadLayout:Landroid/view/View;

.field private keypadTextView:Landroid/widget/TextView;

.field private mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

.field private meetImageView:Landroid/widget/ImageView;

.field private meetLayout:Landroid/view/View;

.field private meetTextView:Landroid/widget/TextView;

.field private multiCallForegroundDescriptionView:Landroid/widget/TextView;

.field private multiCallForegroundTitleView:Landroid/widget/TextView;

.field private multiCallsLayout:Landroid/view/View;

.field private muteImageView:Landroid/widget/ImageView;

.field private muteLayout:Landroid/view/View;

.field private muteTextView:Landroid/widget/TextView;

.field private roomNameView:Landroid/widget/TextView;

.field private rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private settingLayout:Landroid/view/View;

.field private singleCallForegroundStatusView:Landroid/widget/TextView;

.field private singleCallLayout:Landroid/view/View;

.field private singleCallMoreView:Landroid/view/View;

.field private singleCallTitleView:Landroid/widget/TextView;

.field private sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

.field private timerHandler:Landroid/os/Handler;

.field private totalSize:I

.field private transferActionLayout:Landroid/view/View;

.field private transferImageView:Landroid/widget/ImageView;

.field private transferLayout:Landroid/view/View;

.field private transferStatus:I

.field private transferTextView:Landroid/widget/TextView;

.field private transparentBackLayout:Landroid/view/View;

.field private transparentBackTextView:Landroid/widget/TextView;

.field private viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    const/high16 v0, -0x80000000

    .line 123
    iput v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferStatus:I

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isMuted:Z

    .line 125
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isError:Z

    .line 126
    iput v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->totalSize:I

    .line 770
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->timerHandler:Landroid/os/Handler;

    .line 771
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isTimerRunning:Z

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->handleDismiss()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showMergeList()V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMoreView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showBackgroundCallers()V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->clickMeet()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->roomNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateForeground(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V

    return-void
.end method

.method static synthetic access$1600(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateBackground(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V

    return-void
.end method

.method static synthetic access$1700(Lus/zoom/zrc/phonecall/SipCallFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->totalSize:I

    return p0
.end method

.method static synthetic access$1702(Lus/zoom/zrc/phonecall/SipCallFragment;I)I
    .locals 0

    .line 55
    iput p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->totalSize:I

    return p1
.end method

.method static synthetic access$1800(Lus/zoom/zrc/phonecall/SipCallFragment;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateCallListPopup(II)V

    return-void
.end method

.method static synthetic access$1900(Lus/zoom/zrc/phonecall/SipCallFragment;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->onTransferStatusChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->onHideKeypadClicked()V

    return-void
.end method

.method static synthetic access$2000(Lus/zoom/zrc/phonecall/SipCallFragment;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->setMuteState(Z)V

    return-void
.end method

.method static synthetic access$2100(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2300(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showBackgroundCalls()V

    return-void
.end method

.method static synthetic access$2500(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-object p0
.end method

.method static synthetic access$2600(Lus/zoom/zrc/phonecall/SipCallFragment;J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipCallFragment;->setForegroundCallTime(J)V

    return-void
.end method

.method static synthetic access$2700(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->timerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallsLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/phonecall/SipCallFragment;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->onDTMFKeyPadClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfHeaderLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3100(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->controlLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3200(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/base/widget/keypad/KeypadGridView;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    return-object p0
.end method

.method static synthetic access$3300(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    return-object p0
.end method

.method static synthetic access$3400(Lus/zoom/zrc/phonecall/SipCallFragment;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->showMultiWays(Z)V

    return-void
.end method

.method static synthetic access$3500(Lus/zoom/zrc/phonecall/SipCallFragment;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->onWarmTransferStatusChagned(I)V

    return-void
.end method

.method static synthetic access$3602(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    return-object p1
.end method

.method static synthetic access$400(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallMoreView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/phonecall/SipCallFragment;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->showForegroundCallers(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/phonecall/SipCallFragment;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isMuted:Z

    return p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->onKeypadClicked()V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showAddCall()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showTransfer()V

    return-void
.end method

.method private appendTransferFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 680
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getThirdPartyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->transfer_from:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getThirdPartyDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private clickMeet()V
    .locals 3

    .line 130
    sget-object v0, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickMeet() called: foregroundCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-static {v0, v1}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->checkToUpgradeSipToMeeting(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    return-void
.end method

.method private dismissChildFragment()V
    .locals 3

    const/4 v0, 0x3

    .line 627
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/phonecall/SipAddCallFragment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lus/zoom/zrc/phonecall/SipCallTransferFragment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lus/zoom/zrc/settings/SettingsFragment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 628
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 629
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private enableAction(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hangupButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canHangupOrCancelTransfer()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->completeTransferView:Landroid/view/View;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canCompleteTransfer()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->cancelTransferView:Landroid/view/View;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canHangupOrCancelTransfer()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private enableAdd(Ljava/lang/Boolean;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addLayout:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private enableHold(Ljava/lang/Boolean;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdLayout:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 554
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private enableKeypad(Ljava/lang/Boolean;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadLayout:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private enableMeet(Ljava/lang/Boolean;)V
    .locals 2

    .line 564
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetLayout:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private enableTransfer(Ljava/lang/Boolean;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferLayout:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 560
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private getContextThemeWrapper()Landroid/content/Context;
    .locals 3

    .line 801
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->contextThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    .line 802
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCTheme_DialFragment_Dark:I

    .line 803
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->contextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 805
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->contextThemeWrapper:Landroid/view/ContextThemeWrapper;

    return-object v0
.end method

.method private handleDismiss()V
    .locals 3

    .line 950
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 951
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 952
    instance-of v2, v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    if-eqz v2, :cond_0

    .line 953
    check-cast v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->handlePhoneCallUIDismiss()V

    goto :goto_0

    .line 954
    :cond_0
    instance-of v0, v1, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;

    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideDTMFKeypad()V
    .locals 3

    .line 886
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hideKeypadButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->inputDTMFView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    if-eqz v0, :cond_3

    .line 895
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 900
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 901
    new-instance v2, Lus/zoom/zrc/phonecall/SipCallFragment$34;

    invoke-direct {v2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$34;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 912
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getBackgroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;

    move-result-object v2

    if-nez v2, :cond_2

    .line 914
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 916
    :cond_2
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallsLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 920
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 921
    new-instance v2, Lus/zoom/zrc/phonecall/SipCallFragment$35;

    invoke-direct {v2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$35;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 927
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfHeaderLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 929
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 930
    new-instance v2, Lus/zoom/zrc/phonecall/SipCallFragment$36;

    invoke-direct {v2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$36;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 936
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->controlLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 938
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 939
    new-instance v2, Lus/zoom/zrc/phonecall/SipCallFragment$37;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment$37;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 946
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 896
    :cond_3
    :goto_1
    sget-object v0, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationEnd() called with: call list view data is expired."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeData()V
    .locals 2

    .line 421
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->roomName:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$20;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$20;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 428
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$21;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$21;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 442
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$22;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$22;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 450
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuted:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$23;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$23;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 457
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$24;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$24;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 466
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$25;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$25;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 487
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$26;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$26;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static obtainSipCallFragment(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/SipCallFragment;
    .locals 1
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    const-class v0, Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/phonecall/SipCallFragment;

    if-nez p0, :cond_0

    .line 63
    new-instance p0, Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private onDTMFKeyPadClicked(Ljava/lang/String;)V
    .locals 1

    .line 827
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->sendDTMF(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->inputDTMFView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 830
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->inputDTMFView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onHideKeypadClicked()V
    .locals 0

    .line 823
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->hideDTMFKeypad()V

    return-void
.end method

.method private onHoldChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 570
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_hold_black:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_button_bg_highlight:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 573
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdTextView:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->unhold:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 574
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->unhold:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_hold_white:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_keypad_button_background:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 578
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdTextView:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->hold:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->hold:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onKeypadClicked()V
    .locals 0

    .line 819
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showDTMFKeyPad()V

    return-void
.end method

.method private onTransferStatusChanged(I)V
    .locals 2

    .line 603
    iget v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferStatus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 606
    :cond_0
    iput p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferStatus:I

    .line 607
    iget p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferStatus:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->dismissWaitingDialog()V

    .line 621
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->transfer_successful:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 612
    :pswitch_1
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->dismissChildFragment()V

    .line 613
    sget p1, Lus/zoom/zrcbox/R$string;->transferring:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :pswitch_2
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->dismissWaitingDialog()V

    goto :goto_0

    .line 616
    :pswitch_3
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->dismissWaitingDialog()V

    .line 617
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->transfer_failed:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onWarmTransferStatusChagned(I)V
    .locals 3

    .line 590
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 594
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hangupButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferActionLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 597
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hangupButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferActionLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private pauseTimer()V
    .locals 2

    .line 794
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private setForegroundCallTime(J)V
    .locals 2

    .line 704
    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->formatElapsedInHMS(J)Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->appendTransferFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 706
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/phonecall/CallTimeUtils;->getContentDescriptionForCallTime(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->appendTransferFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallForegroundStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallForegroundStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallForegroundDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallForegroundDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfStatusView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setForegroundStatus(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 688
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->appendTransferFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallForegroundStatusView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 693
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallForegroundStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallForegroundDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isTimerRunning:Z

    if-nez v0, :cond_1

    .line 699
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallForegroundStatusView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setMuteState(Z)V
    .locals 1

    .line 740
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isMuted:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 743
    :cond_0
    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isMuted:Z

    if-eqz p1, :cond_2

    .line 745
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_mic_mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_button_bg_highlight:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 747
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteTextView:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 749
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_microphone:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 750
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 751
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_microphone_now_muted:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 753
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_microphone:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 756
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_mic:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 757
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_keypad_button_background:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 758
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteTextView:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 760
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_mute_my_microphone:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 761
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 762
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_microphone_now_unmuted:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 764
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_mute_my_microphone:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private shouldHideKeypad(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z
    .locals 2

    .line 530
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->canDTMF(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 536
    :cond_1
    invoke-static {p1, p2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isSame(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private showAddCall()V
    .locals 2

    .line 731
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/phonecall/SipAddCallFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method private showBackgroundCallers()V
    .locals 2

    .line 998
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->newBackgroundCallersPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundMoreView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showSipCallListPopupWindow(Landroid/view/View;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V

    return-void
.end method

.method private showBackgroundCalls()V
    .locals 2

    .line 983
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->newBackgroundCallPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showSipCallListPopupWindow(Landroid/view/View;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V

    return-void
.end method

.method private showDTMFKeyPad()V
    .locals 3

    .line 834
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hideKeypadButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferActionLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hangupButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 843
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 844
    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$30;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$30;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 851
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 852
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallsLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 857
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 858
    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$31;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$31;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 864
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfHeaderLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 866
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 867
    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$32;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$32;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 873
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->controlLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 875
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 876
    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$33;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$33;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 882
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showForegroundCallers(Landroid/view/View;)V
    .locals 1

    .line 993
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->newForegroundCallersPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object v0

    .line 994
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showSipCallListPopupWindow(Landroid/view/View;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V

    return-void
.end method

.method private showMergeList()V
    .locals 2

    .line 988
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->newMergeCallPopupWindow(Landroid/content/Context;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    move-result-object v0

    .line 989
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMergeView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showSipCallListPopupWindow(Landroid/view/View;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V

    return-void
.end method

.method private showMultiWays(Z)V
    .locals 2

    .line 718
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfHeaderLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 722
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallsLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 725
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallsLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showSipCallListPopupWindow(Landroid/view/View;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1004
    sget-object p1, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    const-string p2, "showSipCallListPopupWindow() called, but can not create popup."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->dismiss()V

    .line 1010
    :cond_1
    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    .line 1011
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$38;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$38;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1017
    invoke-static {p2, p1}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 1018
    invoke-virtual {p2, p1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->positionTriangleTo(Landroid/view/View;)V

    return-void
.end method

.method private showTransfer()V
    .locals 2

    .line 735
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/phonecall/SipCallTransferFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method private startStatusTimer()V
    .locals 2

    .line 774
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->stopStatusTimer()V

    const/4 v0, 0x1

    .line 775
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isTimerRunning:Z

    .line 776
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->timerHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$29;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$29;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopStatusTimer()V
    .locals 2

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isTimerRunning:Z

    .line 790
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private updateBackground(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 642
    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showMultiWays(Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 645
    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->showMultiWays(Z)V

    .line 646
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;->isSingle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundMoreView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundLayout:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$27;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment$27;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 660
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundMoreView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundLayout:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$28;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$28;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private updateCallListPopup(II)V
    .locals 1

    .line 963
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-le p1, p2, :cond_1

    .line 967
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->dismiss()V

    return-void

    .line 972
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->isListSizeChanged()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 975
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    instance-of p2, p1, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;

    if-eqz p2, :cond_3

    .line 976
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showBackgroundCalls()V

    goto :goto_0

    .line 977
    :cond_3
    instance-of p1, p1, Lus/zoom/zrc/phonecall/MergeCallPopupWindow;

    if-eqz p1, :cond_4

    .line 978
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showMergeList()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateForeground(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 501
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 502
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateForegroundTitle(Ljava/lang/String;)V

    .line 503
    iget-object v1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->foregroundStatus:Ljava/lang/String;

    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateForegroundStatus(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateKeypad(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 505
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isOnHold(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->onHoldChanged(Ljava/lang/Boolean;)V

    .line 506
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canHold()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableHold(Ljava/lang/Boolean;)V

    .line 507
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMergeView:Landroid/view/View;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canMerge()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canAdd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableAdd(Ljava/lang/Boolean;)V

    .line 509
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canTransfer()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableTransfer(Ljava/lang/Boolean;)V

    .line 510
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->canMeet()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableMeet(Ljava/lang/Boolean;)V

    .line 511
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableAction(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V

    .line 512
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->getWarmTransferStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->onWarmTransferStatusChagned(I)V

    return-void
.end method

.method private updateForegroundStatus(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 672
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->startStatusTimer()V

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->stopStatusTimer()V

    .line 675
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->setForegroundStatus(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateForegroundTitle(Ljava/lang/String;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallForegroundTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateKeypad(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 2

    .line 516
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->canDTMF(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 517
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableKeypad(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 519
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->enableKeypad(Ljava/lang/Boolean;)V

    .line 520
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->inputDTMFView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_0
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipCallFragment;->shouldHideKeypad(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 523
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 524
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->hideDTMFKeypad()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 138
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isError:Z

    .line 142
    sget-object p1, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate() called with: sipPhoneCallPresenter == null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$1;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->viewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

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

    .line 159
    sget p3, Lus/zoom/zrcbox/R$layout;->sip_phone_call_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 811
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 812
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContextThemeWrapper()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 413
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->mCurrentPopup:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->dismiss()V

    .line 416
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 399
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 400
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isTimerRunning:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->startStatusTimer()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->pauseTimer()V

    .line 408
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    iget-boolean p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isError:Z

    if-eqz p2, :cond_0

    return-void

    .line 167
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->layout_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 168
    sget p2, Lus/zoom/zrcbox/R$id;->layout_back_transparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackLayout:Landroid/view/View;

    .line 169
    sget p2, Lus/zoom/zrcbox/R$id;->tv_back_title_transparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackTextView:Landroid/widget/TextView;

    .line 170
    sget p2, Lus/zoom/zrcbox/R$id;->layout_setting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->settingLayout:Landroid/view/View;

    .line 172
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->roomNameView:Landroid/widget/TextView;

    .line 173
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_hide_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hideKeypadButton:Landroid/view/View;

    .line 174
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_hangup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hangupButton:Landroid/widget/ImageView;

    .line 176
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hangupButton:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$2;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->hideKeypadButton:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$3;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget p2, Lus/zoom/zrcbox/R$id;->input_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->inputDTMFView:Landroid/widget/TextView;

    .line 192
    sget p2, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    .line 193
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadGridView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$4;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setKeypadListener(Lus/zoom/zrc/base/widget/keypad/KeypadListener;)V

    .line 200
    sget p2, Lus/zoom/zrcbox/R$id;->iv_more_callers:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallMoreView:Landroid/view/View;

    .line 202
    sget p2, Lus/zoom/zrcbox/R$id;->layout_dtmf_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfHeaderLayout:Landroid/view/View;

    .line 203
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_name_dtmf:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfTitleView:Landroid/widget/TextView;

    .line 204
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_status_dtmf:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->dtmfStatusView:Landroid/widget/TextView;

    .line 206
    sget p2, Lus/zoom/zrcbox/R$id;->layout_multi_ways:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallsLayout:Landroid/view/View;

    .line 207
    sget p2, Lus/zoom/zrcbox/R$id;->layout_single_way:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallLayout:Landroid/view/View;

    .line 209
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallTitleView:Landroid/widget/TextView;

    .line 211
    sget p2, Lus/zoom/zrcbox/R$id;->tv_name_active:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallForegroundTitleView:Landroid/widget/TextView;

    .line 212
    sget p2, Lus/zoom/zrcbox/R$id;->tv_detail_active:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->multiCallForegroundDescriptionView:Landroid/widget/TextView;

    .line 213
    sget p2, Lus/zoom/zrcbox/R$id;->iv_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMergeView:Landroid/view/View;

    .line 214
    sget p2, Lus/zoom/zrcbox/R$id;->iv_more_active:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMoreView:Landroid/view/View;

    .line 216
    sget p2, Lus/zoom/zrcbox/R$id;->layout_background_call:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundLayout:Landroid/view/View;

    .line 217
    sget p2, Lus/zoom/zrcbox/R$id;->tv_background_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundTitleView:Landroid/widget/TextView;

    .line 218
    sget p2, Lus/zoom/zrcbox/R$id;->tv_background_subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundSubtitleView:Landroid/widget/TextView;

    .line 219
    sget p2, Lus/zoom/zrcbox/R$id;->iv_background_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundMoreView:Landroid/view/View;

    .line 221
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallForegroundStatusView:Landroid/widget/TextView;

    .line 223
    sget p2, Lus/zoom/zrcbox/R$id;->layout_controls:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->controlLayout:Landroid/view/View;

    .line 225
    sget p2, Lus/zoom/zrcbox/R$id;->mute_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteLayout:Landroid/view/View;

    .line 226
    sget p2, Lus/zoom/zrcbox/R$id;->mute_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteImageView:Landroid/widget/ImageView;

    .line 227
    sget p2, Lus/zoom/zrcbox/R$id;->mute_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteTextView:Landroid/widget/TextView;

    .line 229
    sget p2, Lus/zoom/zrcbox/R$id;->layout_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadLayout:Landroid/view/View;

    .line 230
    sget p2, Lus/zoom/zrcbox/R$id;->iv_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadImageView:Landroid/widget/ImageView;

    .line 231
    sget p2, Lus/zoom/zrcbox/R$id;->tv_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadTextView:Landroid/widget/TextView;

    .line 233
    sget p2, Lus/zoom/zrcbox/R$id;->layout_add:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addLayout:Landroid/view/View;

    .line 234
    sget p2, Lus/zoom/zrcbox/R$id;->iv_add:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addImageView:Landroid/widget/ImageView;

    .line 235
    sget p2, Lus/zoom/zrcbox/R$id;->tv_add:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addTextView:Landroid/widget/TextView;

    .line 237
    sget p2, Lus/zoom/zrcbox/R$id;->layout_hold:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdLayout:Landroid/view/View;

    .line 238
    sget p2, Lus/zoom/zrcbox/R$id;->iv_hold:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdImageView:Landroid/widget/ImageView;

    .line 239
    sget p2, Lus/zoom/zrcbox/R$id;->tv_hold:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdTextView:Landroid/widget/TextView;

    .line 241
    sget p2, Lus/zoom/zrcbox/R$id;->layout_transfer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferLayout:Landroid/view/View;

    .line 242
    sget p2, Lus/zoom/zrcbox/R$id;->iv_transfer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferImageView:Landroid/widget/ImageView;

    .line 243
    sget p2, Lus/zoom/zrcbox/R$id;->tv_transfer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferTextView:Landroid/widget/TextView;

    .line 245
    sget p2, Lus/zoom/zrcbox/R$id;->layout_start_meeting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetLayout:Landroid/view/View;

    .line 246
    sget p2, Lus/zoom/zrcbox/R$id;->iv_meet:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetImageView:Landroid/widget/ImageView;

    .line 247
    sget p2, Lus/zoom/zrcbox/R$id;->tv_meet:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetTextView:Landroid/widget/TextView;

    .line 249
    sget p2, Lus/zoom/zrcbox/R$id;->layout_transfer_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferActionLayout:Landroid/view/View;

    .line 251
    sget p2, Lus/zoom/zrcbox/R$id;->tv_complete_transfer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->completeTransferView:Landroid/view/View;

    .line 252
    sget p2, Lus/zoom/zrcbox/R$id;->tv_cancel_transfer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->cancelTransferView:Landroid/view/View;

    .line 254
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->settingLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$5;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$5;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallTitleView:Landroid/widget/TextView;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$6;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$6;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->singleCallMoreView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$7;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$7;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->muteLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$8;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$8;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->keypadLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$9;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$9;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->addLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$10;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$10;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transferLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$11;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$11;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMergeView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$12;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$12;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->foregroundMoreView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$13;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$13;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->backgroundMoreView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$14;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$14;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->holdLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$15;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$15;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->meetLayout:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$16;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$16;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->completeTransferView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$17;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$17;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->cancelTransferView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/phonecall/SipCallFragment$18;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$18;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateTitle()V

    .line 356
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->observeData()V

    return-void
.end method

.method updateTitle()V
    .locals 5

    .line 360
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->isError:Z

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackLayout:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 364
    sget-object v0, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    const-string v2, "updateTitle() called, but transparentBackLayout is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 367
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackTextView:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->cancel_leave_meeting_description:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 371
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->settingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->settingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_0
    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$19;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$19;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    .line 383
    iget-object v3, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackLayout:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v3, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->transparentBackTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget v1, Lus/zoom/zrcbox/R$id;->layout_setting:I

    :goto_1
    const/4 v0, 0x3

    if-nez v1, :cond_4

    const/4 v2, 0x3

    .line 388
    :cond_4
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 389
    iget-object v4, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 390
    sget v4, Lus/zoom/zrcbox/R$id;->layout_single_way:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 391
    sget v4, Lus/zoom/zrcbox/R$id;->layout_multi_ways:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 392
    sget v4, Lus/zoom/zrcbox/R$id;->layout_dtmf_header:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 393
    sget v4, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 394
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
