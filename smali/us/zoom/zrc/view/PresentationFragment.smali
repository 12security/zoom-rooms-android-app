.class public Lus/zoom/zrc/view/PresentationFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "PresentationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private duration:I

.field private mBtnShareIOS:Landroid/widget/Button;

.field private mBtnShareLaptop:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDurationLabel:Landroid/widget/TextView;

.field private mDurationLayout:Landroid/view/View;

.field private mIvShareIOS:Landroid/widget/ImageView;

.field private mIvShareIOSLayout:Landroid/view/View;

.field private mIvShareLaptop:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/PresentationFragment;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/PresentationFragment;)I
    .locals 0

    .line 35
    iget p0, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    return p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/view/PresentationFragment;I)I
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    return p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method private showMeetingSeekDurationBar()V
    .locals 5

    const/4 v0, 0x2

    .line 176
    new-array v0, v0, [I

    .line 177
    iget-object v1, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 178
    new-instance v1, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;

    iget-object v2, p0, Lus/zoom/zrc/view/PresentationFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    iget-object v4, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;-><init>(Landroid/content/Context;II)V

    .line 179
    new-instance v2, Lus/zoom/zrc/view/PresentationFragment$3;

    invoke-direct {v2, p0, v1}, Lus/zoom/zrc/view/PresentationFragment$3;-><init>(Lus/zoom/zrc/view/PresentationFragment;Lus/zoom/zrc/view/MeetingSeekBarPopWindow;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 186
    iget-object v2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    const/4 v3, 0x0

    aget v0, v0, v3

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v4, v0, v3}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private startShareIOS()V
    .locals 4

    .line 194
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/PTActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iget v2, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showPresentation(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    return-void
.end method

.method private startShareLaptop()V
    .locals 3

    .line 190
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StartPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    iget v2, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method private updateIOSShareVisibility()V
    .locals 2

    .line 235
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 236
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 240
    :cond_0
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v1

    .line 241
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 242
    :cond_2
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    .line 207
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v0

    .line 208
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 127
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 163
    invoke-direct {p0}, Lus/zoom/zrc/view/PresentationFragment;->startShareLaptop()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOS:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 165
    invoke-direct {p0}, Lus/zoom/zrc/view/PresentationFragment;->startShareIOS()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mBtnShareLaptop:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 167
    invoke-direct {p0}, Lus/zoom/zrc/view/PresentationFragment;->startShareLaptop()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mBtnShareIOS:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 169
    invoke-direct {p0}, Lus/zoom/zrc/view/PresentationFragment;->startShareIOS()V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 171
    invoke-direct {p0}, Lus/zoom/zrc/view/PresentationFragment;->showMeetingSeekDurationBar()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    sget p3, Lus/zoom/zrcbox/R$layout;->presentation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    sget p2, Lus/zoom/zrcbox/R$id;->iv_share_laptop:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    .line 70
    sget p2, Lus/zoom/zrcbox/R$id;->iv_share_ios:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOS:Landroid/widget/ImageView;

    .line 71
    sget p2, Lus/zoom/zrcbox/R$id;->iv_share_ios_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    .line 73
    sget p2, Lus/zoom/zrcbox/R$id;->btn_share_laptop:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mBtnShareLaptop:Landroid/widget/Button;

    .line 74
    sget p2, Lus/zoom/zrcbox/R$id;->btn_share_ios:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mBtnShareIOS:Landroid/widget/Button;

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->tv_duration_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    .line 76
    sget p2, Lus/zoom/zrcbox/R$id;->tv_duration:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLabel:Landroid/widget/TextView;

    const/16 p2, 0x1e

    .line 77
    iput p2, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLabel:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration_txt:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/PresentationFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOS:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mBtnShareLaptop:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mBtnShareIOS:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    new-instance p3, Lus/zoom/zrc/view/PresentationFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/PresentationFragment$1;-><init>(Lus/zoom/zrc/view/PresentationFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLayout:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareLaptop:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 105
    new-instance p3, Lus/zoom/zrc/view/PresentationFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/PresentationFragment$2;-><init>(Lus/zoom/zrc/view/PresentationFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_4

    .line 149
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 152
    :goto_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 155
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 153
    :cond_3
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 228
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 229
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p1, p2, :cond_0

    .line 230
    invoke-direct {p0}, Lus/zoom/zrc/view/PresentationFragment;->updateIOSShareVisibility()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 134
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 135
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 136
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 138
    :goto_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 141
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 139
    :cond_3
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrc/view/PresentationFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    .line 218
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v0

    .line 219
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 220
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mIvShareIOSLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setMeetingDuration(I)V
    .locals 4

    .line 38
    iput p1, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    .line 39
    iget-object p1, p0, Lus/zoom/zrc/view/PresentationFragment;->mDurationLabel:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration_txt:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/PresentationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lus/zoom/zrc/view/PresentationFragment;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
