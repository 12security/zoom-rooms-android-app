.class public Lus/zoom/zrc/view/PreMeetingPhoneFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "PreMeetingPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

.field private controlSystemView:Landroid/view/View;

.field private homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

.field private joinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

.field private meetingListFragment:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

.field private meetingListView:Landroid/view/View;

.field private onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

.field private onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

.field private settingsPhoneFragment:Lus/zoom/zrc/settings/SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method private updateControlSystem()V
    .locals 2

    .line 146
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lus/zoom/zrcbox/R$id;->settings_icon:I

    if-ne v0, v1, :cond_1

    .line 127
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->settingsPhoneFragment:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/SettingsFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->settingsPhoneFragment:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lus/zoom/zrcbox/R$id;->iv_control_system:I

    if-ne p1, v0, :cond_3

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 133
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->meetings_list:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListFragment:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    .line 44
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListFragment:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-direct {p1}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListFragment:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->home_btn:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/PreMeetingHomeFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    .line 48
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    if-nez p1, :cond_1

    .line 49
    new-instance p1, Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/PreMeetingHomeFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    .line 51
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/settings/SettingsFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->settingsPhoneFragment:Lus/zoom/zrc/settings/SettingsFragment;

    .line 52
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->settingsPhoneFragment:Lus/zoom/zrc/settings/SettingsFragment;

    if-nez p1, :cond_2

    .line 53
    new-instance p1, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-direct {p1}, Lus/zoom/zrc/settings/SettingsFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->settingsPhoneFragment:Lus/zoom/zrc/settings/SettingsFragment;

    .line 55
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->join_only_mode:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->joinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->joinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    if-nez p1, :cond_3

    .line 57
    new-instance p1, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p1}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->joinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    .line 59
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    .line 60
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    if-nez p1, :cond_4

    .line 61
    new-instance p1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-direct {p1}, Lus/zoom/zrc/control_system/ControlSystemFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemPhoneFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    .line 63
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V

    .line 64
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

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

    .line 71
    sget p3, Lus/zoom/zrcbox/R$layout;->premeeting_phone_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    sget p2, Lus/zoom/zrcbox/R$id;->settings_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 73
    sget p3, Lus/zoom/zrcbox/R$id;->meetings_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListView:Landroid/view/View;

    .line 74
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->iv_control_system:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemView:Landroid/view/View;

    .line 76
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->controlSystemView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->updateControlSystem()V

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListFragment:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$id;->meetings_list:I

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListFragment:Lus/zoom/zrc/meeting/meetinglist/PreMeetingListFragment;

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 81
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$id;->home_btn:I

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->homeFragment:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 84
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->joinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_2

    .line 85
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$id;->join_only_mode:I

    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->joinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 121
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onDestroy()V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 140
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->controlSystemDevices:I

    if-ne p1, p2, :cond_0

    .line 141
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->updateControlSystem()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 111
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 92
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->isBillingPlanEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    sget v2, Lus/zoom/zrcbox/R$id;->join_only_mode:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 103
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    sget v2, Lus/zoom/zrcbox/R$id;->join_only_mode:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 105
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->meetingListView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    return-void
.end method

.method public setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    return-void
.end method
