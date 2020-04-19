.class public Lus/zoom/zrc/logging/ZRCLogService;
.super Landroid/app/Service;
.source "ZRCLogService.java"


# static fields
.field private static final MAX_LOG_FILE_COUNT:I = 0x5

.field private static final MAX_LOG_FILE_SIZE:J = 0x500000L


# instance fields
.field private serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->getInstance()Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->getServerLogger()Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/logging/ZRCLogService;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/logging/ZRCLogService;ILjava/lang/String;[B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/logging/ZRCLogService;->handlePrintLog(ILjava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/logging/ZRCLogService;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCLogService;->handleForceFlushLog()V

    return-void
.end method

.method private handleForceFlushLog()V
    .locals 1

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCLogService;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->forceFlush()V

    return-void
.end method

.method private handlePrintLog(ILjava/lang/String;[B)V
    .locals 2

    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 75
    iget-object p3, p0, Lus/zoom/zrc/logging/ZRCLogService;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    invoke-virtual {p3, p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 24
    new-instance p1, Lus/zoom/zrc/logging/ZRCLogService$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/logging/ZRCLogService$1;-><init>(Lus/zoom/zrc/logging/ZRCLogService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCLogService;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    const-wide/32 v1, 0x500000

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->init(JI)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/logging/ZRCLogService;->handleForceFlushLog()V

    .line 61
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCLogService;->serverLogger:Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->release()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
