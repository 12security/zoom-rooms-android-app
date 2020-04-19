.class Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GeneralParticipantsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeneralParticipantsViewHolder"
.end annotation


# instance fields
.field avMeetingAvatar:Lus/zoom/zrc/view/AvatarView;

.field avSilentAvatar:Lus/zoom/zrc/view/AvatarView;

.field btnSilentAdmit:Landroid/widget/Button;

.field btnSilentAdmitAll:Landroid/widget/Button;

.field btnSilentRemove:Landroid/widget/Button;

.field btnSilentTakeOffHold:Landroid/widget/Button;

.field ivMeetingAudio:Landroid/widget/ImageView;

.field ivMeetingClosedCaption:Landroid/widget/ImageView;

.field ivMeetingPinVideo:Landroid/widget/ImageView;

.field ivMeetingRaiseHand:Landroid/widget/ImageView;

.field ivMeetingVideo:Landroid/widget/ImageView;

.field llMeetingTitle:Landroid/widget/LinearLayout;

.field llSilentTitle:Landroid/widget/LinearLayout;

.field rlMeetingParticipant:Landroid/widget/RelativeLayout;

.field rlSilentParticipant:Landroid/widget/RelativeLayout;

.field tvMeetingName:Landroid/widget/TextView;

.field tvMeetingSpotLight:Landroid/widget/TextView;

.field tvMeetingSubName:Landroid/widget/TextView;

.field tvMeetingTitle:Landroid/widget/TextView;

.field tvSilentName:Landroid/widget/TextView;

.field tvSilentSubName:Landroid/widget/TextView;

.field tvSilentTitle:Landroid/widget/TextView;

.field vDivider:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 439
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 441
    sget v0, Lus/zoom/zrcbox/R$id;->ll_silent_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llSilentTitle:Landroid/widget/LinearLayout;

    .line 442
    sget v0, Lus/zoom/zrcbox/R$id;->tv_silent_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentTitle:Landroid/widget/TextView;

    .line 443
    sget v0, Lus/zoom/zrcbox/R$id;->btn_silent_admit_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmitAll:Landroid/widget/Button;

    .line 445
    sget v0, Lus/zoom/zrcbox/R$id;->rl_silent_participant:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlSilentParticipant:Landroid/widget/RelativeLayout;

    .line 446
    sget v0, Lus/zoom/zrcbox/R$id;->av_silent_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->avSilentAvatar:Lus/zoom/zrc/view/AvatarView;

    .line 447
    sget v0, Lus/zoom/zrcbox/R$id;->tv_general_silent_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentName:Landroid/widget/TextView;

    .line 448
    sget v0, Lus/zoom/zrcbox/R$id;->tv_silent_sub_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentSubName:Landroid/widget/TextView;

    .line 449
    sget v0, Lus/zoom/zrcbox/R$id;->btn_silent_admit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmit:Landroid/widget/Button;

    .line 450
    sget v0, Lus/zoom/zrcbox/R$id;->btn_silent_remove:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentRemove:Landroid/widget/Button;

    .line 451
    sget v0, Lus/zoom/zrcbox/R$id;->btn_silent_take_off_hold:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentTakeOffHold:Landroid/widget/Button;

    .line 453
    sget v0, Lus/zoom/zrcbox/R$id;->ll_meeting_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llMeetingTitle:Landroid/widget/LinearLayout;

    .line 454
    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingTitle:Landroid/widget/TextView;

    .line 456
    sget v0, Lus/zoom/zrcbox/R$id;->rl_meeting_participant:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlMeetingParticipant:Landroid/widget/RelativeLayout;

    .line 457
    sget v0, Lus/zoom/zrcbox/R$id;->av_meeting_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->avMeetingAvatar:Lus/zoom/zrc/view/AvatarView;

    .line 458
    sget v0, Lus/zoom/zrcbox/R$id;->tv_general_meeting_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingName:Landroid/widget/TextView;

    .line 459
    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_sub_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSubName:Landroid/widget/TextView;

    .line 460
    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_spot_light:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSpotLight:Landroid/widget/TextView;

    .line 461
    sget v0, Lus/zoom/zrcbox/R$id;->iv_meeting_closed_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingClosedCaption:Landroid/widget/ImageView;

    .line 462
    sget v0, Lus/zoom/zrcbox/R$id;->iv_meeting_pin_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingPinVideo:Landroid/widget/ImageView;

    .line 463
    sget v0, Lus/zoom/zrcbox/R$id;->iv_raise_hand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingRaiseHand:Landroid/widget/ImageView;

    .line 464
    sget v0, Lus/zoom/zrcbox/R$id;->iv_meeting_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    .line 465
    sget v0, Lus/zoom/zrcbox/R$id;->iv_meeting_audio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    .line 467
    sget v0, Lus/zoom/zrcbox/R$id;->v_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->vDivider:Landroid/view/View;

    return-void
.end method
