.class public Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChangeContentSharingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;,
        Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private index:I

.field private onItemClickListener:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;

.field private sharingParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->context:Landroid/content/Context;

    .line 32
    iput p2, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    .line 33
    invoke-direct {p0}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->initSharingParticipants()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;)Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;

    return-object p0
.end method

.method private initSharingParticipants()V
    .locals 2

    .line 38
    iget v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    if-ltz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinStatusOfScreenType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrwAllShareParticipants()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareParticipants()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSharingParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    check-cast p1, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;I)V
    .locals 6
    .param p1    # Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    .line 84
    iget v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    if-ltz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    iget v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 89
    :cond_1
    iget v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result v0

    .line 90
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    .line 91
    iget-object v2, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object p2

    .line 93
    iget-object v2, p1, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;->tvMultiShareName:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$color;->multi_share_item_checked:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v3, p1, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;->tvCheckMark:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->context:Landroid/content/Context;

    sget v5, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$color;->multi_share_item_unchecked:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v3, p1, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;->tvCheckMark:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    new-instance p2, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;

    invoke-direct {p2, p0, p1, v1, v0}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;II)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
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

    .line 22
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->context:Landroid/content/Context;

    .line 76
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 77
    sget v0, Lus/zoom/zrcbox/R$layout;->multi_share_rv_name_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    new-instance p2, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnClickListener(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;

    return-void
.end method

.method public updateSharingList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->sharingParticipants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->notifyDataSetChanged()V

    return-void
.end method
