.class public Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCChangeContentDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "ZRCChangeContentDialogFragment"


# instance fields
.field private btnDismiss:Landroid/view/View;

.field private pinShareScreenViewsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/view/ZRCPinShareScreenView;",
            ">;"
        }
    .end annotation
.end field

.field private rlShowContentOnly:Landroid/widget/RelativeLayout;

.field private showContentOnlySwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private view:Landroid/view/View;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 58
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->onCheckedChangedForContentOnly(Z)V

    return-void
.end method

.method private dismissAllAlerts()V
    .locals 2

    .line 257
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->pinShareScreenViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ZRCPinShareScreenView;

    .line 258
    invoke-virtual {v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->dismissAlertDialog()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initDismissBtn()V
    .locals 2

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->change_content_dialog_dismiss_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->btnDismiss:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->btnDismiss:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initShowContentOnlyLayout()V
    .locals 3

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->switch_button_layout_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->show_content_only_rl:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->rlShowContentOnly:Landroid/widget/RelativeLayout;

    .line 201
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->show_content_only_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->showContentOnlySwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 202
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->showContentOnlySwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v2, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment$1;-><init>(Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isShareOnAllScreensSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->rlShowContentOnly:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updateShowContentOnlyLayout()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->rlShowContentOnly:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private notifyPinShareViewsUpdate()V
    .locals 2

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->pinShareScreenViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ZRCPinShareScreenView;

    .line 251
    invoke-virtual {v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateListAndWarningMessage()V

    .line 252
    invoke-virtual {v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onShareListChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCheckedChangedForContentOnly(Z)V
    .locals 4

    .line 233
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens()Z

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "show content only:%b "

    const/4 v1, 0x1

    .line 241
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    return-void
.end method

.method private onZRWJoinOrLeave()V
    .locals 2

    .line 262
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->pinShareScreenViewsList:Ljava/util/List;

    .line 264
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updatePinShareScreenViews()V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    .line 44
    sget-object v0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;-><init>()V

    .line 52
    :cond_1
    sget-object v1, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private updateLocalShareInstruction()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lus/zoom/zrc/PTActivity;

    .line 99
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrwPinStatusOfScreen()Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 102
    sget v1, Lus/zoom/zrcbox/R$id;->share_source_not_same_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_2
    sget v1, Lus/zoom/zrcbox/R$id;->share_source_not_same_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updatePinShareScreenViews()V
    .locals 6

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->parent_pin_share_screen_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 183
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 186
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v4, v5}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->init(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    .line 187
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->pinShareScreenViewsList:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateShowContentOnlyLayout()V
    .locals 3

    .line 221
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->showContentOnlySwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens()Z

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 227
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->rlShowContentOnly:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchShareOnAllScreens()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->showContentOnlySwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchShareOnAllScreens()Z

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    .line 229
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->show_content_only_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchShareOnAllScreens()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->btnDismiss:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->pinShareScreenViewsList:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnZrwUserChange:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->initDisableWindowStateChangedAccessibilityEvent(Z)V

    .line 112
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
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

    .line 80
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->requestWindowFeature(I)V

    .line 81
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 83
    sget p3, Lus/zoom/zrcbox/R$layout;->change_content_dialog_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->initDismissBtn()V

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updatePinShareScreenViews()V

    .line 87
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->initShowContentOnlyLayout()V

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 162
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnZrwUserChange:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_0

    .line 163
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->onZRWJoinOrLeave()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 146
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-eq p2, p1, :cond_1

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-eq p2, p1, :cond_1

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoLayoutStatus:I

    if-ne p2, p1, :cond_3

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updateShowContentOnlyLayout()V

    .line 155
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->notifyPinShareViewsUpdate()V

    goto :goto_1

    .line 147
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldAutoDismissChangeContent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->dismissAllAlerts()V

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void

    .line 152
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updateLocalShareInstruction()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 117
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 118
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 123
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 124
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->showPinShareSourceOnScreenInstruction(Z)I

    .line 127
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updateShowContentOnlyLayout()V

    .line 128
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->updateLocalShareInstruction()V

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->change_content_dialog_title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendFirstItemAccessibility(Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 136
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->showPinShareSourceOnScreenInstruction(Z)I

    .line 138
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    return-void
.end method
