.class public Lus/zoom/zrc/phonecall/PhoneCallFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "PhoneCallFragment.java"

# interfaces
.implements Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_NONE:I = 0x0

.field private static final CALL_TYPE_PSTN:I = 0x1

.field private static final CALL_TYPE_SIP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PhoneCallFragment"


# instance fields
.field private callType:I

.field private contextThemeWrapper:Landroid/view/ContextThemeWrapper;

.field private hangupButton:Landroid/widget/ImageView;

.field private hideKeypadButton:Landroid/view/View;

.field private inputDTMFView:Landroid/widget/TextView;

.field private keypadButton:Landroid/widget/ImageView;

.field private keypadLabel:Landroid/widget/TextView;

.field private muteButton:Landroid/widget/ImageView;

.field private muteLabel:Landroid/widget/TextView;

.field private presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

.field private roomNameView:Landroid/widget/TextView;

.field private speakerVolumeView:Landroid/view/View;

.field private startMeetingView:Lus/zoom/zrc/view/ZRCTextViewButton;

.field private timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->onHangupClicked()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->onMuteClicked()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->onKeypadClicked()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->onHideKeypadClicked()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->onStartMeetingClicked()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/phonecall/PhoneCallFragment;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->onDTMFKeyPadClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/phonecall/PhoneCallFragment;)Lus/zoom/zrc/utils/CallTimeHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->handleDismiss()V

    return-void
.end method

