.class Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PortraitMeetingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

.field private checkedInButton:Landroid/widget/ImageButton;

.field private checkedInText:Landroid/widget/TextView;

.field private meetingOwner:Landroid/widget/TextView;

.field private meetingStart:Landroid/widget/Button;

.field private time:Landroid/widget/TextView;

.field private topic:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->topic:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->topic:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingOwner:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingOwner:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 118
    iget-object p0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingStart:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingStart:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$402(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$502(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$602(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;Lus/zoom/zrc/meeting/CheckInButtonHelper;)Lus/zoom/zrc/meeting/CheckInButtonHelper;
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    return-object p1
.end method


# virtual methods
.method public updateButton(Ljava/lang/String;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingStart:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->shouldShowCheckedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 139
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingStart:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->topic:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->topic:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkInButtonHelper:Lus/zoom/zrc/meeting/CheckInButtonHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/CheckInButtonHelper;->setButtonNormal()V

    .line 146
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->checkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->topic:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->meetingStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->topic:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
