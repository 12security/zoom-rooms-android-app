.class public Lus/zoom/zrc/view/MeetingSeekBarPopWindow;
.super Landroid/widget/PopupWindow;
.source "MeetingSeekBarPopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-direct {v0, p1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    .line 24
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setWidth(I)V

    .line 27
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const-string p3, "#ff3A4C69"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    sget p1, Lus/zoom/zrcbox/R$style;->meeting_duration_popup:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setAnimationStyle(I)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setOutsideTouchable(Z)V

    .line 30
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setFocusable(Z)V

    .line 31
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setHeight(I)V

    .line 32
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->convertView:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->getDuration()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->dismiss()V

    return-void
.end method
