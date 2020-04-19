.class public Lus/zoom/zrc/incoming/IncomingSipCallView;
.super Lus/zoom/zrc/incoming/IncomingCallView;
.source "IncomingSipCallView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private show3Buttons(Z)V
    .locals 4

    .line 122
    sget v0, Lus/zoom/zrcbox/R$id;->layout_one_call_action:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    sget v1, Lus/zoom/zrcbox/R$id;->layout_multi_call_action:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    sget p1, Lus/zoom/zrcbox/R$id;->ib_enhanced_left_accept:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    .line 128
    sget p1, Lus/zoom/zrcbox/R$id;->tv_enhanced_left_accept:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptTextView:Landroid/widget/TextView;

    .line 129
    sget p1, Lus/zoom/zrcbox/R$id;->ib_enhanced_mid_decline:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->midDeclineButton:Landroid/widget/ImageButton;

    .line 130
    sget p1, Lus/zoom/zrcbox/R$id;->ib_enhanced_right_accept:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    .line 131
    sget p1, Lus/zoom/zrcbox/R$id;->tv_enhanced_right_accept:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingSipCallView$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/incoming/IncomingSipCallView$1;-><init>(Lus/zoom/zrc/incoming/IncomingSipCallView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingSipCallView$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/incoming/IncomingSipCallView$2;-><init>(Lus/zoom/zrc/incoming/IncomingSipCallView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    .line 150
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptTextView:Landroid/widget/TextView;

    .line 151
    sget p1, Lus/zoom/zrcbox/R$id;->ib_mid_decline:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->midDeclineButton:Landroid/widget/ImageButton;

    .line 152
    sget p1, Lus/zoom/zrcbox/R$id;->ib_right_accept:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    .line 153
    sget p1, Lus/zoom/zrcbox/R$id;->tv_right_accept:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingSipCallView$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/incoming/IncomingSipCallView$3;-><init>(Lus/zoom/zrc/incoming/IncomingSipCallView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->midDeclineButton:Landroid/widget/ImageButton;

    new-instance v0, Lus/zoom/zrc/incoming/IncomingSipCallView$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/incoming/IncomingSipCallView$4;-><init>(Lus/zoom/zrc/incoming/IncomingSipCallView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method getCurrentViewId()I
    .locals 1

    .line 24
    sget v0, Lus/zoom/zrcbox/R$layout;->incoming_sip_call_view_current:I

    return v0
.end method

.method protected layoutAction()V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingSipCallView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->isConnectingToMeeting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 65
    invoke-direct {p0, v2}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 66
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_hold_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 68
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 69
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->isInMeeting:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 70
    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->isInCall:Z

    if-eqz v1, :cond_2

    .line 71
    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->isEnhancedSip:Z

    if-eqz v1, :cond_1

    .line 72
    invoke-direct {p0, v3}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 73
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_end_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 75
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_hold_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 79
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_call_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, v2}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 83
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_end_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 85
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 88
    :cond_2
    invoke-direct {p0, v2}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 89
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_audio_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_hold_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 91
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_audio_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 94
    :cond_3
    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->isInCall:Z

    if-eqz v1, :cond_5

    .line 95
    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->isEnhancedSip:Z

    if-eqz v1, :cond_4

    .line 96
    invoke-direct {p0, v3}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 97
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_end_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 99
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->leftAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_hold_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 103
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->hold_call_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-direct {p0, v2}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 107
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_end_and_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 109
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->end_call_and_accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_5
    invoke-direct {p0, v2}, Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V

    .line 113
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptTextView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->accept:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_accept:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 115
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->rightAcceptButton:Landroid/widget/ImageButton;

    sget v2, Lus/zoom/zrcbox/R$string;->accept:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected setName()V
    .locals 2

    .line 43
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 44
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setStatus()V
    .locals 2

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->statusView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->is_calling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected updateAvatar()V
    .locals 2

    .line 52
    sget v0, Lus/zoom/zrcbox/R$id;->caller_avatar:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 54
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/AvatarView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateIncomingCall()V
    .locals 4

    .line 29
    invoke-super {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    .line 30
    sget v0, Lus/zoom/zrcbox/R$id;->caller_number:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingSipCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 32
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

    .line 33
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

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
