.class public Lus/zoom/zrc/view/ZRCContactItemView;
.super Landroid/widget/LinearLayout;
.source "ZRCContactItemView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private colorPrimary:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mAvatarView:Lus/zoom/zrc/view/AvatarView;

.field private mImgPresence:Landroid/widget/ImageView;

.field private mItem:Lus/zoom/zrcsdk/model/ZRCContact;

.field private mPanelPresence:Landroid/view/View;

.field private mTxtCustomMessage:Landroid/widget/TextView;

.field private mTxtDeviceType:Landroid/widget/TextView;

.field private mTxtScreenName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->inflateLayout()V

    .line 52
    sget v0, Lus/zoom/zrcbox/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    sget v0, Lus/zoom/zrcbox/R$id;->txtScreenName:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtScreenName:Landroid/widget/TextView;

    .line 55
    sget v0, Lus/zoom/zrcbox/R$id;->avatarView:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mAvatarView:Lus/zoom/zrc/view/AvatarView;

    .line 56
    sget v0, Lus/zoom/zrcbox/R$id;->txtDeviceType:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    .line 57
    sget v0, Lus/zoom/zrcbox/R$id;->imgPresence:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    .line 58
    sget v0, Lus/zoom/zrcbox/R$id;->panelPresence:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mPanelPresence:Landroid/view/View;

    .line 59
    sget v0, Lus/zoom/zrcbox/R$id;->txtCustomMessage:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtCustomMessage:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->colorPrimary:I

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->colorPrimary:I

    :goto_0
    return-void
.end method

.method private setAddrBookItem(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    .line 85
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->setAlpha(F)V

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->setAlpha(F)V

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 92
    :goto_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCContactItemView;->updatePresenceState(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 94
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mItem:Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v0, v3}, Lus/zoom/zrc/model/AppModel;->containsSelectedContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 98
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 99
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mItem:Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCContactItemView;->setScreenName(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtCustomMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mAvatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {p1, v2}, Lus/zoom/zrc/view/AvatarView;->setVisibility(I)V

    goto :goto_3

    .line 109
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mAvatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/AvatarView;->setVisibility(I)V

    .line 110
    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mAvatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/utils/AvatarLoader;->displayImage(Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;)V

    :goto_3
    return-void
.end method

.method private updatePresenceState(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 4

    .line 115
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 116
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mPanelPresence:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->deactivated:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->colorPrimary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/ZRCContactItemView;->setEnabled(Z)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ZRCContactItemView;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mPanelPresence:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mPanelPresence:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isOnMobile()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zm_lbl_mobile_online:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_mm_presence_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->zm_status_available:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 171
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zm_lbl_not_disturb:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_mm_presence_busy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->zm_status_dnd:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 135
    :pswitch_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomPresence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zm_lbl_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 138
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isOnDesktop()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lus/zoom/zrcbox/R$string;->zm_lbl_desktop_online:I

    goto :goto_1

    :cond_3
    sget p1, Lus/zoom/zrcbox/R$string;->zm_lbl_mobile_online:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_mm_presence_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->zm_status_available:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 150
    :pswitch_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence_status()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    .line 164
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->im_presence_meeting:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 161
    :pswitch_3
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->im_presence_presenting:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 158
    :pswitch_4
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->im_presence_pbx:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 155
    :pswitch_5
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->im_presence_calendar_event:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 152
    :pswitch_6
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->im_presence_zoommeeting:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 167
    :goto_3
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_mm_presence_busy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->zm_status_dnd:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 145
    :pswitch_7
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zm_lbl_desktop_away:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_gray_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->zm_status_offline:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 182
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zm_lbl_offline:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtDeviceType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_mm_presence_offline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mImgPresence:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->zm_status_offline:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected inflateLayout()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->zm_addrbook_item:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 201
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mItem:Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/AppModel;->addSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 202
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtScreenName:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCContactItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtScreenName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mItem:Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/AppModel;->removeSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 205
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtScreenName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public performClickCheckBox()V
    .locals 1

    .line 210
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    :cond_0
    return-void
.end method

.method public setBuddyListItem(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mItem:Lus/zoom/zrcsdk/model/ZRCContact;

    .line 195
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCContactItemView;->setAddrBookItem(Lus/zoom/zrcsdk/model/ZRCContact;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 76
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtScreenName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mAvatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/AvatarView;->setName(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mAvatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/AvatarView;->setBgColorSeedString(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCContactItemView;->mTxtScreenName:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/zrc/view/ZRCContactItemView;->colorPrimary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
