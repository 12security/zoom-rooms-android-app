.class public Lus/zoom/zrc/logging/ZRCAppLogger;
.super Ljava/lang/Object;
.source "ZRCAppLogger.java"

# interfaces
.implements Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;
    }
.end annotation


# static fields
.field private static instance:Lus/zoom/zrc/logging/ZRCAppLogger; = null

.field private static logDestination:I = 0x1

.field private static logFolder:Ljava/lang/String; = null

.field private static logLevel:I = 0x1


# instance fields
.field private androidLibLogger:Lus/zoom/androidlib/util/ILogger;

.field private bindingLogService:Z

.field private clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

.field private logService:Lus/zoom/zrc/logging/IZRCLogService;

.field private logServiceConnection:Landroid/content/ServiceConnection;

.field private pendingLogMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;",
            ">;"
        }
    .end annotation
.end field

.field private zrcLogger:Lus/zoom/zrcsdk/util/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lus/zoom/zrc/logging/ZRCAppLogger$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/logging/ZRCAppLogger$1;-><init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V

    iput-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logServiceConnection:Landroid/content/ServiceConnection;

    .line 68
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->pendingLogMessages:Ljava/util/List;

    .line 84
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->getInstance()Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->getClientLogger()Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    return-void
.end method

.method static synthetic access$002(Lus/zoom/zrc/logging/ZRCAppLogger;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->bindingLogService:Z

    return p1
.end method

.method static synthetic access$102(Lus/zoom/zrc/logging/ZRCAppLogger;Lus/zoom/zrc/logging/IZRCLogService;)Lus/zoom/zrc/logging/IZRCLogService;
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logService:Lus/zoom/zrc/logging/IZRCLogService;

    return-object p1
.end method

.method static synthetic access$200(Lus/zoom/zrc/logging/ZRCAppLogger;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->flushPendingLogMessages()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/logging/ZRCAppLogger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrc/logging/ZRCAppLogger;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/logging/ZRCAppLogger;)I
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->getLevel()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/logging/ZRCAppLogger;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->getLogFolder()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/logging/ZRCAppLogger;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->forceFlush()V

    return-void
.end method

.method private bindLogService()V
    .locals 4

    .line 193
    iget-boolean v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->bindingLogService:Z

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    :try_start_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lus/zoom/zrc/logging/ZRCLogService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v2, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/ZRCApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 201
    iput-boolean v3, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->bindingLogService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private flushPendingLogMessages()V
    .locals 5

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logService:Lus/zoom/zrc/logging/IZRCLogService;

    if-eqz v0, :cond_1

    .line 278
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->pendingLogMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->pendingLogMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;

    .line 280
    iget-object v2, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logService:Lus/zoom/zrc/logging/IZRCLogService;

    iget v3, v1, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;->severity:I

    const-string v4, ""

    iget-object v1, v1, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;->content:[B

    invoke-interface {v2, v3, v4, v1}, Lus/zoom/zrc/logging/IZRCLogService;->printLog(ILjava/lang/String;[B)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->pendingLogMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->bindLogService()V

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private forceFlush()V
    .locals 1

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logService:Lus/zoom/zrc/logging/IZRCLogService;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    invoke-interface {v0}, Lus/zoom/zrc/logging/IZRCLogService;->forceFlushLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->bindLogService()V

    :catch_0
    :goto_0
    return-void
.end method

.method private getAndroidLibLogger()Lus/zoom/androidlib/util/ILogger;
    .locals 1

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->androidLibLogger:Lus/zoom/androidlib/util/ILogger;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lus/zoom/zrc/logging/ZRCAppLogger$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/logging/ZRCAppLogger$2;-><init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V

    iput-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->androidLibLogger:Lus/zoom/androidlib/util/ILogger;

    .line 151
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->androidLibLogger:Lus/zoom/androidlib/util/ILogger;

    return-object v0
.end method

.method public static getInstance()Lus/zoom/zrc/logging/ZRCAppLogger;
    .locals 1

    .line 77
    sget-object v0, Lus/zoom/zrc/logging/ZRCAppLogger;->instance:Lus/zoom/zrc/logging/ZRCAppLogger;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-direct {v0}, Lus/zoom/zrc/logging/ZRCAppLogger;-><init>()V

    sput-object v0, Lus/zoom/zrc/logging/ZRCAppLogger;->instance:Lus/zoom/zrc/logging/ZRCAppLogger;

    .line 80
    :cond_0
    sget-object v0, Lus/zoom/zrc/logging/ZRCAppLogger;->instance:Lus/zoom/zrc/logging/ZRCAppLogger;

    return-object v0
.end method

.method private getLevel()I
    .locals 1

    .line 210
    sget v0, Lus/zoom/zrc/logging/ZRCAppLogger;->logLevel:I

    return v0
.end method

.method private getLogFolder()Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lus/zoom/zrc/logging/ZRCAppLogger;->logFolder:Ljava/lang/String;

    return-object v0
.end method

.method private getZrcLogger()Lus/zoom/zrcsdk/util/ILogger;
    .locals 1

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->zrcLogger:Lus/zoom/zrcsdk/util/ILogger;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lus/zoom/zrc/logging/ZRCAppLogger$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/logging/ZRCAppLogger$3;-><init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V

    iput-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->zrcLogger:Lus/zoom/zrcsdk/util/ILogger;

    .line 189
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->zrcLogger:Lus/zoom/zrcsdk/util/ILogger;

    return-object v0
.end method

.method private handleLogMessage(ILjava/lang/String;[B)V
    .locals 1

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logService:Lus/zoom/zrc/logging/IZRCLogService;

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lus/zoom/zrc/logging/IZRCLogService;->printLog(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->bindLogService()V

    .line 269
    :catch_0
    new-instance p2, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;-><init>(Lus/zoom/zrc/logging/ZRCAppLogger;Lus/zoom/zrc/logging/ZRCAppLogger$1;)V

    .line 270
    iput p1, p2, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;->severity:I

    .line 271
    iput-object p3, p2, Lus/zoom/zrc/logging/ZRCAppLogger$PendingLogMessage;->content:[B

    .line 272
    iget-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->pendingLogMessages:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initLogFolder(Ljava/lang/String;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/logs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 124
    :goto_1
    sput-object p1, Lus/zoom/zrc/logging/ZRCAppLogger;->logFolder:Ljava/lang/String;

    return-void
.end method

.method private printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 220
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    .line 223
    array-length p4, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    .line 224
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 88
    invoke-static {}, Lcom/zipow/cmmlib/AppUtil;->getLogParentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->initLogFolder(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logService:Lus/zoom/zrc/logging/IZRCLogService;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->bindLogService()V

    const-string v0, "ZRCLog"

    const-string v1, "ZRCAppLogger:init bindService..."

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->setNativeCallback(Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;)V

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    sget v1, Lus/zoom/zrc/logging/ZRCAppLogger;->logLevel:I

    sget v2, Lus/zoom/zrc/logging/ZRCAppLogger;->logDestination:I

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->init(II)V

    .line 98
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->getZrcLogger()Lus/zoom/zrcsdk/util/ILogger;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/ZRCLog;->setLogger(Lus/zoom/zrcsdk/util/ILogger;)V

    .line 99
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCAppLogger;->getAndroidLibLogger()Lus/zoom/androidlib/util/ILogger;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMLog;->setLogger(Lus/zoom/androidlib/util/ILogger;)V

    return-void
.end method

.method public onNativeLogCallback(ILjava/lang/String;II[B)V
    .locals 0

    const-string p2, ""

    .line 252
    invoke-direct {p0, p1, p2, p5}, Lus/zoom/zrc/logging/ZRCAppLogger;->handleLogMessage(ILjava/lang/String;[B)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->clientLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->release()V

    .line 105
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lus/zoom/zrc/logging/ZRCAppLogger;->logServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
