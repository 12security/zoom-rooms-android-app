.class public Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ParticipantRemoveDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 33
    new-instance v0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;-><init>(Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->dismiss()V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 105
    sget v0, Lus/zoom/zrcbox/R$id;->user_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->user_confirm:I

    if-ne p1, v0, :cond_1

    .line 107
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->expelUser(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->setStyle(II)V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 66
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->userId:I

    .line 69
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 81
    sget p3, Lus/zoom/zrcbox/R$layout;->participant_remove_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    sget p2, Lus/zoom/zrcbox/R$id;->user_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 83
    sget p3, Lus/zoom/zrcbox/R$id;->user_confirm:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 84
    sget v1, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsExpelUserPermanently()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isAllowUserRejoinAfterRemove()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    sget v2, Lus/zoom/zrcbox/R$string;->confirm_removing_attendee:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_0
    sget v2, Lus/zoom/zrcbox/R$string;->participant_remove_permanently_txt:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    sget v2, Lus/zoom/zrcbox/R$string;->confirm_removing_attendee:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 74
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 75
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method
