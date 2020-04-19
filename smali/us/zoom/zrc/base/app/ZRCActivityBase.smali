.class public Lus/zoom/zrc/base/app/ZRCActivityBase;
.super Lus/zoom/androidlib/app/ZMActivity;
.source "ZRCActivityBase.java"

# interfaces
.implements Lus/zoom/zrc/base/app/IZRCUIElement;


# instance fields
.field private fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

.field private retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;-><init>()V

    return-void
.end method

.method private initRetainFragment()V
    .locals 3

    .line 81
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

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    .line 83
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-direct {v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;-><init>()V

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    .line 85
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
    .locals 2

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    .line 93
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->fragmentManagerHelper:Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    return-object v0
.end method

.method public getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCActivityBase;->retainFragment:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    return-object v0
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->dispatchFragmentAttached(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->initRetainFragment()V

    .line 23
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextCreated(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 52
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onDestroy()V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextDestroyed(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 40
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onPause()V

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

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

.method protected onResume()V
    .locals 1

    .line 34
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onResume()V

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextResumed(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextSaveInstanceState(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    .line 63
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 28
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onStart()V

    .line 29
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextStarted(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 46
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onStop()V

    .line 47
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCActivityBase;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onContextStopped(Lus/zoom/zrc/base/app/IZRCUIElement;)V

    return-void
.end method
