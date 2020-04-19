.class public Lus/zoom/androidlib/widget/ZMKeyboardDetector;
.super Landroid/view/View;
.source "ZMKeyboardDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;
    }
.end annotation


# instance fields
.field private mKeyboardHeight:I

.field private mKeyboardOpen:Z

.field private mListener:Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;

.field private mbFirstMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mbFirstMeasure:Z

    .line 20
    iput p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mbFirstMeasure:Z

    .line 20
    iput p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mbFirstMeasure:Z

    .line 20
    iput p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    return-void
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 1

    .line 43
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 52
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mListener:Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 56
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 57
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sub-int v0, p2, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    .line 58
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mbFirstMeasure:Z

    if-eqz v0, :cond_5

    .line 59
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 61
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    .line 62
    iget v2, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    if-nez v2, :cond_2

    sub-int/2addr p2, p1

    .line 63
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardHeight:I

    :cond_2
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    .line 66
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mListener:Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;

    invoke-interface {p1}, Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;->onKeyboardOpen()V

    goto :goto_0

    .line 69
    :cond_3
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mbFirstMeasure:Z

    if-eqz p1, :cond_5

    .line 70
    :cond_4
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mKeyboardOpen:Z

    .line 71
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mListener:Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;

    invoke-interface {p1}, Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;->onKeyboardClosed()V

    .line 75
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mbFirstMeasure:Z

    return-void
.end method

.method public setKeyboardListener(Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMKeyboardDetector;->mListener:Lus/zoom/androidlib/widget/ZMKeyboardDetector$KeyboardListener;

    return-void
.end method
