.class public abstract Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;
.super Landroidx/lifecycle/ViewModel;
.source "ZRCUIEventDispatcher.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/app/ZRCUIEventDispatcher$ZRCActiveUIElementFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lus/zoom/androidlib/util/IUIElement;",
        ">",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# instance fields
.field private eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

.field private myUI:Lus/zoom/androidlib/util/IUIElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager;

    invoke-direct {v0}, Lus/zoom/androidlib/util/EventTaskManager;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    .line 40
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    return-void
.end method

.method public static get(Lus/zoom/androidlib/util/IUIElement;Ljava/lang/Class;)Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;
    .locals 3
    .param p0    # Lus/zoom/androidlib/util/IUIElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;",
            ">(",
            "Lus/zoom/androidlib/util/IUIElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    new-instance v0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher$ZRCActiveUIElementFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher$ZRCActiveUIElementFactory;-><init>(Lus/zoom/androidlib/util/IUIElement;Lus/zoom/zrc/base/app/ZRCUIEventDispatcher$1;)V

    .line 30
    instance-of v1, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 31
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;

    return-object p0

    .line 32
    :cond_0
    instance-of v1, p0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 33
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;

    return-object p0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not support "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V
    .locals 1
    .param p1    # Lus/zoom/androidlib/util/EventAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public getUI()Lus/zoom/androidlib/util/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    return-object v0
.end method

.method public isUIActive()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->isUIActive()Z

    move-result v0

    return v0
.end method

.method protected onCleared()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->destroy()V

    return-void
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    check-cast p1, Lus/zoom/androidlib/util/IUIElement;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onUICreated(Lus/zoom/androidlib/util/IUIElement;)V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onCreate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onUIDestroyed(Lus/zoom/androidlib/util/IUIElement;)V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/EventTaskManager;->onPause(Lus/zoom/androidlib/util/IUIElement;)V

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 96
    check-cast p1, Lus/zoom/androidlib/util/IUIElement;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/EventTaskManager;->onResume(Lus/zoom/androidlib/util/IUIElement;)V

    .line 98
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 84
    check-cast p1, Lus/zoom/androidlib/util/IUIElement;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/EventTaskManager;->onStart(Lus/zoom/androidlib/util/IUIElement;)V

    .line 86
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/EventTaskManager;->onStop(Lus/zoom/androidlib/util/IUIElement;)V

    .line 123
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onStop()V

    :cond_0
    return-void
.end method

.method public onUICreated(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    .line 53
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onUIDestroyed(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->myUI:Lus/zoom/androidlib/util/IUIElement;

    if-ne v0, p1, :cond_0

    .line 63
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v1, v0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 65
    :cond_0
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method
