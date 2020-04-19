.class public Lus/zoom/zrc/incoming/IncomingCallView;
.super Landroid/widget/FrameLayout;
.source "IncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/incoming/IncomingCallView$Listener;,
        Lus/zoom/zrc/incoming/IncomingCallView$ActionType;
    }
.end annotation


# instance fields
.field incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

.field private index:I

.field isConnectingToMeeting:Z

.field isEnhancedSip:Z

.field isInCall:Z

.field isInMeeting:Z

.field leftAcceptButton:Landroid/widget/ImageButton;

.field leftAcceptTextView:Landroid/widget/TextView;

.field private listener:Lus/zoom/zrc/incoming/IncomingCallView$Listener;

.field midDeclineButton:Landroid/widget/ImageButton;

.field nameView:Landroid/widget/TextView;

.field rightAcceptButton:Landroid/widget/ImageButton;

.field rightAcceptTextView:Landroid/widget/TextView;

.field statusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMultiSipCall()Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isEnhancedSip:Z

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->index:I

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private layoutForCurrentIncoming()V
    .locals 5

    .line 113
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getCurrentViewId()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 116
    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    goto :goto_0

    .line 118
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v0

    .line 120
    new-instance v1, Landroidx/transition/ChangeBounds;

    invoke-direct {v1}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 121
    sget v2, Lus/zoom/zrcbox/R$id;->incoming_call_content:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 122
    sget v2, Lus/zoom/zrcbox/R$id;->caller_name:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 123
    sget v2, Lus/zoom/zrcbox/R$id;->status:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 124
    sget v2, Lus/zoom/zrcbox/R$id;->ib_right_accept:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 125
    sget v2, Lus/zoom/zrcbox/R$id;->tv_right_accept:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 126
    sget v2, Lus/zoom/zrcbox/R$id;->ib_mid_decline:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 127
    sget v2, Lus/zoom/zrcbox/R$id;->tv_mid_decline:I

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addTarget(I)Landroidx/transition/Transition;

    .line 128
    new-instance v2, Lus/zoom/zrc/incoming/IncomingCallView$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/incoming/IncomingCallView$1;-><init>(Lus/zoom/zrc/incoming/IncomingCallView;)V

    invoke-virtual {v1, v2}, Landroidx/transition/ChangeBounds;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 135
    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->removeAllViews()V

    .line 139
    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    :goto_0
    return-void
.end method

.method private layoutForOtherIncoming(IF)V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    sget v2, Lus/zoom/zrcbox/R$layout;->incoming_call_view_other:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    return-void
.end method


# virtual methods
.method public announceIncomingCallForAccessibility()V
    .locals 5

    .line 171
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->caller_name:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    sget v1, Lus/zoom/zrcbox/R$id;->status:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 185
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public getChildLayoutBottom()F
    .locals 3

    .line 162
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method getCurrentViewId()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 109
    sget v0, Lus/zoom/zrcbox/R$layout;->incoming_call_view_current:I

    return v0
.end method

.method public getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;
    .locals 1

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    return-object v0
.end method

.method protected layoutAction()V
    .locals 4

    .line 227
    sget v0, Lus/zoom/zrcbox/R$id;->layout_one_call_action:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    sget v1, Lus/zoom/zrcbox/R$id;->layout_multi_call_action:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 230
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    sget v0, Lus/zoom/zrcbox/R$id;->ib_right_accept:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 233
    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/incoming/IncomingCallView$2;-><init>(Lus/zoom/zrc/incoming/IncomingCallView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    sget v1, Lus/zoom/zrcbox/R$id;->ib_mid_decline:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 240
    new-instance v2, Lus/zoom/zrc/incoming/IncomingCallView$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/incoming/IncomingCallView$3;-><init>(Lus/zoom/zrc/incoming/IncomingCallView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 249
    sget v2, Lus/zoom/zrcbox/R$id;->tv_right_accept:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    return-void

    .line 254
    :cond_0
    iget-boolean v3, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isConnectingToMeeting:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isInMeeting:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iget-boolean v3, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isInCall:Z

    if-eqz v3, :cond_2

    .line 259
    sget v3, Lus/zoom/zrcbox/R$string;->end_current_call_and_accept:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 260
    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_end_and_accept:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 261
    sget v2, Lus/zoom/zrcbox/R$string;->end_current_call_and_accept:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 263
    :cond_2
    sget v3, Lus/zoom/zrcbox/R$string;->accept:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_accept:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 265
    sget v2, Lus/zoom/zrcbox/R$string;->accept:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 255
    :cond_3
    :goto_0
    sget v3, Lus/zoom/zrcbox/R$string;->leave_and_accept:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 256
    sget v2, Lus/zoom/zrcbox/R$drawable;->incoming_end_and_accept:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 257
    sget v2, Lus/zoom/zrcbox/R$string;->leave_and_accept:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public layoutIncomingCall(IF)V
    .locals 1

    .line 94
    iget v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->index:I

    if-ne v0, p1, :cond_0

    return-void

    .line 98
    :cond_0
    iput p1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->index:I

    if-nez p1, :cond_1

    .line 101
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->layoutForCurrentIncoming()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallView;->layoutForOtherIncoming(IF)V

    :goto_0
    return-void
.end method

.method protected onAcceptIncomingCall(Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->listener:Lus/zoom/zrc/incoming/IncomingCallView$Listener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    invoke-interface {v0, v1, p0, p1}, Lus/zoom/zrc/incoming/IncomingCallView$Listener;->onAcceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Lus/zoom/zrc/incoming/IncomingCallView;Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V

    :cond_0
    return-void
.end method

.method protected onDeclineIncomingCall(Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->listener:Lus/zoom/zrc/incoming/IncomingCallView$Listener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    invoke-interface {v0, v1, p0, p1}, Lus/zoom/zrc/incoming/IncomingCallView$Listener;->onDeclineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Lus/zoom/zrc/incoming/IncomingCallView;Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V

    :cond_0
    return-void
.end method

.method public setIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    :cond_0
    return-void
.end method

.method public setListener(Lus/zoom/zrc/incoming/IncomingCallView$Listener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->listener:Lus/zoom/zrc/incoming/IncomingCallView$Listener;

    return-void
.end method

.method protected setName()V
    .locals 2

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    .line 206
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->getCallerName()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setStatus()V
    .locals 2

    .line 223
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->statusView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->is_inviting_to_meeting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected updateAvatar()V
    .locals 3

    .line 213
    sget v0, Lus/zoom/zrcbox/R$id;->caller_avatar:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallView;->incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/AvatarView;->setVisibility(I)V

    .line 217
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->getCallerAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lus/zoom/zrc/utils/AvatarLoader;->displayImage(Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;)V

    :cond_0
    return-void
.end method

.method protected updateIncomingCall()V
    .locals 1

    .line 196
    sget v0, Lus/zoom/zrcbox/R$id;->caller_name:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->nameView:Landroid/widget/TextView;

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->setName()V

    .line 198
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->updateAvatar()V

    .line 199
    sget v0, Lus/zoom/zrcbox/R$id;->status:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->statusView:Landroid/widget/TextView;

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->setStatus()V

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->layoutAction()V

    return-void
.end method

.method public updateMeetingOrSipInfo()V
    .locals 4

    .line 80
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    .line 81
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v1

    .line 83
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isInCall:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    iput-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isInMeeting:Z

    .line 85
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lus/zoom/zrc/incoming/IncomingCallView;->isConnectingToMeeting:Z

    .line 87
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->setStatus()V

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallView;->layoutAction()V

    :cond_2
    return-void
.end method
