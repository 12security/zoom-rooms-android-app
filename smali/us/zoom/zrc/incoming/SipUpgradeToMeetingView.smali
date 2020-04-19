.class public Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;
.super Lus/zoom/zrc/incoming/IncomingCallView;
.source "SipUpgradeToMeetingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getCurrentViewId()I
    .locals 1

    .line 28
    sget v0, Lus/zoom/zrcbox/R$layout;->incoming_sip_call_view_current:I

    return v0
.end method

.method protected layoutAction()V
    .locals 3

    .line 92
    sget v0, Lus/zoom/zrcbox/R$id;->layout_one_call_action:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    sget v1, Lus/zoom/zrcbox/R$id;->layout_multi_call_action:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 95
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    sget v0, Lus/zoom/zrcbox/R$id;->ib_right_accept:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    sget v1, Lus/zoom/zrcbox/R$id;->tv_right_accept:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    sget v2, Lus/zoom/zrcbox/R$string;->accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    sget v1, Lus/zoom/zrcbox/R$drawable;->incoming_accept:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->accept:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v1, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$1;-><init>(Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lus/zoom/zrcbox/R$id;->ib_mid_decline:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    sget v1, Lus/zoom/zrcbox/R$id;->tv_mid_decline:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    sget v2, Lus/zoom/zrcbox/R$string;->decline:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    sget v1, Lus/zoom/zrcbox/R$drawable;->incoming_decline:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->decline:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v1, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$2;-><init>(Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setName()V
    .locals 2

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 56
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setStatus()V
    .locals 2

    .line 64
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 66
    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/SipCallInfoList;->getConferenceCallList(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->join_sip_to_meeting_in_meeting_and_call_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->join_sip_to_meeting_in_meeting_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isLocalPresentationSharing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->join_sip_to_meeting_sharing_and_call_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->join_sip_to_meeting_is_sharing_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->join_sip_to_meeting_in_call_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->is_inviting_to_meeting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateAvatar()V
    .locals 2

    .line 47
    sget v0, Lus/zoom/zrcbox/R$id;->caller_avatar:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 49
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/AvatarView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateIncomingCall()V
    .locals 4

    .line 33
    invoke-super {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    .line 34
    sget v0, Lus/zoom/zrcbox/R$id;->caller_number:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    iget-object v1, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 36
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
