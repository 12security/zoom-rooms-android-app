.class public Lus/zoom/zrc/view/ParticipantDTMFFragment;
.super Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;
.source "ParticipantDTMFFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# static fields
.field static final DATA_USER_ID:Ljava/lang/String; = "DATA_USER_ID"

.field static final DATA_USER_NAME:Ljava/lang/String; = "DATA_USER_NAME"

.field private static final TAG:Ljava/lang/String; = "DialDTMFParticipant"


# instance fields
.field private keypadView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

.field private userId:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ParticipantDTMFFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->tryDismissParticipantList()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ParticipantDTMFFragment;)I
    .locals 0

    .line 35
    iget p0, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userId:I

    return p0
.end method

.method private tryDismissParticipantList()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DialDTMFParticipant"

    const-string v1, "tryDismissParticipantList() called: fragmentManager == null"

    const/4 v2, 0x0

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 132
    :cond_0
    const-class v1, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBindUserId()I
    .locals 1

    .line 47
    iget v0, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userId:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "DialDTMFParticipant"

    const-string v1, "onCreate bundle == null"

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->dismiss()V

    return-void

    :cond_0
    const-string v1, "DATA_USER_ID"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userId:I

    const-string v1, "DATA_USER_NAME"

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userName:Ljava/lang/String;

    .line 65
    iget p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userId:I

    if-nez p1, :cond_1

    const-string p1, "DialDTMFParticipant"

    const-string v1, "onCreate userId == 0"

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->dismiss()V

    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 76
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCTheme_CallRoomSystem_Light:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 78
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 79
    sget p3, Lus/zoom/zrcbox/R$layout;->dial_dtmf_participant_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    sget p2, Lus/zoom/zrcbox/R$drawable;->webinar_fragment_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 138
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    const-string p1, "changedParticipants"

    .line 139
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x1

    .line 140
    iget v0, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userId:I

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntityUtils;->contains(Ljava/util/List;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->dismiss()V

    :cond_0
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

    .line 90
    iget p2, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userId:I

    if-nez p2, :cond_0

    const-string p1, "DialDTMFParticipant"

    const-string p2, "onViewCreated userId == 0"

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->tv_dtmf_participant_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 95
    sget v0, Lus/zoom/zrcbox/R$id;->tv_dtmf_back_to_participants:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    sget v1, Lus/zoom/zrcbox/R$id;->tv_dtmf_participant_done:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->userName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance p2, Lus/zoom/zrc/view/ParticipantDTMFFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment$1;-><init>(Lus/zoom/zrc/view/ParticipantDTMFFragment;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p2, Lus/zoom/zrc/view/ParticipantDTMFFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment$2;-><init>(Lus/zoom/zrc/view/ParticipantDTMFFragment;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget p2, Lus/zoom/zrcbox/R$id;->keypad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->keypadView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    .line 114
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->keypadView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    sget-object p2, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->updateKeyData(Ljava/util/List;)V

    .line 115
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment;->keypadView:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    new-instance p2, Lus/zoom/zrc/view/ParticipantDTMFFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantDTMFFragment$3;-><init>(Lus/zoom/zrc/view/ParticipantDTMFFragment;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setKeypadListener(Lus/zoom/zrc/base/widget/keypad/KeypadListener;)V

    return-void
.end method
