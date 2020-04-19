.class public Lus/zoom/zrc/base/widget/ZRCSeekBar;
.super Landroid/widget/SeekBar;
.source "ZRCSeekBar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;
    }
.end annotation


# instance fields
.field private mIsDragging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    iput-boolean v1, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    goto :goto_0

    .line 37
    :pswitch_2
    iput-boolean v1, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent dragging "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar;->mIsDragging:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 49
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;-><init>(Lus/zoom/zrc/base/widget/ZRCSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
