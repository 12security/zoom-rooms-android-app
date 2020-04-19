.class public Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;
.super Landroid/view/View;
.source "HideByKeyboardHolderView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mHiddenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 34
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 61
    invoke-static {v0, v1}, Lus/zoom/zrc/login/util/LoginUIUtils;->getWindowHiddenFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->mHiddenHeight:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->mHiddenHeight:I

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->isEnabled()Z

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 50
    iget p2, p0, Lus/zoom/zrc/login/widget/HideByKeyboardHolderView;->mHiddenHeight:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 52
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 54
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
