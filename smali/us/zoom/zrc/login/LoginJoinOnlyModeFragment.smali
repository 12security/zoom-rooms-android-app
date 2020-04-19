.class public Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoginJoinOnlyModeFragment.java"


# static fields
.field private static final SALES_PHONE_NUMBER:Ljava/lang/String; = "(888) 799-9666"


# instance fields
.field private mContentPaired:Landroid/view/View;

.field private mContentPlanEnded:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->onLoginClicked()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->onTestMeetingClicked()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->onEnterLicenseClicked()V

    return-void
.end method

.method private onEnterLicenseClicked()V
    .locals 1

    .line 103
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendJoinOnlyClickLicenseKey()V

    .line 104
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->showLoginWithLicenseKey(Landroid/content/Context;)V

    return-void
.end method

.method private onLoginClicked()V
    .locals 1

    .line 89
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendJoinOnlyClickSignIn()V

    .line 90
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->showLoginWithWorkEmail(Landroid/content/Context;)V

    return-void
.end method

.method private onTestMeetingClicked()V
    .locals 2

    .line 94
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 95
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->joinTestMeeting()I

    .line 96
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    sget v1, Lus/zoom/zrcbox/R$string;->start_test_meeting_prompt:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupEnterLicenseKey(Landroid/widget/TextView;)V
    .locals 6

    .line 108
    sget v0, Lus/zoom/zrcbox/R$string;->license_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    sget v1, Lus/zoom/zrcbox/R$string;->enter_license_key_in_join_only:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    .line 114
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;-><init>(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V

    const/16 v5, 0x21

    invoke-virtual {v4, v1, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 128
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v1, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 131
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 40
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_join_only_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 79
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->mContentPaired:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->mContentPlanEnded:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->mContentPaired:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->mContentPlanEnded:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    sget p2, Lus/zoom/zrcbox/R$id;->content_paired:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->mContentPaired:Landroid/view/View;

    .line 47
    sget p2, Lus/zoom/zrcbox/R$id;->content_plan_ended:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->mContentPlanEnded:Landroid/view/View;

    .line 50
    sget p2, Lus/zoom/zrcbox/R$id;->button_login:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$1;-><init>(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget p2, Lus/zoom/zrcbox/R$id;->button_test_meeting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$2;-><init>(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->login_des_free_trial:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->setupEnterLicenseKey(Landroid/widget/TextView;)V

    .line 69
    sget p2, Lus/zoom/zrcbox/R$id;->login_trial_expired_contact_sales:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 70
    sget v0, Lus/zoom/zrcbox/R$string;->contact_sales:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "(888) 799-9666"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget p2, Lus/zoom/zrcbox/R$id;->login_des_trial_expired:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 73
    sget p2, Lus/zoom/zrcbox/R$string;->upgrade_account_alert:I

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/billing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, p2, v0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
