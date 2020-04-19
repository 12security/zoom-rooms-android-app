.class public Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MeetingHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private llMeetingHistoryContent:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

.field private tvMeetingHistoryNumber:Landroid/widget/TextView;

.field private tvMeetingHistoryTime:Landroid/widget/TextView;

.field private tvMeetingHistoryTopic:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->this$0:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    .line 86
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    sget p1, Lus/zoom/zrcbox/R$id;->ll_meeting_history_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->llMeetingHistoryContent:Landroid/widget/LinearLayout;

    .line 88
    sget p1, Lus/zoom/zrcbox/R$id;->tv_meeting_history_topic:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->tvMeetingHistoryTopic:Landroid/widget/TextView;

    .line 89
    sget p1, Lus/zoom/zrcbox/R$id;->tv_meeting_history_number:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->tvMeetingHistoryNumber:Landroid/widget/TextView;

    .line 90
    sget p1, Lus/zoom/zrcbox/R$id;->tv_meeting_history_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->tvMeetingHistoryTime:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->llMeetingHistoryContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->tvMeetingHistoryTopic:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->tvMeetingHistoryNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->tvMeetingHistoryTime:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public swipe(F)V
    .locals 1

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;->llMeetingHistoryContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method
