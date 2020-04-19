.class public Lcom/zipow/cmmlib/CmmTimer;
.super Ljava/lang/Object;
.source "CmmTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CmmTimer"

.field private static sExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private mNativeCaller:Ljava/lang/Runnable;

.field private mNativeTimerProc:J

.field private mTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mNativeTimerProc:J

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    new-instance v0, Lcom/zipow/cmmlib/CmmTimer$1;

    invoke-direct {v0, p0}, Lcom/zipow/cmmlib/CmmTimer$1;-><init>(Lcom/zipow/cmmlib/CmmTimer;)V

    iput-object v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mNativeCaller:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/zipow/cmmlib/CmmTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mNativeTimerProc:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/zipow/cmmlib/CmmTimer;JLcom/zipow/cmmlib/CmmTimer;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/zipow/cmmlib/CmmTimer;->callNativeTimerProc(JLcom/zipow/cmmlib/CmmTimer;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/zipow/cmmlib/CmmTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zipow/cmmlib/CmmTimer;)Ljava/lang/Runnable;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zipow/cmmlib/CmmTimer;->mNativeCaller:Ljava/lang/Runnable;

    return-object p0
.end method

.method private native callNativeTimerProc(JLcom/zipow/cmmlib/CmmTimer;)V
.end method


# virtual methods
.method public killTimer()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 66
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mTimer:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setTimer(JJ)V
    .locals 8

    .line 41
    const-class v0, Lcom/zipow/cmmlib/CmmTimer;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/zipow/cmmlib/CmmTimer;->sExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/zipow/cmmlib/CmmTimer;->sExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/zipow/cmmlib/CmmTimer;->mTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    return-void

    .line 50
    :cond_1
    iput-wide p3, p0, Lcom/zipow/cmmlib/CmmTimer;->mNativeTimerProc:J

    .line 52
    sget-object v1, Lcom/zipow/cmmlib/CmmTimer;->sExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/zipow/cmmlib/CmmTimer$2;

    invoke-direct {v2, p0}, Lcom/zipow/cmmlib/CmmTimer$2;-><init>(Lcom/zipow/cmmlib/CmmTimer;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p1

    move-wide v5, p1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/zipow/cmmlib/CmmTimer;->mTimer:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
