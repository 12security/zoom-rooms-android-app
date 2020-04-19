.class public Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PortraitMeetingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;,
        Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

.field private mContext:Landroid/content/Context;

.field private mMeetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->listener:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    .line 41
    iput-object p3, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mMeetingList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->listener:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mMeetingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMeetingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mMeetingList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->onBindViewHolder(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;I)V
    .locals 3

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mMeetingList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 67
    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$000(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->formatMeetingTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$100(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->updateButton(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 77
    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$200(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$200(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$300(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;-><init>(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p1, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;-><init>(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->meeting_list_adapter:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    sget v0, Lus/zoom/zrcbox/R$id;->mtTimeTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$002(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 53
    sget v0, Lus/zoom/zrcbox/R$id;->mtTitleTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$102(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 54
    sget v0, Lus/zoom/zrcbox/R$id;->mtHostTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$202(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 55
    sget v0, Lus/zoom/zrcbox/R$id;->mtStartBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p2, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$302(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 56
    sget v0, Lus/zoom/zrcbox/R$id;->mtCheckInStateTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$402(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 57
    sget v0, Lus/zoom/zrcbox/R$id;->mtCheckedInButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p2, p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$502(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 58
    new-instance p1, Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-static {p2}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$300(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/meeting/CheckInButtonHelper;-><init>(Landroid/widget/TextView;)V

    invoke-static {p2, p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->access$602(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Lus/zoom/zrc/meeting/CheckInButtonHelper;)Lus/zoom/zrc/meeting/CheckInButtonHelper;

    return-object p2
.end method

.method public updateMeetingList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->mMeetingList:Ljava/util/List;

    return-void
.end method
