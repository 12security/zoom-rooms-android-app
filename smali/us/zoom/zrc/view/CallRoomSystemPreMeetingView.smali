.class public Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;
.super Lus/zoom/zrc/view/CallRoomSystemView;
.source "CallRoomSystemPreMeetingView.java"


# static fields
.field private static final DIAL_DTMF_INTERVAL:I = 0x190

.field private static final TAG:Ljava/lang/String; = "CallRoomSystemPreMeetingView"


# instance fields
.field private sendingDTMFMeetingID:Ljava/lang/String;

.field private sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    .line 27
    new-instance p1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;-><init>(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/CallRoomSystemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    .line 27
    new-instance p1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;-><init>(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/CallRoomSystemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    .line 27
    new-instance p1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;-><init>(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->onThirdPartyRoomConnected()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private onThirdPartyRoomConnected()V
    .locals 3

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "CallRoomSystemPreMeetingView"

    const-string v2, "onThirdPartyRoomConnected() called: vDismiss == null"

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->onThirdPartyRoomConnected()V

    return-void
.end method

.method private startSendingDTMF(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->onSendingDTMFMeetingID(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 120
    invoke-direct {p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->stopSendingDTMF()V

    .line 121
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getDtmfKey()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CallRoomSystemPreMeetingView"

    const-string v0, "onRoomSystemCallingUserInfo() called with: roomStatus.getDtmfKey null"

    const/4 v1, 0x0

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getServiceProvider()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 127
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getProtocolType()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    iput-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopSendingDTMF()V
    .locals 1

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingIDRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->sendingDTMFMeetingID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 55
    invoke-super {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->init()V

    .line 56
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->layoutDialog:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lus/zoom/zrcbox/R$drawable;->far_end_camera_control_bg:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$2;-><init>(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemView;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 70
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x78

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 p1, 0x270e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x2711

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->stopSendingDTMF()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isAutoConnectGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->shouldSimulateDial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->startSendingDTMF(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->onThirdPartyRoomConnected()V

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->startAutoEnd()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->onThirdPartyRoomConnected()V

    goto :goto_0

    .line 81
    :cond_4
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->vDismiss:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
