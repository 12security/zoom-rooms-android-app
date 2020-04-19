.class public final Lus/zoom/androidlib/util/EventTaskManager;
.super Ljava/lang/Object;
.source "EventTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/EventTaskManager$EventTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventTaskManager"


# instance fields
.field private mCachedTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lus/zoom/androidlib/util/EventTaskManager$EventTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mUI:Lus/zoom/androidlib/util/IUIElement;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mDestroyed:Z

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/EventTaskManager;Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/EventTaskManager;->pushOnUiThread(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private cacheTask(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 1

    .line 125
    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager$EventTask;

    invoke-direct {v0, p0, p1, p2}, Lus/zoom/androidlib/util/EventTaskManager$EventTask;-><init>(Lus/zoom/androidlib/util/EventTaskManager;Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/EventTaskManager;->removePrevUniqueTask(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    .line 128
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private executeCachedTasks()V
    .locals 2

    .line 149
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/util/EventTaskManager$EventTask;

    .line 150
    iget-object v1, v1, Lus/zoom/androidlib/util/EventTaskManager$EventTask;->action:Lus/zoom/androidlib/util/EventAction;

    invoke-direct {p0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->executeTask(Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method private executeTask(Lus/zoom/androidlib/util/EventAction;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/EventAction;->run(Lus/zoom/androidlib/util/IUIElement;)V

    return-void
.end method

.method private push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 80
    :cond_0
    iget-boolean v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mDestroyed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_2

    .line 87
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/EventTaskManager;->pushOnUiThread(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object p3, p0, Lus/zoom/androidlib/util/EventTaskManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager$1;

    invoke-direct {v0, p0, p1, p2}, Lus/zoom/androidlib/util/EventTaskManager$1;-><init>(Lus/zoom/androidlib/util/EventTaskManager;Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private pushOnUiThread(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/util/EventTaskManager;->isUIActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventTaskManager;->executeTask(Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/EventTaskManager;->cacheTask(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    :goto_0
    return-void
.end method

.method private removePrevUniqueTask(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 138
    :goto_0
    iget-object v1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/util/EventTaskManager$EventTask;

    .line 140
    iget-object v1, v1, Lus/zoom/androidlib/util/EventTaskManager$EventTask;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mDestroyed:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    return-void
.end method

.method public hasPendingTask()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mCachedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUIActive()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    return-void
.end method

.method public onResume(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lus/zoom/androidlib/util/EventTaskManager;->mDestroyed:Z

    .line 36
    iput-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    .line 37
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventTaskManager;->executeCachedTasks()V

    return-void
.end method

.method public onStart(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    return-void
.end method

.method public onStop(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    return-void
.end method

.method public onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager;->mUI:Lus/zoom/androidlib/util/IUIElement;

    return-void
.end method

.method public push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;Z)V

    return-void
.end method

.method public push(Lus/zoom/androidlib/util/EventAction;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v0, p1, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;Z)V

    return-void
.end method

.method public pushLater(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;Z)V

    return-void
.end method

.method public pushLater(Lus/zoom/androidlib/util/EventAction;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0, v0, p1, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;Z)V

    return-void
.end method
