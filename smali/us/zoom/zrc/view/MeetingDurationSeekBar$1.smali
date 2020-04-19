.class Lus/zoom/zrc/view/MeetingDurationSeekBar$1;
.super Ljava/lang/Object;
.source "MeetingDurationSeekBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingDurationSeekBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingDurationSeekBar;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$1;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$1;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->access$000(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v1, v1, -0x1f4

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 69
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v9, v0

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v8, v0, v1

    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_0

    return v2

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v8, p1

    if-lez p1, :cond_1

    return v2

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 76
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$1;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-static {p2}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->access$000(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method
