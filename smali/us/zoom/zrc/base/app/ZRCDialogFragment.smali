.class public Lus/zoom/zrc/base/app/ZRCDialogFragment;
.super Lus/zoom/androidlib/app/ZMDialogFragment;
.source "ZRCDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/app/IZRCUIElement;


# instance fields
.field private disableImmersiveModeForPolycomTrio:Z

.field private disableWindowStateChangedAccessibilityEvent:Z

.field private fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

.field private isFinishing:Z

.field private parentFragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

.field private retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

.field private screenBrightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableImmersiveModeForPolycomTrio:Z

    .line 35
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableWindowStateChangedAccessibilityEvent:Z

    return-void
.end method

.method private initRetainFragment()V
    .locals 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    .line 265
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-direct {v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;-><init>()V

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    .line 267
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private setWindowLayout(II)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setWindowLayout dialog has not init yet!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setWindowLayout window has not init yet!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isFinishing:Z

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    .line 209
    :cond_0
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    .line 193
    :cond_0
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public dismissWaitingDialog()V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
    .locals 2

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    .line 275
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-object v0
.end method

.method public getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
    .locals 2

    .line 279
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->parentFragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->parentFragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    .line 282
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->parentFragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-object v0
.end method

.method public getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;
    .locals 1

    .line 259
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    return-object v0
.end method

.method protected initDisableWindowStateChangedAccessibilityEvent(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableWindowStateChangedAccessibilityEvent:Z

    return-void
.end method

.method protected isDescendantOf(Ljava/lang/Class;)Z
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 307
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isFinishing()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isFinishing:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->initRetainFragment()V

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextCreated(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 47
    new-instance p1, Lus/zoom/zrc/base/app/ZRCDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableImmersiveModeForPolycomTrio:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCDialog;->setDisableImmersiveModeForPolycomTrio()V

    .line 51
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableWindowStateChangedAccessibilityEvent:Z

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCDialog;->setDisableWindowStateChangedAccessibilityEvent(Z)V

    .line 52
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 56
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const v1, 0x106000d

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onDestroy()V

    .line 107
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextDestroyed(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 287
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    .line 289
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->parentFragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 90
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onPause()V

    .line 91
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextPaused(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->screenBrightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->onPause()V

    :cond_0
    return-void
.end method

.method public onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onReceivedPropertyChangedCallback(Landroidx/databinding/Observable;I)V
    .locals 0

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onResume()V

    .line 77
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableImmersiveModeForPolycomTrio:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextResumed(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->screenBrightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->onResume()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextSaveInstanceState(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    .line 117
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 64
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onStart()V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextStarted(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x80

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    new-instance v1, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-direct {v1, v0}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;-><init>(Landroid/view/Window;)V

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->screenBrightnessHelper:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onStop()V

    .line 101
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextStopped(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method protected requestFullScreenLayout()V
    .locals 1

    const/4 v0, -0x1

    .line 164
    invoke-direct {p0, v0, v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->setWindowLayout(II)V

    return-void
.end method

.method protected requestLargeLayout()V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidthInDip(Landroid/content/Context;)F

    move-result v0

    .line 142
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeightInDip(Landroid/content/Context;)F

    move-result v1

    .line 143
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrc_dialog_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 145
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->setWindowLayout(II)V

    :cond_1
    return-void
.end method

.method protected requestLargeLayout(I)V
    .locals 4

    .line 153
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 155
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    if-ge v0, p1, :cond_0

    move p1, v0

    :cond_0
    int-to-double v0, v1

    const-wide v2, 0x3fee666666666666L    # 0.95

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->setWindowLayout(II)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->requestFullScreenLayout()V

    :goto_0
    return-void
.end method

.method protected requestWindowFeature(I)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :cond_0
    return-void
.end method

.method public safeDismiss()V
    .locals 3

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isFinishing:Z

    .line 218
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".safeDismiss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/base/app/ZRCDialogFragment$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment$1;-><init>(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method protected setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public setDisableImmersiveModeForPolycomTrio()V
    .locals 1

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment;->disableImmersiveModeForPolycomTrio:Z

    return-void
.end method

.method public showWaitingDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)V

    return-void
.end method
