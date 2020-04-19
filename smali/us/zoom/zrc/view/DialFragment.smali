.class public Lus/zoom/zrc/view/DialFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "DialFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DialFragment"


# instance fields
.field private pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

.field private sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method private decideToShowDialUI()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->shouldUseSipDialOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->showSipDial()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->showPstnDial()V

    :goto_0
    return-void
.end method

.method private onSipServiceChanged()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->decideToShowDialUI()V

    return-void
.end method

.method private setupTitleBar(Landroid/view/View;)V
    .locals 2

    .line 51
    sget v0, Lus/zoom/zrcbox/R$id;->title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance v0, Lus/zoom/zrc/view/DialFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/DialFragment$1;-><init>(Lus/zoom/zrc/view/DialFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private shouldUseSipDialOut()Z
    .locals 2

    .line 168
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsSipCallout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showPstnDial()V
    .locals 4

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/view/PstnDialFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PstnDialFragment;

    iput-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    .line 112
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/PstnDialFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Lus/zoom/zrc/view/PstnDialFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/PstnDialFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    .line 120
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 122
    sget v1, Lus/zoom/zrcbox/R$id;->dial_content:I

    iget-object v2, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    sget-object v3, Lus/zoom/zrc/view/PstnDialFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 123
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showSipDial()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/view/SipDialFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/SipDialFragment;

    iput-object v0, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/SipDialFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Lus/zoom/zrc/view/SipDialFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/SipDialFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    .line 141
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 143
    sget v1, Lus/zoom/zrcbox/R$id;->dial_content:I

    iget-object v2, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    sget-object v3, Lus/zoom/zrc/view/SipDialFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method onBackClicked()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 100
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickDialBtn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClickSipDialBtn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

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

    .line 40
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    instance-of p3, p3, Lus/zoom/zrc/MeetingActivity;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 41
    sget p3, Lus/zoom/zrcbox/R$layout;->dial_phone:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->dial_phone_in_pt:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/DialFragment;->setupTitleBar(Landroid/view/View;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/view/DialFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->onSipServiceChanged()V

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/PstnDialFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->pstnDialFragment:Lus/zoom/zrc/view/PstnDialFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/PstnDialFragment;->onHiddenChanged(Z)V

    .line 82
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/view/SipDialFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/view/DialFragment;->sipDialFragment:Lus/zoom/zrc/view/SipDialFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/SipDialFragment;->onHiddenChanged(Z)V

    :cond_2
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 150
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p1, p2, :cond_0

    .line 151
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->onSipServiceChanged()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/DialFragment;->decideToShowDialUI()V

    return-void
.end method
