.class public Lus/zoom/zrc/view/Participants_More_PopupView;
.super Landroid/widget/PopupWindow;
.source "Participants_More_PopupView.java"

# interfaces
.implements Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final arrow:Lus/zoom/zrc/view/TriangleView;

.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

.field private mParticipants_More_PopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

.field private manager:Lus/zoom/zrc/utils/ObserverCallBackManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 19
    const-class v0, Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->participant_more_popup_window_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    sget v1, Lus/zoom/zrcbox/R$id;->iv_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/TriangleView;

    iput-object v1, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->arrow:Lus/zoom/zrc/view/TriangleView;

    .line 31
    sget v1, Lus/zoom/zrcbox/R$id;->list_pop:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ParticipantMorePopup;

    iput-object v1, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    .line 32
    iget-object v1, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v1, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->setContext(Landroid/content/Context;)V

    .line 34
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x2

    .line 35
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->setWidth(I)V

    .line 36
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->setHeight(I)V

    .line 37
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->setOutsideTouchable(Z)V

    .line 39
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->setFocusable(Z)V

    .line 41
    invoke-static {}, Lus/zoom/zrc/utils/ObserverCallBackManager;->getInstant()Lus/zoom/zrc/utils/ObserverCallBackManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    .line 42
    iget-object p1, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/utils/ObserverCallBackManager;->registerObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V

    .line 43
    iput-object p0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipants_More_PopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    .line 44
    new-instance p1, Lus/zoom/zrc/view/Participants_More_PopupView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/Participants_More_PopupView$1;-><init>(Lus/zoom/zrc/view/Participants_More_PopupView;)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/Participants_More_PopupView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/Participants_More_PopupView;)Lus/zoom/zrc/view/Participants_More_PopupView;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipants_More_PopupView:Lus/zoom/zrc/view/Participants_More_PopupView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/Participants_More_PopupView;)Lus/zoom/zrc/utils/ObserverCallBackManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    return-object p0
.end method


# virtual methods
.method public delayDismiss()V
    .locals 4

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/view/Participants_More_PopupView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/Participants_More_PopupView$2;-><init>(Lus/zoom/zrc/view/Participants_More_PopupView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClickAllowAttendeesUnmuteThemselves()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickClaimHost()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickLockMeeting()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickLowerAllHand()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickMuteOnEntry()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickSelfView()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickShowAudioParticipant()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onClickWaitingOnEntry()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V

    return-void
.end method

.method public onUpdateAllowAttendeesUnmuteThemselves()V
    .locals 1

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateAllowAttendeesUnmuteThemselves()V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateIsOnEntryMuted(Z)V

    return-void
.end method

.method public onUpdateIsOnEntryWaiting(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateIsOnEntryWaiting(Z)V

    return-void
.end method

.method public onUpdateShowAudioParticipant()V
    .locals 1

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateShowAudioParticipant()V

    return-void
.end method

.method public onUpdateShowSelfView(Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateShowSelfView(Z)V

    return-void
.end method

.method public onZRCParticipantChanged()V
    .locals 1

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantMorePopup;->onZRCParticipantChanged()V

    return-void
.end method

.method public updateLockMeetingState(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView;->mParticipantMorePopupView:Lus/zoom/zrc/view/ParticipantMorePopup;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateLockMeetingState(Z)V

    return-void
.end method
