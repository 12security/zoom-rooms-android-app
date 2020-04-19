.class public Lus/zoom/zrc/view/MeetingWebinarControlFragment;
.super Lus/zoom/zrc/view/CommonMeetingControlFragment;
.source "MeetingWebinarControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private convertView:Landroid/view/View;

.field private llMeetingId:Landroid/widget/LinearLayout;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeakerVolumeControlLabel:Landroid/widget/TextView;

.field private mVolumeDecrease:Landroid/widget/ImageView;

.field private mVolumeIncrease:Landroid/widget/ImageView;

.field private meetingId:Landroid/widget/TextView;

.field private raiseHandImage:Landroid/widget/ImageView;

.field private raiseHandLayout:Landroid/view/View;

.field private raiseHandTextView:Landroid/widget/TextView;

.field private roomName:Landroid/widget/TextView;

.field private settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;-><init>()V

    .line 50
    new-instance v0, Lus/zoom/zrc/view/MeetingWebinarControlFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment$1;-><init>(Lus/zoom/zrc/view/MeetingWebinarControlFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MeetingWebinarControlFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MeetingWebinarControlFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->doAccessibility()V

    return-void
.end method

.method private addAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 268
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private changeRaiseHandState(Z)V
    .locals 5

    .line 237
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 240
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->raise_hand:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    sget v1, Lus/zoom/zrcbox/R$string;->lower_hand:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p1, :cond_1

    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$drawable;->ic_raisehand_pressed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 246
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$drawable;->ic_raisehand_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 247
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    .line 251
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_lower_my_hand:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 253
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_hand_now_raised:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 255
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_lower_my_hand:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 258
    :cond_5
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_raise_my_hand:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 259
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 260
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_hand_now_lowered:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 262
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_raise_my_hand:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method private doAccessibility()V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 303
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->llMeetingId:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 304
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->llMeetingId:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private onSpeakerVolumeControlStatusChanged()V
    .locals 4

    .line 125
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isSpeakerVolumeControlLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 130
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_speaker_volume_adjustable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 132
    :cond_2
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->setSpeakerVolumeControlEnabled(ZZ)V

    return-void
.end method

.method private setSpeakerVolumeControlEnabled(ZZ)V
    .locals 2

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAlpha(F)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 144
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSpeakerVolumeControlLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSpeakerVolumeControlLabel:Landroid/widget/TextView;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    if-nez p1, :cond_3

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSpeakerVolumeControlLabel:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    sget p2, Lus/zoom/zrcbox/R$string;->volume_is_locked:I

    goto :goto_2

    :cond_2
    sget p2, Lus/zoom/zrcbox/R$string;->volume_is_not_adjustable:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method private updateSelfRaiseHandState()V
    .locals 2

    .line 221
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCanRaiseHandForAttendee()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMyUserId()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->participantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->changeRaiseHandState(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 2

    .line 282
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->roomName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 159
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 160
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 187
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onClick(Landroid/view/View;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 189
    sget v1, Lus/zoom/zrcbox/R$id;->iv_volume_max:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 190
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseVolume()V

    .line 191
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 192
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 194
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 196
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->iv_volume_min:I

    if-ne v0, v1, :cond_1

    .line 197
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseVolume()V

    .line 198
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 199
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 201
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 203
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 204
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 205
    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    sget v0, Lus/zoom/zrcbox/R$string;->raise_hand:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget v1, Lus/zoom/zrcbox/R$string;->lower_hand:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p1, v3, v2}, Lus/zoom/zrc/model/Model;->requestRaiseHand(IZ)Z

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {p1, v3, v3}, Lus/zoom/zrc/model/Model;->requestRaiseHand(IZ)Z

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/utils/DeviceInfoObserver;->addSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

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
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 68
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_webinar_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    .line 69
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 70
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$drawable;->meeting_duration_thumb:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p3, v0, p1, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->speaker_volume_control_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSpeakerVolumeControlLabel:Landroid/widget/TextView;

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->tv_meeting_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->meetingId:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zoom_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->roomName:Landroid/widget/TextView;

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->iv_volume_max:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    .line 76
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->iv_volume_min:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->raise_hand_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandTextView:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->raise_hand_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    .line 80
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->raise_hand_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandLayout:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->updateSelfRaiseHandState()V

    .line 82
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupVolumeControl(Landroid/widget/SeekBar;)V

    .line 83
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->raiseHandImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->ll_meeting_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->llMeetingId:Landroid/widget/LinearLayout;

    .line 88
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->llMeetingId:Landroid/widget/LinearLayout;

    new-instance p2, Lus/zoom/zrc/view/MeetingWebinarControlFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment$2;-><init>(Lus/zoom/zrc/view/MeetingWebinarControlFragment;)V

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->iv_meeting_encryption_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 95
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->meetingId:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 99
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->roomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 276
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->releaseVolumeControl(Landroid/widget/SeekBar;)V

    .line 277
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/DeviceInfoObserver;->removeSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V

    .line 278
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onDestroy()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 110
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->updateSelfRaiseHandState()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 118
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->canRaiseHandForAttendee:I

    if-ne p2, p1, :cond_0

    .line 119
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->updateSelfRaiseHandState()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 2

    .line 289
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->roomName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method public updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->meetingId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_2
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->roomName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting()Z

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->updateMeetingEncryptedStatus(Z)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    sget v1, Lus/zoom/zrcbox/R$string;->zrc_accessibility_meeting_id:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->meetingId:Landroid/widget/TextView;

    .line 178
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 176
    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ", "

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lus/zoom/zrcbox/R$string;->encrypted:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->llMeetingId:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
