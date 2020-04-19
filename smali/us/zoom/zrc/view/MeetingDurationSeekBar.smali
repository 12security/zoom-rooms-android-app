.class public Lus/zoom/zrc/view/MeetingDurationSeekBar;
.super Landroid/widget/FrameLayout;
.source "MeetingDurationSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private MAX:I

.field private MAX_PROGRESS:I

.field private MIN:I

.field private STEP:I

.field private mContext:Landroid/content/Context;

.field private mDurationSeekBar:Landroid/widget/SeekBar;

.field private mDurationTextView:Landroid/widget/TextView;

.field private progressAnnouncementTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xf0

    .line 29
    iput v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    const/16 v0, 0x1e

    .line 30
    iput v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    const/4 v0, 0x5

    .line 31
    iput v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->STEP:I

    .line 32
    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    iget v1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX_PROGRESS:I

    .line 128
    new-instance v0, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;-><init>(Lus/zoom/zrc/view/MeetingDurationSeekBar;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->progressAnnouncementTask:Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xf0

    .line 29
    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    const/16 p2, 0x1e

    .line 30
    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    const/4 p2, 0x5

    .line 31
    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->STEP:I

    .line 32
    iget p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    sub-int/2addr p2, v0

    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX_PROGRESS:I

    .line 128
    new-instance p2, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;-><init>(Lus/zoom/zrc/view/MeetingDurationSeekBar;)V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->progressAnnouncementTask:Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xf0

    .line 29
    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    const/16 p2, 0x1e

    .line 30
    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    const/4 p2, 0x5

    .line 31
    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->STEP:I

    .line 32
    iget p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    iget p3, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    sub-int/2addr p2, p3

    iput p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX_PROGRESS:I

    .line 128
    new-instance p2, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;-><init>(Lus/zoom/zrc/view/MeetingDurationSeekBar;)V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->progressAnnouncementTask:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/widget/SeekBar;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private calculateProgress(II)I
    .locals 0

    sub-int/2addr p1, p2

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 53
    sget v0, Lus/zoom/zrcbox/R$layout;->meeting_duration_seekbar:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    sget p1, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    .line 55
    sget p1, Lus/zoom/zrcbox/R$id;->tv_duration:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationTextView:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$drawable;->meeting_duration_thumb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 58
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 59
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX_PROGRESS:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 60
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 61
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/MeetingDurationSeekBar$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar$1;-><init>(Lus/zoom/zrc/view/MeetingDurationSeekBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .line 95
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 96
    iget v1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    add-int/2addr v0, v1

    iget v1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->STEP:I

    div-int/2addr v0, v1

    mul-int v0, v0, v1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 109
    iget p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    add-int/2addr p1, p2

    iget p3, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->STEP:I

    div-int/2addr p1, p3

    mul-int p1, p1, p3

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 111
    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 112
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX_PROGRESS:I

    if-eq p2, v0, :cond_1

    .line 116
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iget v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MAX_PROGRESS:I

    if-eq p2, v0, :cond_1

    .line 117
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 120
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->progressAnnouncementTask:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->progressAnnouncementTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    .line 149
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 3

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->MIN:I

    invoke-direct {p0, p1, v1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->calculateProgress(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar;->mDurationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
