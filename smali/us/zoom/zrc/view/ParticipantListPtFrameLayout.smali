.class public Lus/zoom/zrc/view/ParticipantListPtFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ParticipantListPtFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;
.implements Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;,
        Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParticipantListPt"


# instance fields
.field private PosX:F

.field private hasScrolled:Z

.field private listViewId:I

.field private mIndicator:Landroid/view/View;

.field private mListParticipantPop:Landroid/view/View;

.field private mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field private mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

.field private onMeetingParticipantOperateListener:Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;

.field private participantDTMFFragment:Lus/zoom/zrc/view/ParticipantDTMFFragment;

.field private rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->hasScrolled:Z

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 51
    iput-boolean p4, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->hasScrolled:Z

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->hasScrolled:Z

    return p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->hasScrolled:Z

    return p1
.end method

.method private dialDTMF()V
    .locals 3

    .line 400
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->tryClearDTMF()V

    .line 402
    new-instance v0, Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->participantDTMFFragment:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATA_USER_ID"

    .line 404
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DATA_USER_NAME"

    .line 405
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->participantDTMFFragment:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->setArguments(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->participantDTMFFragment:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getSelectedParticipantView(I)Landroid/view/View;
    .locals 3

    .line 413
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    check-cast v0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->getParticipantPositionExSilentMode(I)I

    move-result p1

    .line 418
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 419
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-lt p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    .line 421
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 83
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->ParticipantListPtFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lus/zoom/zrcbox/R$styleable;->ParticipantListPtFrameLayout_listview_id:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->listViewId:I

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private showPinUserView(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 4

    .line 311
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->setPinUserInstructionVisible(Z)I

    .line 312
    new-instance v0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;-><init>()V

    .line 313
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user_id"

    .line 314
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_name"

    .line 315
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tryClearDTMF()V
    .locals 3

    .line 427
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ParticipantListPt"

    const-string v2, "tryClearDTMF() called: context == null"

    .line 429
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 432
    :cond_0
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 433
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-nez v0, :cond_1

    const-string v0, "ParticipantListPt"

    const-string v2, "tryClearDTMF() called: inMemory == null"

    .line 435
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 438
    iput-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->participantDTMFFragment:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    .line 439
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public OnClickAllowRecording(Z)V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public OnClickCameraControl()V
    .locals 0

    .line 265
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public OnClickChangeHost()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public OnClickMuteUserAudio(Z)V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public OnClickOpenCameraControl()V
    .locals 4

    .line 286
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;-><init>()V

    .line 287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user_info"

    .line 288
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 289
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 290
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    .line 292
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public OnClickPinUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 2

    .line 300
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrcsdk/ConfApp;->pinUser(II)I

    .line 303
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 306
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->showPinUserView(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :goto_0
    return-void
.end method

.method public OnClickRemoveUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 270
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 271
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->onMeetingParticipantOperateListener:Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;->onClickRemoveMeetingParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_0
    return-void
.end method

.method public OnClickSpolightUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 330
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->spotlightUser(I)I

    .line 331
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public OnClickUnPinUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 324
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->unpinUserFromAllScreens(I)I

    .line 325
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 241
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getmListParticipantPop()Landroid/view/View;
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 444
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnParticipantsScrollListener;-><init>(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)V

    .line 446
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 448
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 453
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onCancelSpolightUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 336
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->cancelSpolightUser(I)I

    .line 337
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method public onClickAssignCoHost(IZ)V
    .locals 1

    .line 360
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 361
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->assignCohost(IZ)Z

    return-void
.end method

.method public onClickAssignTypeCC(IZ)V
    .locals 1

    .line 366
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 367
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->assignClosedCaption(IZ)Z

    return-void
.end method

.method public onClickKeypad(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 354
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 355
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dialDTMF()V

    return-void
.end method

.method public onClickMuteUserVideo(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 343
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrcsdk/ConfApp;->muteUserVideo(IZ)I

    return-void
.end method

.method public onClickOpenUserVideo(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 349
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrcsdk/ConfApp;->muteUserVideo(IZ)I

    return-void
.end method

.method public onClickPutInSilentMode(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 279
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->onMeetingParticipantOperateListener:Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;->onClickPutMeetingParticipantInSilentMode(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_0
    return-void
.end method

.method public onClickRaiseHand(IZ)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    .line 373
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->requestRaiseHand(IZ)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 458
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 461
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->tryClearDTMF()V

    .line 462
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 378
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 114
    iget v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->listViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->participant_indictor_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->participant_list_pop_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->list_pop:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ParticipantPopupView;

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this layout must contains a listview"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->PosX:F

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 98
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 99
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 100
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 101
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 137
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 141
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 143
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getSelectedParticipantView(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    return-void

    .line 154
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$dimen;->participant_popup_view_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getMeasuredWidth()I

    move-result p3

    .line 157
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getMeasuredHeight()I

    move-result p4

    .line 158
    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 160
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 161
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v3, p1

    int-to-float p1, v3

    .line 166
    iget v3, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->PosX:F

    sub-int/2addr p3, v1

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    float-to-int p3, p3

    add-int/2addr p5, p3

    add-int/2addr v1, p5

    mul-int/lit8 v3, p2, 0x2

    sub-int v3, p4, v3

    if-lt v0, v3, :cond_3

    sub-int p1, p4, p2

    goto :goto_0

    :cond_3
    int-to-float v3, p2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_4

    add-int p1, p2, v0

    goto :goto_0

    :cond_4
    sub-int p2, p4, p2

    sub-int v3, p2, v0

    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_5

    move p1, p2

    move p2, v3

    goto :goto_0

    :cond_5
    float-to-int p2, p1

    add-int p1, p2, v0

    :goto_0
    const/4 v0, 0x0

    if-lt v2, p4, :cond_6

    goto :goto_1

    :cond_6
    add-int v3, p2, p1

    .line 191
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    if-gtz v3, :cond_7

    add-int/lit8 p4, v2, 0x0

    goto :goto_1

    :cond_7
    add-int v0, v3, v2

    if-lt v0, p4, :cond_8

    sub-int v0, p4, v2

    goto :goto_1

    :cond_8
    move p4, v0

    move v0, v3

    .line 204
    :goto_1
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {v2, p3, p2, p5, p1}, Landroid/view/View;->layout(IIII)V

    .line 205
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p1, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_9
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->measureChild(Landroid/view/View;II)V

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public onMeetingParticipantItemClick(Landroid/view/View;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->geInstance(Landroid/content/Context;)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->hasParticipantContextMenu(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 214
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 216
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mListParticipantPop:Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->addView(Landroid/view/View;)V

    .line 219
    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 220
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView;->updateParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 222
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearFocus()V

    .line 224
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView;->setFocusable(Z)V

    .line 225
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    .line 228
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    new-instance p2, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$1;-><init>(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView;->setOnDismissListener(Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;)V

    .line 235
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/ParticipantPopupView;->setListener(Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;)V

    .line 237
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->requestLayout()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 467
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->rvGeneralParticipants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->setOnMeetingParticipantItemClickListener(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnMeetingParticipantOperateListener(Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->onMeetingParticipantOperateListener:Lus/zoom/zrc/view/ParticipantListPtFrameLayout$OnMeetingParticipantOperateListener;

    return-void
.end method

.method public updateParticipant()V
    .locals 2

    .line 382
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void

    .line 387
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 394
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipantPopupView:Lus/zoom/zrc/view/ParticipantPopupView;

    if-eqz v0, :cond_2

    .line 395
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ParticipantPopupView;->updateParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_2
    return-void

    .line 389
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->dismiss()V

    return-void
.end method
