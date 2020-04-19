.class public Lus/zoom/zrp/view/ZRPMeetingListItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZRPMeetingListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;
    }
.end annotation


# static fields
.field public static final CHECK_IN_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private checkInBackground:Landroid/view/View;

.field private checkInButton:Landroid/widget/Button;

.field private checkedInMark:Landroid/widget/ImageView;

.field private constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private listener:Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

.field meeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private nameView:Landroid/widget/TextView;

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->nameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->listener:Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->meeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 66
    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_time:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->timeView:Landroid/widget/TextView;

    .line 67
    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_name:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->nameView:Landroid/widget/TextView;

    .line 68
    sget v0, Lus/zoom/zrcbox/R$id;->check_in_background:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    .line 69
    sget v0, Lus/zoom/zrcbox/R$id;->btn_check_in:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    .line 70
    sget v0, Lus/zoom/zrcbox/R$id;->mark_checked_in:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    new-instance v1, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;-><init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 83
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method setListener(Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->listener:Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

    return-void
.end method

.method setMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 3

    .line 91
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->meeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->timeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lus/zoom/zrp/util/ZRPUtils;->getZRPMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setViewType(I)V
    .locals 6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 109
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->timeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zrp_reserve_common_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->timeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zrp_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrp_reserve_common_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrp_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x4

    packed-switch p1, :pswitch_data_0

    .line 143
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v0, Lus/zoom/zrcbox/R$id;->tv_meeting_name:I

    sget v1, Lus/zoom/zrcbox/R$id;->zrp_item:I

    invoke-virtual {p1, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 144
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 145
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 132
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v4, Lus/zoom/zrcbox/R$id;->tv_meeting_name:I

    sget v5, Lus/zoom/zrcbox/R$id;->mark_checked_in:I

    invoke-virtual {p1, v4, v2, v5, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 133
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 134
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 138
    instance-of v0, p1, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_3

    const/16 v0, 0x2710

    .line 139
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2

    .line 125
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v4, Lus/zoom/zrcbox/R$id;->tv_meeting_name:I

    sget v5, Lus/zoom/zrcbox/R$id;->btn_check_in:I

    invoke-virtual {p1, v4, v2, v5, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 126
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 127
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method startCheckInAnimation()V
    .locals 14

    .line 153
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_meeting_name:I

    sget v2, Lus/zoom/zrcbox/R$id;->mark_checked_in:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 154
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->constraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 155
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 159
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 162
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 163
    iget v2, v5, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x2

    .line 166
    new-array v6, v3, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v1, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 167
    new-instance v6, Lus/zoom/zrp/view/ZRPMeetingListItemView$2;

    invoke-direct {v6, p0, v4, v5}, Lus/zoom/zrp/view/ZRPMeetingListItemView$2;-><init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v6, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 177
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 179
    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkInButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getRight()I

    move-result v10

    iget-object v11, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    mul-int/lit8 v11, v0, 0x3

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 180
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 183
    new-array v11, v3, [I

    aput v10, v11, v7

    aput v9, v11, v2

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 184
    new-instance v7, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;

    invoke-direct {v7, p0, v6, v0, v8}, Lus/zoom/zrp/view/ZRPMeetingListItemView$3;-><init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0xc8

    .line 192
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v0, "Alpha"

    .line 196
    new-array v7, v3, [I

    fill-array-data v7, :array_0

    invoke-static {v4, v0, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v7, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView;->checkedInMark:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/ClipDrawable;

    const-string v11, "Alpha"

    .line 201
    new-array v12, v3, [I

    fill-array-data v12, :array_1

    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 202
    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    new-instance v12, Lus/zoom/zrp/view/ZRPMeetingListItemView$4;

    invoke-direct {v12, p0}, Lus/zoom/zrp/view/ZRPMeetingListItemView$4;-><init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;)V

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    new-array v12, v3, [I

    fill-array-data v12, :array_2

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 212
    new-instance v13, Lus/zoom/zrp/view/ZRPMeetingListItemView$5;

    invoke-direct {v13, p0, v7}, Lus/zoom/zrp/view/ZRPMeetingListItemView$5;-><init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/ClipDrawable;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    invoke-virtual {v12, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v7, "Alpha"

    .line 221
    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-static {v6, v7, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 222
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 225
    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 226
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 227
    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 228
    new-instance v0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;

    move-object v2, v0

    move-object v3, p0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;-><init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
