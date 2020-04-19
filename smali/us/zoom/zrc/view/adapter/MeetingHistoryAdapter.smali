.class public Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MeetingHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;,
        Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private meetingHistories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/MeetingHistory;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->meetingHistories:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMeetingHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/MeetingHistory;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->meetingHistories:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;I)V
    .locals 4

    .line 49
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$000(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->meetingHistories:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/MeetingHistory;

    .line 52
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/MeetingHistory;->getMeetingHistoryID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/Util;->formatDisplayMeetingNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/MeetingHistory;->getMeetingTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$100(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$200(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$100(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/MeetingHistory;->getMeetingTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$200(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$200(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->access$300(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/MeetingHistory;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lus/zoom/zrc/utils/Util;->formatCallHistoryTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;Lus/zoom/zrcsdk/model/MeetingHistory;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;
    .locals 2

    .line 43
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->item_meeting_history:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setMeetingHistories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/MeetingHistory;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->meetingHistories:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;

    return-void
.end method
