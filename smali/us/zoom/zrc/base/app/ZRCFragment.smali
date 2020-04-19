.class public Lus/zoom/zrc/base/app/ZRCFragment;
.super Lus/zoom/androidlib/app/ZMFragment;
.source "ZRCFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/app/IZRCUIElement;


# instance fields
.field private fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

.field private retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;-><init>()V

    return-void
.end method

.method private initRetainFragment()V
    .locals 3

    .line 117
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

    .line 118
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    .line 119
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-direct {v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;-><init>()V

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissWaitingDialog()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
    .locals 2

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    .line 129
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-object v0
.end method

.method public getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;
    .locals 1

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragment;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->initRetainFragment()V

    .line 26
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextCreated(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    .line 71
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->isFragmentAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance p1, Lus/zoom/zrc/base/app/ZRCFragment$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/app/ZRCFragment$1;-><init>(Lus/zoom/zrc/base/app/ZRCFragment;)V

    const-wide/16 p2, 0x0

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lus/zoom/androidlib/app/ZMFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 55
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onDestroy()V

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextDestroyed(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 134
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onDetach()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragment;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 43
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onPause()V

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextPaused(Lus/zoom/zrc/base/app/IZRCUIElement;)V

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

    .line 37
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextResumed(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextSaveInstanceState(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    .line 66
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 31
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onStart()V

    .line 32
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextStarted(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 49
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onStop()V

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextStopped(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method public showWaitingDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)V

    return-void
.end method