.method private checkPresenter()V
    .locals 3

    .line 92
    iget v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->callType:I

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->TAG:Ljava/lang/String;

    const-string v1, "callType == CALL_TYPE_NONE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->handleDismiss()V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 99
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 103
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->handleDismiss()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-ne v1, v0, :cond_3

    .line 106
    invoke-virtual {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->setCallView(Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->setPresenter(Lus/zoom/zrc/phonecall/PhoneCallPresenter;)V

    :goto_0
    return-void
.end method

.method private getContextThemeWrapper()Landroid/content/Context;
    .locals 3

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->contextThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_1

    .line 152
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCTheme_DialFragment_Dark:I

    .line 153
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v1, :cond_0

    .line 155
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCTheme_DialFragment_Light:I

    .line 158
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->contextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 160
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->contextThemeWrapper:Landroid/view/ContextThemeWrapper;

    return-object v0
.end method

.method public static getInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/PhoneCallFragment;
    .locals 1
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 88
    const-class v0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    return-object p0
.end method

.method private handleDismiss()V
    .locals 3

    .line 717
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 718
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 719
    instance-of v2, v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    if-eqz v2, :cond_0

    .line 720
    check-cast v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->handlePhoneCallUIDismiss()V

    goto :goto_0

    .line 721
    :cond_0
    instance-of v0, v1, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 723
    :cond_1
    instance-of v0, v1, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;

    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 725
    :cond_2
    instance-of v0, v1, Lus/zoom/zrc/MeetingActivity;

    if-eqz v0, :cond_3

    .line 726
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 727
    instance-of v1, v0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v1, :cond_3

    .line 728
    check-cast v0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->handleCallOutDismiss()V

    .line 732
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_4

    .line 733
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->release()V

    :cond_4
    return-void
.end method

.method private hideDTMFKeypad()V
    .locals 6

    .line 662
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hideKeypadButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->inputDTMFView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 671
    iget-object v2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/utils/CallTimeHandler;->setTimeView(Landroid/widget/TextView;)V

    .line 674
    sget v1, Lus/zoom/zrcbox/R$id;->call_info_entering:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 675
    sget v2, Lus/zoom/zrcbox/R$id;->layout_dtmf_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 676
    sget v3, Lus/zoom/zrcbox/R$id;->layout_controls:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 677
    sget v4, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 679
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 680
    new-instance v5, Lus/zoom/zrc/phonecall/PhoneCallFragment$14;

    invoke-direct {v5, p0, v1}, Lus/zoom/zrc/phonecall/PhoneCallFragment$14;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 686
    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 688
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 689
    new-instance v4, Lus/zoom/zrc/phonecall/PhoneCallFragment$15;

    invoke-direct {v4, p0, v2}, Lus/zoom/zrc/phonecall/PhoneCallFragment$15;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 695
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 697
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 698
    new-instance v2, Lus/zoom/zrc/phonecall/PhoneCallFragment$16;

    invoke-direct {v2, p0, v3}, Lus/zoom/zrc/phonecall/PhoneCallFragment$16;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 704
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 706
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 707
    new-instance v2, Lus/zoom/zrc/phonecall/PhoneCallFragment$17;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$17;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initDTMFKeypad()V
    .locals 5

    .line 646
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 651
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->call_info_entering:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 652
    sget v2, Lus/zoom/zrcbox/R$id;->layout_dtmf_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 653
    sget v3, Lus/zoom/zrcbox/R$id;->layout_controls:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 654
    sget v4, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    .line 655
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 656
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 658
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isInMeeting()Z
    .locals 1

    .line 275
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    return v0
.end method

.method private isInShareByPhone()Z
    .locals 1

    .line 279
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    return v0
.end method

.method private static obtainInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)Lus/zoom/zrc/phonecall/PhoneCallFragment;
    .locals 1
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 78
    const-class v0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    if-nez p0, :cond_0

    .line 80
    new-instance p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;-><init>()V

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->setCallType(I)V

    return-object p0
.end method

.method public static obtainPstnInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/PhoneCallFragment;
    .locals 1
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 72
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->obtainInstance()Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    const/4 v0, 0x1

    .line 73
    invoke-static {p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->obtainInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)Lus/zoom/zrc/phonecall/PhoneCallFragment;

    move-result-object p0

    return-object p0
.end method

.method private onDTMFKeyPadClicked(Ljava/lang/String;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->sendDTMF(Ljava/lang/String;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->inputDTMFView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 589
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->inputDTMFView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onHangupClicked()V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    .line 556
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->clickHangup()V

    :cond_0
    return-void
.end method

.method private onHideKeypadClicked()V
    .locals 0

    .line 574
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hideDTMFKeypad()V

    return-void
.end method

.method private onKeypadClicked()V
    .locals 0

    .line 570
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->showDTMFKeyPad()V

    return-void
.end method

.method private onMuteClicked()V
    .locals 2

    .line 562
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 563
    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_microphone:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 564
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 565
    invoke-virtual {v1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->clickMute(Z)V

    :cond_0
    return-void
.end method

.method private onStartMeetingClicked()V
    .locals 1

    .line 578
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->startMeeting()V

    :cond_0
    return-void
.end method

.method private setCallType(I)V
    .locals 0

    .line 133
    iput p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->callType:I

    return-void
.end method

.method private setPresenter(Lus/zoom/zrc/phonecall/PhoneCallPresenter;)V
    .locals 2
    .param p1    # Lus/zoom/zrc/phonecall/PhoneCallPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 118
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    .line 119
    invoke-virtual {p1, p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->setCallView(Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;)V

    .line 120
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 122
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onResume()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1, p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onUICreated(Lus/zoom/androidlib/util/IUIElement;)V

    .line 129
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isInShareByPhone()Z

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->setInLocalPresentation(Z)V

    return-void
.end method

.method private showDTMFKeyPad()V
    .locals 6

    .line 593
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hideKeypadButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 600
    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_status_dtmf:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 601
    iget-object v2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/utils/CallTimeHandler;->setTimeView(Landroid/widget/TextView;)V

    .line 603
    sget v1, Lus/zoom/zrcbox/R$id;->call_info_entering:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 604
    sget v2, Lus/zoom/zrcbox/R$id;->layout_dtmf_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 605
    sget v3, Lus/zoom/zrcbox/R$id;->layout_controls:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 606
    sget v4, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 609
    new-instance v5, Lus/zoom/zrc/phonecall/PhoneCallFragment$10;

    invoke-direct {v5, p0, v1}, Lus/zoom/zrc/phonecall/PhoneCallFragment$10;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 615
    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 618
    new-instance v4, Lus/zoom/zrc/phonecall/PhoneCallFragment$11;

    invoke-direct {v4, p0, v2}, Lus/zoom/zrc/phonecall/PhoneCallFragment$11;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 624
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 626
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 627
    new-instance v2, Lus/zoom/zrc/phonecall/PhoneCallFragment$12;

    invoke-direct {v2, p0, v3}, Lus/zoom/zrc/phonecall/PhoneCallFragment$12;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 633
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 635
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$anim;->scale_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 636
    new-instance v2, Lus/zoom/zrc/phonecall/PhoneCallFragment$13;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$13;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public delayDismiss()V
    .locals 4

    .line 529
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 534
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->handleDismiss()V

    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/phonecall/PhoneCallFragment$9;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$9;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dismissImmediately()V
    .locals 1

    .line 548
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->handleDismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 138
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iget p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->callType:I

    if-nez p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 141
    sget-object p1, Lus/zoom/zrc/phonecall/PhoneCallFragment;->TAG:Ljava/lang/String;

    const-string v0, "callType == CALL_TYPE_NONE && getRetainFragment().cachedObj == null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->callType:I

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->callType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    :goto_0
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

    .line 174
    sget p3, Lus/zoom/zrcbox/R$layout;->phone_call_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 330
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onDestroy()V

    .line 331
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->inputDTMFView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 166
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 167
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContextThemeWrapper()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 317
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    .line 318
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->checkPresenter()V

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    .line 321
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->initDTMFKeypad()V

    .line 323
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->presenter:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onHiddenChanged(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    .line 312
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 290
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 291
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    .line 294
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 297
    new-instance v1, Lus/zoom/zrc/phonecall/PhoneCallFragment$8;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$8;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/widget/TextView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 284
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 285
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->checkPresenter()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 179
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 180
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->roomNameView:Landroid/widget/TextView;

    .line 181
    sget p2, Lus/zoom/zrcbox/R$id;->mute_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    .line 182
    sget p2, Lus/zoom/zrcbox/R$id;->mute_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteLabel:Landroid/widget/TextView;

    .line 183
    sget p2, Lus/zoom/zrcbox/R$id;->keypad_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadButton:Landroid/widget/ImageView;

    .line 184
    sget p2, Lus/zoom/zrcbox/R$id;->keypad_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadLabel:Landroid/widget/TextView;

    .line 185
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_hide_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hideKeypadButton:Landroid/view/View;

    .line 186
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_hangup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hangupButton:Landroid/widget/ImageView;

    .line 187
    sget p2, Lus/zoom/zrcbox/R$id;->speaker_volume_control:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->speakerVolumeView:Landroid/view/View;

    .line 188
    sget p2, Lus/zoom/zrcbox/R$id;->phone_call_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 189
    sget v0, Lus/zoom/zrcbox/R$id;->phone_call_start_meeting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCTextViewButton;

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->startMeetingView:Lus/zoom/zrc/view/ZRCTextViewButton;

    .line 191
    new-instance v0, Lus/zoom/zrc/utils/CallTimeHandler;

    invoke-direct {v0, p2}, Lus/zoom/zrc/utils/CallTimeHandler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;

    .line 192
    sget p2, Lus/zoom/zrcbox/R$id;->layout_setting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 194
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$1;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hangupButton:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$2;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$3;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadButton:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$4;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hideKeypadButton:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$5;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$5;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->startMeetingView:Lus/zoom/zrc/view/ZRCTextViewButton;

    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$6;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$6;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/ZRCTextViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget p2, Lus/zoom/zrcbox/R$id;->input_keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->inputDTMFView:Landroid/widget/TextView;

    .line 241
    sget p2, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    .line 242
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$7;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$7;-><init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setKeypadListener(Lus/zoom/zrc/base/widget/keypad/KeypadListener;)V

    const/4 p2, 0x0

    .line 249
    invoke-virtual {p0, p2}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->setKeypadButtonEnabled(Z)V

    .line 251
    sget v0, Lus/zoom/zrcbox/R$id;->phone_call_provider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isInShareByPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    sget v0, Lus/zoom/zrcbox/R$id;->phone_call_status_dtmf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    sget v0, Lus/zoom/zrcbox/R$id;->phone_call_name_dtmf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 261
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x2

    .line 262
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 263
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 267
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 268
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadButton:Landroid/widget/ImageView;

    sget p2, Lus/zoom/zrcbox/R$drawable;->key_pad:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadButton:Landroid/widget/ImageView;

    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method public setCallProvider(Ljava/lang/CharSequence;)V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_provider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 406
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCallStatus(Ljava/lang/CharSequence;)V
    .locals 2

    .line 413
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-static {v0, p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCallerInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    .line 342
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 348
    sget v2, Lus/zoom/zrcbox/R$id;->phone_call_number:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 349
    sget v3, Lus/zoom/zrcbox/R$id;->phone_call_name_dtmf:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 350
    sget v4, Lus/zoom/zrcbox/R$id;->phone_call_number_dtmf:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 353
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 361
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x0

    .line 364
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 367
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 368
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/16 p1, 0x8

    .line 371
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCallerParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 387
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$id;->phone_call_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 388
    sget v2, Lus/zoom/zrcbox/R$id;->phone_call_number:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 389
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 394
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->setCallerInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public setHangupButtonEnabled(Z)V
    .locals 1

    .line 489
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->hangupButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setKeypadButtonEnabled(Z)V
    .locals 1

    .line 472
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 473
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->keypadLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setKeypadButtonHidden(Z)V
    .locals 2

    .line 478
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->keypad_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 484
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMuteButtonEnabled(Z)V
    .locals 1

    .line 455
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setMuteButtonHidden(Z)V
    .locals 2

    .line 461
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->mute_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 467
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMuteState(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 429
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteLabel:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 430
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_mic_mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_button_bg_highlight:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 433
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_microphone:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 434
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_microphone_now_muted:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 437
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_microphone:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteLabel:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_mic:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->phone_keypad_button_background:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 444
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_mute_my_microphone:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 445
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 446
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_microphone_now_unmuted:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 448
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->muteButton:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_mute_my_microphone:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setRoomName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->roomNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRoomNameLabelHidden(Z)V
    .locals 1

    .line 524
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->roomNameView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSpeakerVolumeControlHidden(Z)V
    .locals 1

    .line 514
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->speakerVolumeView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStartMeetingButtonHidden(Z)V
    .locals 1

    .line 494
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->startMeetingView:Lus/zoom/zrc/view/ZRCTextViewButton;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setVisibility(I)V

    return-void
.end method

.method public startDurationTimerForFirstCall(J)V
    .locals 3

    .line 504
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/utils/CallTimeHandler;->start(J)V

    return-void
.end method

.method public stopDurationTimerForFirstCall()V
    .locals 1

    .line 509
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment;->timerHandler:Lus/zoom/zrc/utils/CallTimeHandler;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/CallTimeHandler;->stop()V

    return-void
.end method
