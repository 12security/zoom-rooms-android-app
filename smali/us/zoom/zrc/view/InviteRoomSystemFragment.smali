.class public Lus/zoom/zrc/view/InviteRoomSystemFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "InviteRoomSystemFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InviteRoomSystemFragment"


# instance fields
.field private callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/InviteRoomSystemFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->tryDismissInviteFragment()V

    return-void
.end method

.method private closeWhenVisible()V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    new-instance v1, Lus/zoom/zrc/view/InviteRoomSystemFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment$2;-><init>(Lus/zoom/zrc/view/InviteRoomSystemFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/view/CallRoomSystemView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static isChangedToSilent(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getEvent()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result p0

    return p0
.end method

.method private tryDismissInviteFragment()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 50
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getOrNewInviteRoomSystemSession()V

    .line 51
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCTheme_CallRoomSystem_InviteInMeeting:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 53
    sget p3, Lus/zoom/zrcbox/R$layout;->fragment_call_room_system_in_meeting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/CallRoomSystemView;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 110
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomSystemSessionStatus:I

    if-ne p2, p1, :cond_0

    .line 111
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 61
    iget-object p1, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    new-instance p2, Lus/zoom/zrc/view/InviteRoomSystemFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment$1;-><init>(Lus/zoom/zrc/view/InviteRoomSystemFragment;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/CallRoomSystemView;->setListener(Lus/zoom/zrc/view/CallRoomSystemViewListener;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 103
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    return-void
.end method

.method protected updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/CallRoomSystemView;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 118
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_1

    const/16 p1, 0x2711

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->tryDismissInviteFragment()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getZrcUserChangedEntity()Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->isChangedToSilent(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 139
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportDialDtmf()Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->closeWhenVisible()V

    return-void

    .line 125
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "InviteRoomSystemFragment"

    const-string v0, "invite room StatusAccepted, but meetingInfo == null"

    const/4 v1, 0x0

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 130
    :cond_4
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 131
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->closeWhenVisible()V

    return-void

    :cond_5
    :goto_0
    return-void
.end method
