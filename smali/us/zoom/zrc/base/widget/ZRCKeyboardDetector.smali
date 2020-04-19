.class public Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;
.super Landroid/view/View;
.source "ZRCKeyboardDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;
    }
.end annotation


# instance fields
.field private mKeyboardOpen:Z

.field private mListener:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    .line 52
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->init()V

    return-void
.end method

.method private checkKeyboardState()V
    .locals 3

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lus/zoom/zrc/login/util/LoginUIUtils;->getFrameInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 94
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mWindowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->dispatchKeyboardOpen()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->dispatchKeyboardClosed()V

    :goto_0
    return-void
.end method

.method private dispatchKeyboardClosed()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mKeyboardOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mKeyboardOpen:Z

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mListener:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;->onKeyboardClosed()V

    :cond_1
    return-void
.end method

.method private dispatchKeyboardOpen()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mKeyboardOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mKeyboardOpen:Z

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mListener:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;->onKeyboardOpen()V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public closeSoftKeyboard(Landroid/view/View;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->dispatchKeyboardClosed()V

    return-void
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mKeyboardOpen:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->checkKeyboardState()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->checkKeyboardState()V

    return-void
.end method

.method public openSoftKeyboard(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 120
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->dispatchKeyboardOpen()V

    return-void
.end method

.method public setKeyboardListener(Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->mListener:Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;

    return-void
.end method
