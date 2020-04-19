.class public Lus/zoom/zrc/ShareByPhoneDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ShareByPhoneDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShareByPhoneDialogFragment"


# instance fields
.field private backTitle:Ljava/lang/String;

.field private mCallOutFragment:Landroidx/fragment/app/Fragment;

.field private mDialFragment:Lus/zoom/zrc/view/DialFragment;

.field private mFinishAfterDismiss:Ljava/lang/Boolean;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ShareByPhoneDialogFragment;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    return-object p0
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1

    .line 80
    sget-object v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->safeDismiss()V

    :cond_0
    return-void
.end method

.method private handleDialOutPstnCall()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showPstnCallFragment()V

    return-void
.end method

.method private initAccessibility()V
    .locals 4

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Lus/zoom/zrc/ShareByPhoneDialogFragment$1;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment$1;-><init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isBackViewEnabled()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->img_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onEnterState()V
    .locals 2

    .line 292
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    invoke-direct {p0, v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->setBackViewEnabled(Z)V

    .line 296
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->handlePhoneCallUIDismiss()V

    :cond_1
    return-void
.end method

.method private setBackViewEnabled(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setupBackView()V
    .locals 6

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->backTitle:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->tv_back:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 162
    sget v3, Lus/zoom/zrcbox/R$string;->back_to:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    sget v0, Lus/zoom/zrcbox/R$string;->back:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 167
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v0, Lus/zoom/zrc/ShareByPhoneDialogFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment$2;-><init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldShowPstnCall()Z
    .locals 1

    .line 278
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->hasPurePhoneUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldShowSipCall()Z
    .locals 1

    .line 274
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V
    .locals 2

    .line 49
    sget-object v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;-><init>()V

    .line 58
    :cond_1
    iput-object p1, v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->backTitle:Ljava/lang/String;

    .line 59
    sget-object p1, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    return-void
.end method

.method private showDialFragment()V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lus/zoom/zrc/view/DialFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/DialFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    .line 198
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DialFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 201
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    iget-object v2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 202
    new-instance v1, Lus/zoom/zrc/ShareByPhoneDialogFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment$3;-><init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    .line 215
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public static showPstnCall(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    if-eqz p0, :cond_0

    .line 75
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showPstnCallFragment()V

    :cond_0
    return-void
.end method

.method private showPstnCallFragment()V
    .locals 3

    .line 247
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->obtainPstnInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/PhoneCallFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mCallOutFragment:Landroidx/fragment/app/Fragment;

    .line 252
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mCallOutFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 255
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    iget-object v2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mCallOutFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 256
    new-instance v1, Lus/zoom/zrc/ShareByPhoneDialogFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment$5;-><init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    .line 269
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public static showSipCall(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    .line 65
    sget-object p1, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;

    if-eqz p0, :cond_0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showSipCallFragment()V

    :cond_0
    return-void
.end method

.method private showSipCallFragment()V
    .locals 3

    .line 220
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->obtainSipCallFragment(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/SipCallFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mCallOutFragment:Landroidx/fragment/app/Fragment;

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mCallOutFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x1

    .line 227
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 228
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    iget-object v2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mCallOutFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 229
    new-instance v1, Lus/zoom/zrc/ShareByPhoneDialogFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment$4;-><init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    .line 242
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method


# virtual methods
.method public handlePhoneCallUIDismiss()V
    .locals 1

    .line 306
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mFinishAfterDismiss:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->safeDismiss()V

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showDialFragment()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->isBackViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->safeDismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setContainerViewId(I)V

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

    const/4 p3, 0x1

    .line 95
    invoke-virtual {p0, p3}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->requestWindowFeature(I)V

    const/4 p3, 0x0

    .line 96
    invoke-virtual {p0, p3}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 98
    sget v0, Lus/zoom/zrcbox/R$layout;->share_by_phone:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 283
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 284
    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p2, p1, :cond_0

    .line 285
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->handleDialOutPstnCall()V

    goto :goto_0

    .line 286
    :cond_0
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_1

    .line 287
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->onEnterState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 141
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 142
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->initAccessibility()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 104
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 107
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 112
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->shouldShowSipCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mFinishAfterDismiss:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 115
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mFinishAfterDismiss:Ljava/lang/Boolean;

    .line 119
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mFinishAfterDismiss:Ljava/lang/Boolean;

    .line 122
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showSipCallFragment()V

    goto :goto_0

    .line 123
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->shouldShowPstnCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showPstnCallFragment()V

    .line 125
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mFinishAfterDismiss:Ljava/lang/Boolean;

    goto :goto_0

    .line 127
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showDialFragment()V

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->mFinishAfterDismiss:Ljava/lang/Boolean;

    .line 130
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->setupBackView()V

    return-void
.end method
