.class public Lus/zoom/zrcsdk/ZRCSdk;
.super Ljava/lang/Object;
.source "ZRCSdk.java"


# static fields
.field private static instance:Lus/zoom/zrcsdk/ZRCSdk;


# instance fields
.field private isInit:Z

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;

.field private mNativeLoader:Lus/zoom/zrcsdk/NativeLoader;

.field private mPTApp:Lus/zoom/zrcsdk/PTApp;

.field private mZRCSdkContext:Lus/zoom/zrcsdk/ZRCSdkContext;

.field private webRequestOnIdleRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->isInit:Z

    .line 70
    new-instance v0, Lus/zoom/zrcsdk/ZRCSdk$1;

    invoke-direct {v0, p0}, Lus/zoom/zrcsdk/ZRCSdk$1;-><init>(Lus/zoom/zrcsdk/ZRCSdk;)V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->webRequestOnIdleRunnable:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lus/zoom/zrcsdk/PTApp;

    invoke-direct {v0}, Lus/zoom/zrcsdk/PTApp;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    .line 21
    new-instance v0, Lus/zoom/zrcsdk/ConfApp;

    invoke-direct {v0}, Lus/zoom/zrcsdk/ConfApp;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 22
    new-instance v0, Lus/zoom/zrcsdk/NativeLoader;

    invoke-direct {v0}, Lus/zoom/zrcsdk/NativeLoader;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mNativeLoader:Lus/zoom/zrcsdk/NativeLoader;

    .line 23
    new-instance v0, Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-direct {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mZRCSdkContext:Lus/zoom/zrcsdk/ZRCSdkContext;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrcsdk/ZRCSdk;)Lus/zoom/zrcsdk/PTApp;
    .locals 0

    .line 5
    iget-object p0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrcsdk/ZRCSdk;)Ljava/lang/Runnable;
    .locals 0

    .line 5
    iget-object p0, p0, Lus/zoom/zrcsdk/ZRCSdk;->webRequestOnIdleRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrcsdk/ZRCSdk;)Lus/zoom/zrcsdk/ZRCSdkContext;
    .locals 0

    .line 5
    iget-object p0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mZRCSdkContext:Lus/zoom/zrcsdk/ZRCSdkContext;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrcsdk/ZRCSdk;
    .locals 2

    const-class v0, Lus/zoom/zrcsdk/ZRCSdk;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lus/zoom/zrcsdk/ZRCSdk;->instance:Lus/zoom/zrcsdk/ZRCSdk;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lus/zoom/zrcsdk/ZRCSdk;

    invoke-direct {v1}, Lus/zoom/zrcsdk/ZRCSdk;-><init>()V

    sput-object v1, Lus/zoom/zrcsdk/ZRCSdk;->instance:Lus/zoom/zrcsdk/ZRCSdk;

    .line 31
    :cond_0
    sget-object v1, Lus/zoom/zrcsdk/ZRCSdk;->instance:Lus/zoom/zrcsdk/ZRCSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public changeDomain(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->changeWebDomainTo(Ljava/lang/String;)V

    return-void
.end method

.method public currentDomain()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getWebDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfApp()Lus/zoom/zrcsdk/ConfApp;
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    return-object v0
.end method

.method public getPTApp()Lus/zoom/zrcsdk/PTApp;
    .locals 1

    .line 79
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    return-object v0
.end method

.method public getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;
    .locals 1

    .line 87
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mZRCSdkContext:Lus/zoom/zrcsdk/ZRCSdkContext;

    return-object v0
.end method

.method public declared-synchronized init(Lus/zoom/zrcsdk/ContextImp;Lus/zoom/zrcsdk/HandlerImp;Lus/zoom/zrcsdk/HandlerImp;)V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 36
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 39
    :try_start_1
    iput-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->isInit:Z

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mZRCSdkContext:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/ZRCSdkContext;->init(Lus/zoom/zrcsdk/ContextImp;Lus/zoom/zrcsdk/HandlerImp;Lus/zoom/zrcsdk/HandlerImp;)V

    .line 42
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/PTApp;->init()V

    .line 43
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdk;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ConfApp;->init()V

    .line 44
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/CallBackUI;->init()V

    .line 45
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdk;->mNativeLoader:Lus/zoom/zrcsdk/NativeLoader;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/NativeLoader;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initForLoggingProcess()V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mNativeLoader:Lus/zoom/zrcsdk/NativeLoader;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/NativeLoader;->init()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->isInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initNativeCrashHandler(ZLjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-static {p1, p2}, Lus/zoom/zrcsdk/stability/NativeCrashHandler;->installNativeCrashHandler(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initNativeModules()V
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->initNative()V

    .line 51
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdk;->mZRCSdkContext:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/CallBackUI;->initNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->initNative()V

    .line 53
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk;->webRequestOnIdleRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
