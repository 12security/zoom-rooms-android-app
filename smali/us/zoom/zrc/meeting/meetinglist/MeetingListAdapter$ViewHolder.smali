.class Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MeetingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private apTV:Landroid/widget/TextView;

.field private idTV:Landroid/widget/TextView;

.field private meetingNameTV:Landroid/widget/TextView;

.field private meetingNumberTV:Landroid/widget/TextView;

.field private timeTV:Landroid/widget/TextView;

.field private videoIconIV:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v0, Lus/zoom/zrcbox/R$id;->tv_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->idTV:Landroid/widget/TextView;

    .line 37
    sget v0, Lus/zoom/zrcbox/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->timeTV:Landroid/widget/TextView;

    .line 38
    sget v0, Lus/zoom/zrcbox/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->meetingNameTV:Landroid/widget/TextView;

    .line 39
    sget v0, Lus/zoom/zrcbox/R$id;->tv_morning_or_afternoon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->apTV:Landroid/widget/TextView;

    .line 40
    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->meetingNumberTV:Landroid/widget/TextView;

    .line 41
    sget v0, Lus/zoom/zrcbox/R$id;->meeting_list_type_zoom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->videoIconIV:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->timeTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->apTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->meetingNameTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->idTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->meetingNumberTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->videoIconIV:Landroid/widget/ImageView;

    return-object p0
.end method
