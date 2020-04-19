.class public Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;
.super Lus/zoom/zrc/view/CommonMeetingControlFragment;
.source "MeetingPhoneWebinarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private mMeetingID:Landroid/widget/TextView;

.field private mRoomName:Landroid/widget/TextView;

.field private mSpeakerVolumeView:Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;

.field private raiseHandImage:Landroid/widget/ImageView;

.field private raiseHandLayout:Landroid/view/View;

.field private raiseHandTextView:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;-><init>()V

    return-void
.end method

.method private addAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private changeRaiseHandState(Z)V
    .locals 5

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->raise_hand:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->lower_hand:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p1, :cond_1

    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$drawable;->ic_raisehand_pressed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$drawable;->ic_raisehand_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 190
    iget-object v4, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private updateSelfRaiseHandState()V
    .locals 2

    .line 164
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCanRaiseHandForAttendee()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMyUserId()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->participantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->changeRaiseHandState(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 2

    .line 132
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mRoomName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onAttach(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 145
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onClick(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 147
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->raise_hand:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->lower_hand:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 154
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->addAccessibility(Landroid/view/View;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v3, v0}, Lus/zoom/zrc/model/Model;->requestRaiseHand(IZ)Z

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->addAccessibility(Landroid/view/View;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v3, v3}, Lus/zoom/zrc/model/Model;->requestRaiseHand(IZ)Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->width:I

    .line 58
    new-instance p1, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-direct {p1}, Lus/zoom/zrc/settings/SettingsFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 66
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_phone_webinar_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mMeetingID:Landroid/widget/TextView;

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->speaker_volume_control:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mSpeakerVolumeView:Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;

    .line 69
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mRoomName:Landroid/widget/TextView;

    .line 71
    sget p2, Lus/zoom/zrcbox/R$id;->raise_hand_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    .line 72
    sget p2, Lus/zoom/zrcbox/R$id;->raise_hand_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandTextView:Landroid/widget/TextView;

    .line 73
    sget p2, Lus/zoom/zrcbox/R$id;->raise_hand_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandLayout:Landroid/view/View;

    .line 74
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateSelfRaiseHandState()V

    .line 75
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mSpeakerVolumeView:Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;

    invoke-virtual {p2}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 76
    iget p3, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->width:I

    int-to-float p3, p3

    const v0, 0x3f19999a    # 0.6f

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->raiseHandImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mRoomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 95
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateSelfRaiseHandState()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 103
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->canRaiseHandForAttendee:I

    if-ne p2, p1, :cond_0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateSelfRaiseHandState()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onResume()V

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 2

    .line 138
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mRoomName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mMeetingID:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_2
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->mRoomName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateMeetingEncryptedStatus(Z)V

    return-void
.end method
