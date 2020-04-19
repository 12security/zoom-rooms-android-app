.class public Lus/zoom/zrc/view/HostChangeDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "HostChangeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# instance fields
.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mBtnCancel:Landroid/view/View;

.field private mBtnSubmit:Landroid/view/View;

.field private mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field private onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

.field private title:Landroid/widget/TextView;

.field userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 42
    new-instance v0, Lus/zoom/zrc/view/HostChangeDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/HostChangeDialogFragment$1;-><init>(Lus/zoom/zrc/view/HostChangeDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    return-void
.end method

.method private onBindParticipantChange()V
    .locals 5

    .line 119
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->userId:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->dismiss()V

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->dismiss()V

    return-void

    .line 130
    :cond_1
    iput-object v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 131
    iget-object v1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->title:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->confirm_changing_host:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/view/HostChangeDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBindUserId()I
    .locals 1

    .line 39
    iget v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->userId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->dismiss()V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 110
    sget v0, Lus/zoom/zrcbox/R$id;->user_confirm:I

    if-ne p1, v0, :cond_0

    .line 111
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->changeHost(I)I

    .line 112
    iget-object p1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_0

    .line 113
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickChangeHost()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "participant"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    iput-object p1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 76
    iget-object p1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->userId:I

    .line 79
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 80
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    const/4 p3, 0x0

    .line 92
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/HostChangeDialogFragment;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->requestWindowFeature(I)V

    .line 94
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/HostChangeDialogFragment;->setCancelable(Z)V

    .line 95
    sget v1, Lus/zoom/zrcbox/R$layout;->participant_remove_fragment:I

    invoke-virtual {p1, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    sget p2, Lus/zoom/zrcbox/R$id;->user_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->title:Landroid/widget/TextView;

    .line 97
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mBtnSubmit:Landroid/view/View;

    .line 98
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mBtnCancel:Landroid/view/View;

    .line 100
    iget-object p2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->confirm_changing_host:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-virtual {p0, v1, v0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mBtnSubmit:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mBtnCancel:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 85
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 66
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p2, p1, :cond_0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->onBindParticipantChange()V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    return-void
.end method

.method public updateParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    iput-object v1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostChangeDialogFragment;->dismiss()V

    :cond_3
    return-void
.end method
