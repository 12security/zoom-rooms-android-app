.class public Lus/zoom/zrcsdk/util/ZRCNativeLogger;
.super Ljava/lang/Object;
.source "ZRCNativeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;,
        Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;,
        Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lus/zoom/zrcsdk/util/ZRCNativeLogger;


# instance fields
.field private clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

.field private serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrcsdk/util/ZRCNativeLogger;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeClientInit(II)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeClientRelease()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrcsdk/util/ZRCNativeLogger;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeClientPrintLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrcsdk/util/ZRCNativeLogger;JI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeServerInit(JI)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeServerRelease()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrcsdk/util/ZRCNativeLogger;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeServerPrintLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->nativeServerForceFlush()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrcsdk/util/ZRCNativeLogger;
    .locals 2

    const-class v0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->sInstance:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-direct {v1}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;-><init>()V

    sput-object v1, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->sInstance:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    .line 88
    :cond_0
    sget-object v1, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->sInstance:Lus/zoom/zrcsdk/util/ZRCNativeLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeClientInit(II)V
.end method

.method private native nativeClientPrintLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeClientRelease()V
.end method

.method private native nativeServerForceFlush()V
.end method

.method private native nativeServerInit(JI)V
.end method

.method private native nativeServerPrintLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeServerRelease()V
.end method


# virtual methods
.method public getClientLogger()Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;
    .locals 1

    .line 92
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    invoke-direct {v0, p0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;-><init>(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V

    iput-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    .line 95
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    return-object v0
.end method

.method public getServerLogger()Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;
    .locals 1

    .line 99
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    invoke-direct {v0, p0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;-><init>(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V

    iput-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    .line 102
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    return-object v0
.end method

.method public onNativeLogCallback(ILjava/lang/String;II[B)V
    .locals 9

    .line 108
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;-><init>(Lus/zoom/zrcsdk/util/ZRCNativeLogger;ILjava/lang/String;II[B)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
