.class public Lus/zoom/zrc/view/PreMeetingHomeFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "PreMeetingHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private duration:I

.field private mMeetMore:Landroid/widget/ImageView;

.field private mMeetingJoin:Landroid/widget/ImageView;

.field private mMeetingNow:Landroid/widget/ImageView;

.field private mMeetingPhone:Landroid/widget/ImageView;

.field private mMeetingPresentation:Landroid/widget/ImageView;

.field private mTvMeetNow:Landroid/widget/TextView;

.field private mTvPhone:Landroid/widget/TextView;

.field private mTvPresentation:Landroid/widget/TextView;

.field private meetNowMoreMenu:Landroid/widget/PopupWindow;

.field private onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

.field private onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    const/16 v0, 0x1e

    .line 49
    iput v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->duration:I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/PreMeetingHomeFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/PreMeetingHomeFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->onClickCallRoomSystem()V

    return-void
.end method

.method private clickJoinMeeting()V
    .locals 2

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->context:Landroid/content/Context;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;-><init>()V

    .line 148
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V

    .line 150
    invoke-virtual {v0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method private clickMeetMore()V
    .locals 3

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->layout_meet_more_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    new-instance v1, Lus/zoom/zrc/view/PreMeetingHomeFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment$1;-><init>(Lus/zoom/zrc/view/PreMeetingHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 193
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private clickMeetingNow()V
    .locals 2

    .line 158
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideContactList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->startInstantMeeting(I)I

    move-result v0

    .line 160
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v1, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;->OnClickMeetingNowBtn(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-direct {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;-><init>()V

    .line 167
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V

    .line 169
    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(Landroidx/fragment/app/Fragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private clickPhone()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/DialFragment;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lus/zoom/zrc/view/DialFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/DialFragment;-><init>()V

    .line 210
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/DialFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method private clickPresentation()V
    .locals 3

    .line 203
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StartPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    iget v2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method private isFullFunctionality()Z
    .locals 1

    .line 216
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isBillingPlanEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onClickCallRoomSystem()V
    .locals 4

    .line 198
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->newRoomSystemSession(I)V

    .line 199
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    const-string v2, "showInputDialog"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method private updateEntrances()V
    .locals 6

    .line 229
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->isFullFunctionality()Z

    move-result v0

    .line 230
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->isStandaloneDigitalSignage()Z

    move-result v1

    .line 231
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 237
    :goto_1
    iget-object v5, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingNow:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 238
    iget-object v5, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mTvMeetNow:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v2, :cond_2

    .line 241
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportInviteRoomSystemAndDialPreMeeting()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 242
    :goto_2
    iget-object v5, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetMore:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 246
    :goto_4
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingPhone:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 247
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingPresentation:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mTvPresentation:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttach(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 115
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    sget v2, Lus/zoom/zrcbox/R$id;->meeting_now_icon:I

    if-ne v1, v2, :cond_0

    .line 117
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->clickMeetingNow()V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lus/zoom/zrcbox/R$id;->iv_meet_more:I

    if-ne v0, v1, :cond_1

    .line 119
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->clickMeetMore()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lus/zoom/zrcbox/R$id;->join_icon:I

    if-ne v0, v1, :cond_2

    .line 121
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->clickJoinMeeting()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lus/zoom/zrcbox/R$id;->presentation_icon:I

    if-ne v0, v1, :cond_3

    .line 123
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->clickPresentation()V

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lus/zoom/zrcbox/R$id;->phone_icon:I

    if-ne p1, v0, :cond_4

    .line 125
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->clickPhone()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setContainerViewId(I)V

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$anim;->slide_in_bottom:I

    sget v1, Lus/zoom/zrcbox/R$anim;->alpha_out:I

    sget v2, Lus/zoom/zrcbox/R$anim;->alpha_in:I

    sget v3, Lus/zoom/zrcbox/R$anim;->slide_out_bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setCustomAnimations(IIII)V

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

    .line 72
    sget p3, Lus/zoom/zrcbox/R$layout;->premeeting_home_pt_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_now_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingNow:Landroid/widget/ImageView;

    .line 74
    sget p2, Lus/zoom/zrcbox/R$id;->tv_meet_now:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mTvMeetNow:Landroid/widget/TextView;

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->iv_meet_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetMore:Landroid/widget/ImageView;

    .line 76
    sget p2, Lus/zoom/zrcbox/R$id;->phone_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingPhone:Landroid/widget/ImageView;

    .line 77
    sget p2, Lus/zoom/zrcbox/R$id;->join_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingJoin:Landroid/widget/ImageView;

    .line 78
    sget p2, Lus/zoom/zrcbox/R$id;->tv_phone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mTvPhone:Landroid/widget/TextView;

    .line 79
    sget p2, Lus/zoom/zrcbox/R$id;->presentation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingPresentation:Landroid/widget/ImageView;

    .line 80
    sget p2, Lus/zoom/zrcbox/R$id;->tv_presentation:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mTvPresentation:Landroid/widget/TextView;

    .line 82
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingNow:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetMore:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingJoin:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingPresentation:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->mMeetingPhone:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->meetNowMoreMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 132
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->h323Enabled:I

    if-eq p2, p1, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->crcCalloutOnlyEnabled:I

    if-eq p2, p1, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-eq p2, p1, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->publicRoomEnabled:I

    if-eq p2, p1, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneDigitalSignage:I

    if-eq p2, p1, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p2, p1, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->updateEntrances()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 95
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 97
    invoke-virtual {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->updateEntrances()V

    return-void
.end method

.method public setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    return-void
.end method

.method public setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    return-void
.end method
