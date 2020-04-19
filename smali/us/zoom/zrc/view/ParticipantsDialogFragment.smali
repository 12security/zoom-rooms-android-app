.class public Lus/zoom/zrc/view/ParticipantsDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ParticipantsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParticipantsDialog"


# instance fields
.field private isTablet:Z

.field private mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ParticipantsDialogFragment;)Lus/zoom/zrc/view/ParticipantsListView;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    return-object p0
.end method

.method private onUpdateGenericSettings()V
    .locals 1

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->onUpdateGenericSettings()V

    :cond_0
    return-void
.end method

.method private onUpdateIsOnEntryWaiting(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->onUpdateIsOnEntryWaiting(Z)V

    return-void
.end method

.method private onUpdateShowAudioParticipant()V
    .locals 1

    .line 168
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->onUpdateShowAudioParticipant()V

    :cond_0
    return-void
.end method

.method private updateZRCParticipantChanged()V
    .locals 1

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->updateZRCParticipantChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isTablet:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    const v1, 0x1030007

    .line 48
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->setStyle(II)V

    .line 49
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PutInWaitingRoomOnEntryOptionChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 127
    new-instance p1, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;-><init>(Lus/zoom/zrc/view/ParticipantsDialogFragment;Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->setDisableWindowStateChangedAccessibilityEvent(Z)V

    .line 129
    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x400

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 132
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 133
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const v0, 0x106000d

    .line 134
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 81
    new-instance p1, Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lus/zoom/zrc/view/ParticipantsListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    new-instance p2, Lus/zoom/zrc/view/ParticipantsDialogFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment$1;-><init>(Lus/zoom/zrc/view/ParticipantsDialogFragment;)V

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ParticipantsListView;->setListener(Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;)V

    .line 88
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 187
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onPause()V

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->unregisterObserver()V

    :cond_0
    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->PutInWaitingRoomOnEntryOptionChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/notification/ModelEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->onUpdateIsOnEntryWaiting(Z)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/notification/ModelEvent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->updateZRCParticipantChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 68
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->showAudioParticipant:I

    if-ne p2, p1, :cond_0

    .line 69
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->onUpdateShowAudioParticipant()V

    goto :goto_0

    .line 70
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->genericSettings:I

    if-ne p2, p1, :cond_1

    .line 71
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->onUpdateGenericSettings()V

    goto :goto_0

    .line 72
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->canAttendeesUnmuteThemselves:I

    if-ne p2, p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->onUpdateAllowUnmute()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->requestLargeLayout()V

    .line 94
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->registerObserver()V

    :cond_0
    return-void
.end method

.method public onUpdateAllowUnmute()V
    .locals 1

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->onUpdateAllowAttendeesUnmuteThemselves()V

    :cond_0
    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->onUpdateIsOnEntryMuted(Z)V

    return-void
.end method

.method protected requestLargeLayout()V
    .locals 4

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 102
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ParticipantsDialog"

    const-string v2, "requestLargeLayout() called"

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_0
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 111
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 113
    iget-boolean v3, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isTablet:Z

    if-eqz v3, :cond_1

    const v1, 0x3f59999a    # 0.85f

    mul-float v1, v1, v2

    sub-float/2addr v2, v1

    float-to-int v1, v2

    const v2, 0x3f733333    # 0.95f

    mul-float v2, v2, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v0, v1, v0}, Lus/zoom/zrc/view/ParticipantsListView;->setPadding(IIII)V

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->requestLayout()V

    return-void
.end method

.method public updateLockMeetingState(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment;->mParticipantsListView:Lus/zoom/zrc/view/ParticipantsListView;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsListView;->updateLockMeetingState(Z)V

    return-void
.end method
