.class public Lus/zoom/androidlib/app/ForegroundTaskManager;
.super Ljava/lang/Object;
.source "ForegroundTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ForegroundTaskManager"

.field private static instance:Lus/zoom/androidlib/app/ForegroundTaskManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTaskQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ForegroundTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ForegroundTaskManager;Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/app/ForegroundTaskManager;->executeTask(Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/androidlib/app/ForegroundTaskManager;)Ljava/util/ArrayList;
    .locals 0

    .line 9
    iget-object p0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method private executeTask(Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 0

    .line 145
    invoke-virtual {p1, p2}, Lus/zoom/androidlib/app/ForegroundTask;->run(Lus/zoom/androidlib/app/ZMActivity;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;
    .locals 2

    const-class v0, Lus/zoom/androidlib/app/ForegroundTaskManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lus/zoom/androidlib/app/ForegroundTaskManager;->instance:Lus/zoom/androidlib/app/ForegroundTaskManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lus/zoom/androidlib/app/ForegroundTaskManager;

    invoke-direct {v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;-><init>()V

    sput-object v1, Lus/zoom/androidlib/app/ForegroundTaskManager;->instance:Lus/zoom/androidlib/app/ForegroundTaskManager;

    .line 22
    :cond_0
    sget-object v1, Lus/zoom/androidlib/app/ForegroundTaskManager;->instance:Lus/zoom/androidlib/app/ForegroundTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private runQueuedTasks(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    :goto_0
    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 124
    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/app/ForegroundTask;

    .line 126
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ForegroundTask;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/app/ForegroundTask;->isValidActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0, v1, p1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->executeTask(Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object p1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private runQueuedTasksOnAnotherProcess(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :goto_0
    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 103
    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/app/ForegroundTask;

    .line 105
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ForegroundTask;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ForegroundTask;->isOtherProcessSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Lus/zoom/androidlib/app/ForegroundTask;->isValidActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, v1, v2}, Lus/zoom/androidlib/app/ForegroundTaskManager;->executeTask(Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V

    goto :goto_0

    .line 109
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_4
    iget-object p1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateTask(Lus/zoom/androidlib/app/ForegroundTask;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/app/ForegroundTask;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ForegroundTask;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lus/zoom/androidlib/app/ForegroundTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ForegroundTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public containsTask(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/app/ForegroundTask;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lus/zoom/androidlib/app/ForegroundTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onActivityMoveToFront(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runQueuedTasks(Lus/zoom/androidlib/app/ZMActivity;)V

    return-void
.end method

.method public onAnotherProcessMoveToFront(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runQueuedTasksOnAnotherProcess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeTask(Lus/zoom/androidlib/app/ForegroundTask;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lus/zoom/androidlib/app/ForegroundTask;->isValidActivity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    :cond_1
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ForegroundTask;->isOtherProcessSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ForegroundTask;->hasAnotherProcessAtFront()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ForegroundTask;->isOtherProcessSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ForegroundTask;->hasAnotherProcessAtFront()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->executeTask(Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V

    return-void

    .line 49
    :cond_3
    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lus/zoom/androidlib/app/ForegroundTaskManager$1;

    invoke-direct {v2, p0, v0, p1}, Lus/zoom/androidlib/app/ForegroundTaskManager$1;-><init>(Lus/zoom/androidlib/app/ForegroundTaskManager;Lus/zoom/androidlib/app/ZMActivity;Lus/zoom/androidlib/app/ForegroundTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 37
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ForegroundTask;->isMultipleInstancesAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->updateTask(Lus/zoom/androidlib/app/ForegroundTask;)V

    goto :goto_1

    .line 40
    :cond_5
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
