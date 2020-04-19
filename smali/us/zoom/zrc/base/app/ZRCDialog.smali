.class public Lus/zoom/zrc/base/app/ZRCDialog;
.super Landroid/app/Dialog;
.source "ZRCDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;,
        Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;
    }
.end annotation


# instance fields
.field private disableImmersiveModeForPolycomTrio:Z

.field private disableWindowStateChangedAccessibilityEvent:Z

.field private userActiveOnUIListener:Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;

.field private windowFocusChangeListener:Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableImmersiveModeForPolycomTrio:Z

    .line 23
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableWindowStateChangedAccessibilityEvent:Z

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableImmersiveModeForPolycomTrio:Z

    .line 23
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableWindowStateChangedAccessibilityEvent:Z

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableImmersiveModeForPolycomTrio:Z

    .line 23
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableWindowStateChangedAccessibilityEvent:Z

    .line 48
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/high16 v1, 0x4000000

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x400

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :cond_1
    return-void
.end method

.method private notifyUserActiveOnUI()V
    .locals 1

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialog;->userActiveOnUIListener:Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;->onUserActiveOnUI()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->notifyUserActiveOnUI()V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->notifyUserActiveOnUI()V

    .line 93
    invoke-static {p1}, Lus/zoom/zrc/utils/VolumeKeyUtils;->isVolumeKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Lus/zoom/zrc/utils/VolumeKeyUtils;->handleVolumeKey(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableWindowStateChangedAccessibilityEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const-string p1, "Intercepted ZRCDialog window state changed accessibility event."

    const/4 v0, 0x0

    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->notifyUserActiveOnUI()V

    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->notifyUserActiveOnUI()V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 67
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableImmersiveModeForPolycomTrio:Z

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialog;->windowFocusChangeListener:Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p1}, Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;->onWindowFocusChange(Z)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setDisableImmersiveModeForPolycomTrio()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableImmersiveModeForPolycomTrio:Z

    return-void
.end method

.method public setDisableWindowStateChangedAccessibilityEvent(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->disableWindowStateChangedAccessibilityEvent:Z

    return-void
.end method

.method public setUserActiveOnUIListener(Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->userActiveOnUIListener:Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;

    return-void
.end method

.method public setWindowFocusChangeListener(Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCDialog;->windowFocusChangeListener:Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;

    return-void
.end method
