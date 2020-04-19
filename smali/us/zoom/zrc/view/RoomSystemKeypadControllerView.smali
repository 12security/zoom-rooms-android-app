.class public Lus/zoom/zrc/view/RoomSystemKeypadControllerView;
.super Landroid/widget/FrameLayout;
.source "RoomSystemKeypadControllerView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RoomSystemKeypadControllerView"


# instance fields
.field private bnDisconnect:Landroid/view/View;

.field private bnDone:Landroid/view/View;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private controllerListener:Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

.field private gvKeypad:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

.field private ivKeypad:Landroid/view/View;

.field private ivKeypadForeground:Landroid/view/View;

.field private shouldShowKeypad:Z

.field private tvHideKeypad:Landroid/view/View;

.field private tvKeypad:Landroid/view/View;

.field private tvName:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->shouldShowKeypad:Z

    .line 37
    new-instance p1, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;-><init>(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->shouldShowKeypad:Z

    .line 37
    new-instance p1, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;-><init>(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    .line 63
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->shouldShowKeypad:Z

    .line 37
    new-instance p1, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;-><init>(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDisconnect:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->controllerListener:Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDone:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypad:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->showKeypadDetail(Z)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvHideKeypad:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->room_system_keypad_controller_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget v0, Lus/zoom/zrcbox/R$id;->tv_room_name:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvName:Landroid/widget/TextView;

    .line 74
    sget v0, Lus/zoom/zrcbox/R$id;->tv_room_status:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvStatus:Landroid/widget/TextView;

    .line 75
    sget v0, Lus/zoom/zrcbox/R$id;->iv_keypad:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypad:Landroid/view/View;

    .line 76
    sget v0, Lus/zoom/zrcbox/R$id;->iv_keypad_foreground:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypadForeground:Landroid/view/View;

    .line 77
    sget v0, Lus/zoom/zrcbox/R$id;->tv_keypad:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvKeypad:Landroid/view/View;

    .line 78
    sget v0, Lus/zoom/zrcbox/R$id;->bn_disconnect:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDisconnect:Landroid/view/View;

    .line 79
    sget v0, Lus/zoom/zrcbox/R$id;->bn_done:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDone:Landroid/view/View;

    .line 80
    sget v0, Lus/zoom/zrcbox/R$id;->rskdv:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->gvKeypad:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    .line 81
    sget v0, Lus/zoom/zrcbox/R$id;->tv_hide_keypad:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvHideKeypad:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDisconnect:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDone:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypad:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvHideKeypad:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->gvKeypad:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    sget-object v1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->updateKeyData(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->gvKeypad:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    new-instance v1, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$2;-><init>(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setKeypadListener(Lus/zoom/zrc/base/widget/keypad/KeypadListener;)V

    return-void
.end method

.method private setDisconnectVisibility()V
    .locals 2

    .line 145
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-boolean v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->shouldShowKeypad:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDisconnect:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDisconnect:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setKeypadEntranceEnable(Z)V
    .locals 1

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypad:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypadForeground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setStatusText(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvStatus:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showKeypadDetail(Z)V
    .locals 4

    .line 102
    iput-boolean p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->shouldShowKeypad:Z

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypad:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->ivKeypadForeground:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvKeypad:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setDisconnectVisibility()V

    .line 108
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setDoneVisibility(Z)V

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->gvKeypad:Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    const/4 v1, 0x4

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {v0, v3}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvHideKeypad:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->controllerListener:Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    if-nez v0, :cond_6

    return-void

    .line 113
    :cond_6
    invoke-interface {v0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;->onShowKeypad(Z)V

    return-void
.end method


# virtual methods
.method onSendingDTMFMeetingID(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 5

    .line 167
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->dial_dtmf_status_connected_simulate_dial:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getDtmfKey()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setStatusText(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v4}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setKeypadEntranceEnable(Z)V

    .line 170
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setDoneVisibility(Z)V

    return-void
.end method

.method onThirdPartyRoomConnected()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->connected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setStatusText(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setKeypadEntranceEnable(Z)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setDoneVisibility(Z)V

    return-void
.end method

.method public setControllerListener(Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->controllerListener:Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    return-void
.end method

.method protected setDoneVisibility(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 140
    iget-boolean p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->shouldShowKeypad:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->bnDone:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setDisconnectVisibility()V

    .line 118
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 p1, 0x3f2

    if-eq v0, p1, :cond_0

    const/16 p1, 0x270f

    if-eq v0, p1, :cond_0

    const/16 p1, 0x2711

    if-eq v0, p1, :cond_3

    .line 134
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->connected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->showKeypadDetail(Z)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getAddressToCall()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
