.class public Lus/zoom/zrc/settings/SettingKeyboardDetector;
.super Ljava/lang/Object;
.source "SettingKeyboardDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;
    }
.end annotation


# instance fields
.field private keyboardListener:Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;

.field private mKeyboardHeight:I

.field private mKeyboardOpen:Z

.field private mWindowRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingKeyboardDetector;-><init>(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mWindowRef:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardHeight:I

    return-void
.end method

.method private dispatchKeyboardClosed()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardOpen:Z

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->keyboardListener:Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v0}, Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;->onKeyboardClosed()V

    :cond_1
    return-void
.end method

.method private dispatchKeyboardOpen()Z
    .locals 2

    .line 83
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardOpen:Z

    .line 85
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->keyboardListener:Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v1}, Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;->onKeyboardOpen()V

    :cond_1
    return v0
.end method

.method private dispatchKeyboardSizeChanged()V
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->keyboardListener:Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;->onKeyboardSizeChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 1

    .line 106
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardOpen:Z

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardHeight:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardOpen:Z

    return v0
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mWindowRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 57
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 58
    iget v1, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardHeight:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 59
    :goto_0
    iput v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mKeyboardHeight:I

    .line 60
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-le v0, v2, :cond_2

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingKeyboardDetector;->dispatchKeyboardOpen()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 63
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingKeyboardDetector;->dispatchKeyboardSizeChanged()V

    goto :goto_1

    .line 67
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingKeyboardDetector;->dispatchKeyboardClosed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public releaseDetector()V
    .locals 3

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->mWindowRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIKeyboardListener(Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingKeyboardDetector;->keyboardListener:Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;

    return-void
.end method
