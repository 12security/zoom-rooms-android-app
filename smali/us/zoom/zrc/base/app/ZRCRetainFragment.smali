.class public Lus/zoom/zrc/base/app/ZRCRetainFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZRCRetainFragment.java"


# instance fields
.field private activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

.field public cachedObj:Ljava/lang/Object;

.field private eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

.field private myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

.field private notification:Lus/zoom/zrc/base/notification/INotification;

.field private observables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/databinding/BaseObservable;",
            ">;"
        }
    .end annotation
.end field

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->observables:Ljava/util/Set;

    .line 30
    new-instance v0, Lus/zoom/zrc/base/app/ZRCRetainFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment$1;-><init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 38
    new-instance v0, Lus/zoom/zrc/base/app/ZRCRetainFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/app/ZRCRetainFragment$2;-><init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->notification:Lus/zoom/zrc/base/notification/INotification;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->setRetainInstance(Z)V

    .line 47
    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager;

    invoke-direct {v0}, Lus/zoom/androidlib/util/EventTaskManager;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    .line 48
    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager;

    invoke-direct {v0}, Lus/zoom/androidlib/util/EventTaskManager;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/app/ZRCRetainFragment;Landroidx/databinding/Observable;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onReceivedPropertyChanged(Landroidx/databinding/Observable;I)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/app/ZRCRetainFragment;Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/app/ZRCRetainFragment;)Lus/zoom/zrc/base/app/IZRCUIElement;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    return-object p0
.end method

.method private onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment$5;

    const-string v2, "onReceivedNotification"

    invoke-direct {v1, p0, v2, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment$5;-><init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;Ljava/lang/String;Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment$6;

    const-string v2, "onReceivedNotificationInActive"

    invoke-direct {v1, p0, v2, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment$6;-><init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;Ljava/lang/String;Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onReceivedPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 3

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment$3;

    const-string v2, "onReceivedPropertyChangedCallback"

    invoke-direct {v1, p0, v2, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment$3;-><init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;Ljava/lang/String;Landroidx/databinding/Observable;I)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    new-instance v1, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;

    const-string v2, "onReceivedPropertyChangedCallbackInActive"

    invoke-direct {v1, p0, v2, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;-><init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;Ljava/lang/String;Landroidx/databinding/Observable;I)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method


# virtual methods
.method onContextCreated(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onResume(Lus/zoom/androidlib/util/IUIElement;)V

    .line 66
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    return-void
.end method

.method onContextDestroyed(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    if-ne v0, p1, :cond_0

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onPause(Lus/zoom/androidlib/util/IUIElement;)V

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    :cond_0
    return-void
.end method

.method onContextPaused(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onPause(Lus/zoom/androidlib/util/IUIElement;)V

    return-void
.end method

.method onContextResumed(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onResume(Lus/zoom/androidlib/util/IUIElement;)V

    .line 76
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    return-void
.end method

.method onContextSaveInstanceState(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    return-void
.end method

.method onContextStarted(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onStart(Lus/zoom/androidlib/util/IUIElement;)V

    .line 71
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    return-void
.end method

.method onContextStopped(Lus/zoom/zrc/base/app/IZRCUIElement;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->onStop(Lus/zoom/androidlib/util/IUIElement;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->observables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/BaseObservable;

    .line 55
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v1, v2}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->eventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->destroy()V

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->activeEventTaskManager:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->destroy()V

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->observables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 61
    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->myUI:Lus/zoom/zrc/base/app/IZRCUIElement;

    return-void
.end method

.method public varargs registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 105
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 109
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v3

    iget-object v4, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->notification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v3, p0, v2, v4}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->notification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    :cond_2
    return-void
.end method

.method public registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment;->observables:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
