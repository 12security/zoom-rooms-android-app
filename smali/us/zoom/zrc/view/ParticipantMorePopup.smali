.class public Lus/zoom/zrc/view/ParticipantMorePopup;
.super Landroid/widget/FrameLayout;
.source "ParticipantMorePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ALLOW_ATTENDEES_UNMUTE_THEMSELVES:I = 0x3

.field private static final CLAIM_HOST:I = 0x0

.field private static final ENTRY_MUTE:I = 0x2

.field private static final ENTRY_WAITING:I = 0x5

.field private static final LOCK_MEETING:I = 0x1

.field private static final LOWER_ALL_HANDS:I = 0x7

.field private static final SHOW_AUDIO_PARTICIPANT:I = 0x6

.field private static final SHOW_SELF_VIEW:I = 0x4


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allItemData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private manager:Lus/zoom/zrc/utils/ObserverCallBackManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->init(Landroid/content/Context;)V

    return-void
.end method

.method private hasParticipantsRaiseHand()Z
    .locals 2

    .line 249
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 251
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private updateData(Landroidx/core/util/Pair;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 241
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_2
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    :goto_2
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 13

    .line 71
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    sget v1, Lus/zoom/zrcbox/R$layout;->participant_popup_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    sget v1, Lus/zoom/zrcbox/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 75
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantMorePopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    sget v1, Lus/zoom/zrcbox/R$drawable;->participants_list_pop_up_port_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 78
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$string;->claim_host:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Landroidx/core/util/Pair;

    sget v7, Lus/zoom/zrcbox/R$string;->lock_meeting:I

    .line 83
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$string;->unlock_meeting:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v2

    new-instance v5, Landroidx/core/util/Pair;

    sget v7, Lus/zoom/zrcbox/R$string;->mute_on_entry:I

    .line 84
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$string;->unmute_on_entry:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Landroidx/core/util/Pair;

    sget v8, Lus/zoom/zrcbox/R$string;->allow_attendees_unmute_themselves:I

    .line 85
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lus/zoom/zrcbox/R$string;->disable_attendees_unmute_themselves:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-instance v5, Landroidx/core/util/Pair;

    sget v9, Lus/zoom/zrcbox/R$string;->hide_self_view:I

    .line 86
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lus/zoom/zrcbox/R$string;->show_self_view:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x4

    aput-object v5, v4, v9

    new-instance v5, Landroidx/core/util/Pair;

    sget v10, Lus/zoom/zrcbox/R$string;->put_in_waiting_room_on_entry:I

    .line 87
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lus/zoom/zrcbox/R$string;->not_put_in_waiting_room_on_entry:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x5

    aput-object v5, v4, v10

    new-instance v5, Landroidx/core/util/Pair;

    sget v11, Lus/zoom/zrcbox/R$string;->show_none_video_participant:I

    .line 88
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lus/zoom/zrcbox/R$string;->hide_none_video_participant:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v11, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aput-object v5, v4, v1

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v11, Lus/zoom/zrcbox/R$string;->lower_all_hands:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x7

    aput-object v5, v4, v11

    .line 81
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    .line 95
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isAmICoHost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsRaiseHand()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantMorePopup;->hasParticipantsRaiseHand()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/util/Pair;

    iget-object v5, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/util/Pair;

    iget-object v5, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->isSupportAllowAttendeesUnmuteThemselves()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/util/Pair;

    iget-object v5, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShowAudioParticipant()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->isShowAudioParticipant()Z

    move-result v4

    .line 116
    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsHideSelfVideo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    iget-object v4, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    iget-object v4, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_7
    new-instance v1, Lus/zoom/zrc/view/adapter/ParticipantContextMenuAdapter;

    sget v4, Lus/zoom/zrcbox/R$layout;->list_view_item_textview:I

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-direct {v1, p1, v4, v5}, Lus/zoom/zrc/view/adapter/ParticipantContextMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    invoke-static {}, Lus/zoom/zrc/utils/ObserverCallBackManager;->getInstant()Lus/zoom/zrc/utils/ObserverCallBackManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isMeetingLocked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateLockMeetingState(Z)V

    .line 135
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isOnEntryMuted()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateIsOnEntryMuted(Z)V

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateAllowAttendeesUnmuteThemselves()V

    .line 139
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsHideSelfVideo()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 140
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 141
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateShowSelfView(Z)V

    .line 144
    :cond_9
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isOnEntryWaiting()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->onUpdateIsOnEntryWaiting(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->manager:Lus/zoom/zrc/utils/ObserverCallBackManager;

    if-eqz p1, :cond_0

    .line 151
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrc/utils/ObserverCallBackManager;->notifyStateChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onUpdateAllowAttendeesUnmuteThemselves()V
    .locals 3

    .line 227
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSupportAllowAttendeesUnmuteThemselves()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCanAttendeesUnmuteThemselves()Z

    move-result v0

    .line 230
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 231
    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateData(Landroidx/core/util/Pair;Z)V

    .line 232
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 3

    const-string v0, ""

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnEntryMuted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 168
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateData(Landroidx/core/util/Pair;Z)V

    .line 169
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onUpdateIsOnEntryWaiting(Z)V
    .locals 3

    .line 174
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnEntryWaiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 177
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateData(Landroidx/core/util/Pair;Z)V

    .line 178
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onUpdateShowAudioParticipant()V
    .locals 4

    .line 218
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isShowAudioParticipant()Z

    move-result v0

    const-string v1, ""

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio participant isShowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 221
    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateData(Landroidx/core/util/Pair;Z)V

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onUpdateShowSelfView(Z)V
    .locals 3

    const-string v0, ""

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 186
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateData(Landroidx/core/util/Pair;Z)V

    .line 187
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onZRCParticipantChanged()V
    .locals 5

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 196
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 205
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->isAmICoHost()Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantMorePopup;->hasParticipantsRaiseHand()Z

    move-result v1

    if-nez v1, :cond_4

    .line 209
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 212
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public updateLockMeetingState(Z)V
    .locals 3

    const-string v0, ""

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->allItemData:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 160
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/ParticipantMorePopup;->updateData(Landroidx/core/util/Pair;Z)V

    .line 161
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantMorePopup;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
