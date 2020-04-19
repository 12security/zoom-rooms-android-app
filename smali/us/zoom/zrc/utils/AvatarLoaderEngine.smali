.class public Lus/zoom/zrc/utils/AvatarLoaderEngine;
.super Ljava/lang/Object;
.source "AvatarLoaderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/AvatarLoaderEngine$DefaultThreadFactory;
    }
.end annotation


# static fields
.field public static AVATAR_DIRECTORY:Ljava/lang/String; = null

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x5

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x3

.field private static taskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final pauseLock:Ljava/lang/Object;

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uriLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zipow/cmmlib/AppUtil;->getLogParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->AVATAR_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->pauseLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->uriLocks:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/io/File;

    sget-object v1, Lus/zoom/zrc/utils/AvatarLoaderEngine;->AVATAR_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x3

    .line 40
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->createExecutor(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private createExecutor(II)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 44
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 45
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v0, "zrc-pool-"

    invoke-direct {p0, p2, v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const-wide/16 v3, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method private createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 49
    new-instance v0, Lus/zoom/zrc/utils/AvatarLoaderEngine$DefaultThreadFactory;

    invoke-direct {v0, p1, p2}, Lus/zoom/zrc/utils/AvatarLoaderEngine$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    .line 57
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 60
    iget-object v1, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPauseLock()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPaused()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public submit(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)V
    .locals 1

    .line 53
    sget-object v0, Lus/zoom/zrc/utils/AvatarLoaderEngine;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
