.class public Lus/zoom/zrp/view/ZRPReserveMeetingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZRPReserveMeetingView.java"


# instance fields
.field private meetingAreaView:Landroid/view/View;

.field private meetingNameView:Landroid/widget/TextView;

.field private meetingSeparatorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 34
    sget v0, Lus/zoom/zrcbox/R$layout;->zrp_reserve_meeting_item:I

    invoke-static {p1, v0, p0}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget p1, Lus/zoom/zrcbox/R$id;->meeting_area:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingAreaView:Landroid/view/View;

    .line 37
    sget p1, Lus/zoom/zrcbox/R$id;->tv_topic:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingNameView:Landroid/widget/TextView;

    .line 38
    sget p1, Lus/zoom/zrcbox/R$id;->separate_line:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveMeetingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingSeparatorView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getMeetingAnimation()Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method public setMeetingHeight(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 51
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 52
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingAreaView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMeetingName(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMeetingNameViewVisibility(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTopSeparator()V
    .locals 2

    .line 56
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveMeetingView;->meetingSeparatorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
