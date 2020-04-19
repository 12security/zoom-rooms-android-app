.class public Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GeneralParticipantsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;,
        Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;,
        Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private generalParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/GeneralParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final isWaitingRoom:Z

.field private meetingNumber:I

.field private onMeetingParticipantItemClickListener:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;

.field private onParticipantOperateListener:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;

.field private silentNumber:I

.field private spotLightTextColor:I

.field private subNameTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_participant_spot_light_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->spotLightTextColor:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_participant_sub_name_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->subNameTextColor:I

    .line 49
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->isWaitingRoom:Z

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onParticipantOperateListener:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onMeetingParticipantItemClickListener:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;

    return-object p0
.end method

.method private identifyGuestBackgroundColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 396
    invoke-direct {p0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->shouldIdentifyGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 397
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_participant_guest_bg_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private isNeedResetAvatar(Lus/zoom/zrc/view/AvatarView;Lus/zoom/zrcsdk/model/ZRCParticipant;)Z
    .locals 5
    .param p1    # Lus/zoom/zrc/view/AvatarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 270
    invoke-virtual {p1}, Lus/zoom/zrc/view/AvatarView;->getName()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lus/zoom/zrc/view/AvatarView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Lus/zoom/zrc/view/AvatarView;->getUserType()I

    move-result p1

    .line 274
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result p2

    .line 278
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {v3, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private resetAvatar(Lus/zoom/zrc/view/AvatarView;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 3
    .param p1    # Lus/zoom/zrc/view/AvatarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/AvatarView;->setUserType(I)V

    .line 286
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/AvatarView;->setName(Ljava/lang/CharSequence;Z)V

    .line 287
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/AvatarView;->setUrl(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 290
    sget p2, Lus/zoom/zrcbox/R$drawable;->phone_inmeeting_thumbnail:I

    invoke-virtual {p1, p2, v1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(IZ)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 292
    sget p2, Lus/zoom/zrcbox/R$drawable;->h323_inmeeting_thumbnail:I

    invoke-virtual {p1, p2, v1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(IZ)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lus/zoom/zrc/utils/AvatarLoader;->displayImage(Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;)V

    :goto_0
    return-void
.end method

.method private resetItemViewBackgroundColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;)V
    .locals 1

    .line 358
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private resetTextViewsColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;)V
    .locals 2

    .line 352
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingName:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSubName:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->subNameTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSpotLight:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->spotLightTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private resetViewsClickable(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;)V
    .locals 2

    .line 344
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 345
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmitAll:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 346
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 347
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentRemove:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 348
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentTakeOffHold:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method private resetViewsVisibility(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrc/model/GeneralParticipant$Type;)V
    .locals 3

    .line 316
    sget-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v0, :cond_0

    .line 317
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llSilentTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlSilentParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llMeetingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlMeetingParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->vDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 322
    :cond_0
    sget-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne p2, v0, :cond_1

    .line 323
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llSilentTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlSilentParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 325
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llMeetingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlMeetingParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 327
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->vDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne p2, v0, :cond_2

    .line 329
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llSilentTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlSilentParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 331
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llMeetingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlMeetingParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->vDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_2
    sget-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne p2, v0, :cond_3

    .line 335
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llSilentTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlSilentParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->llMeetingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->rlMeetingParticipant:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 339
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->vDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private shouldIdentifyGuest()Z
    .locals 1

    .line 404
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isIdentifyGuestParticipants()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAmIGuest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSubName(Landroid/widget/TextView;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 2

    .line 362
    invoke-direct {p0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->shouldIdentifyGuest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_host_guest:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 366
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 367
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_cohost_guest:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_guest:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_host_me:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_cohost_me:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_attendee_me:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 383
    :cond_5
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_host:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 386
    :cond_6
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 387
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    sget p2, Lus/zoom/zrcbox/R$string;->participant_desc_cohost:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const/16 p2, 0x8

    .line 390
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 257
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/model/GeneralParticipant;

    .line 258
    invoke-virtual {v0}, Lus/zoom/zrc/model/GeneralParticipant;->getType()Lus/zoom/zrc/model/GeneralParticipant$Type;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne v1, v2, :cond_0

    const-wide/16 v0, -0x3e9

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/model/GeneralParticipant;->getType()Lus/zoom/zrc/model/GeneralParticipant$Type;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne v1, v2, :cond_1

    const-wide/16 v0, -0x3ea

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/model/GeneralParticipant;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p1

    :cond_2
    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getParticipantPositionExSilentMode(I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 299
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 302
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 303
    iget-object v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/model/GeneralParticipant;

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {v2}, Lus/zoom/zrc/model/GeneralParticipant;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v2}, Lus/zoom/zrc/model/GeneralParticipant;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    invoke-static {p1, v3}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {v2}, Lus/zoom/zrc/model/GeneralParticipant;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    check-cast p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;I)V
    .locals 6
    .param p1    # Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/model/GeneralParticipant;

    .line 76
    invoke-virtual {p2}, Lus/zoom/zrc/model/GeneralParticipant;->getType()Lus/zoom/zrc/model/GeneralParticipant$Type;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->resetViewsVisibility(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrc/model/GeneralParticipant$Type;)V

    .line 79
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->resetViewsClickable(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;)V

    .line 80
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->resetTextViewsColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;)V

    .line 81
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->resetItemViewBackgroundColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;)V

    .line 83
    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 84
    iget p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->silentNumber:I

    if-gt p2, v2, :cond_1

    .line 85
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->isWaitingRoom:Z

    if-eqz v1, :cond_0

    sget v1, Lus/zoom/zrcbox/R$string;->person_is_waiting:I

    goto :goto_0

    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->person_is_on_hold:I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->silentNumber:I

    .line 86
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmitAll:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    .line 89
    :cond_1
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->isWaitingRoom:Z

    if-eqz v1, :cond_2

    sget v1, Lus/zoom/zrcbox/R$string;->people_are_waiting:I

    goto :goto_1

    :cond_2
    sget v1, Lus/zoom/zrcbox/R$string;->people_are_on_hold:I

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->silentNumber:I

    .line 90
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmitAll:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmitAll:Landroid/widget/Button;

    new-instance p2, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 101
    :cond_3
    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne v0, v1, :cond_6

    .line 102
    invoke-virtual {p2}, Lus/zoom/zrc/model/GeneralParticipant;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object p2

    .line 104
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->avSilentAvatar:Lus/zoom/zrc/view/AvatarView;

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->isNeedResetAvatar(Lus/zoom/zrc/view/AvatarView;Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->avSilentAvatar:Lus/zoom/zrc/view/AvatarView;

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->resetAvatar(Lus/zoom/zrc/view/AvatarView;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 111
    :cond_4
    iget-boolean v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->isWaitingRoom:Z

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentTakeOffHold:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmit:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentRemove:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmit:Landroid/widget/Button;

    new-instance v1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$2;

    invoke-direct {v1, p0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$2;-><init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentRemove:Landroid/widget/Button;

    new-instance v1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$3;

    invoke-direct {v1, p0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$3;-><init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 134
    :cond_5
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentAdmit:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentRemove:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentTakeOffHold:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->btnSilentTakeOffHold:Landroid/widget/Button;

    new-instance v1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$4;

    invoke-direct {v1, p0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$4;-><init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :goto_2
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvSilentSubName:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->updateSubName(Landroid/widget/TextView;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 149
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->identifyGuestBackgroundColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_9

    .line 151
    :cond_6
    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne v0, v1, :cond_8

    .line 152
    iget p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->meetingNumber:I

    if-gt p2, v2, :cond_7

    .line 153
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->participant_in_the_meeting:I

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->meetingNumber:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 155
    :cond_7
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->participants_in_the_meeting:I

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->meetingNumber:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 157
    :cond_8
    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    if-ne v0, v1, :cond_14

    .line 158
    invoke-virtual {p2}, Lus/zoom/zrc/model/GeneralParticipant;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object p2

    .line 160
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->isUserSpotlighted(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingName:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->spotLightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSubName:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->spotLightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSpotLight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSpotLight:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->spotLightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 168
    :cond_9
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingName:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSubName:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->subNameTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSpotLight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_3
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_a

    .line 174
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 176
    :cond_a
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 178
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->participant_status_tel_muted:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v5, Lus/zoom/zrcbox/R$string;->audio_muted:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 182
    :cond_b
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->participant_status_tel_unmuted:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v5, Lus/zoom/zrcbox/R$string;->audio_unmuted:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 186
    :cond_c
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->participant_status_muted:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v5, Lus/zoom/zrcbox/R$string;->audio_muted:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 190
    :cond_d
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->participant_status_unmuted:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingAudio:Landroid/widget/ImageView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v5, Lus/zoom/zrcbox/R$string;->audio_unmuted:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    :goto_4
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v0

    if-nez v0, :cond_e

    .line 197
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 199
    :cond_e
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->participant_status_video_unmuted:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->video_started:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 204
    :cond_f
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->participant_status_video_muted:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingVideo:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->video_stopped:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    :goto_5
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAmIHost()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 209
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingClosedCaption:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingClosedCaption:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->cc_typer:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 212
    :cond_10
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingClosedCaption:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    :goto_6
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 216
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingRaiseHand:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingRaiseHand:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->hand_raising:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 219
    :cond_11
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingRaiseHand:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :goto_7
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->isUserPinned(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingPinVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingPinVideo:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->video_pinned:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 226
    :cond_12
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->ivMeetingPinVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    :goto_8
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->avMeetingAvatar:Lus/zoom/zrc/view/AvatarView;

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->isNeedResetAvatar(Lus/zoom/zrc/view/AvatarView;Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 231
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->avMeetingAvatar:Lus/zoom/zrc/view/AvatarView;

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->resetAvatar(Lus/zoom/zrc/view/AvatarView;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 234
    :cond_13
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;-><init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->tvMeetingSubName:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->updateSubName(Landroid/widget/TextView;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 244
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->identifyGuestBackgroundColor(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_14
    :goto_9
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->general_participant_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setGeneralParticipantsAndListInfos(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/GeneralParticipant;",
            ">;II)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->generalParticipants:Ljava/util/List;

    .line 54
    iput p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->silentNumber:I

    .line 55
    iput p3, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->meetingNumber:I

    return-void
.end method

.method public setOnMeetingParticipantItemClickListener(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onMeetingParticipantItemClickListener:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;

    return-void
.end method

.method public setOnParticipantOperateListener(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onParticipantOperateListener:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;

    return-void
.end method
