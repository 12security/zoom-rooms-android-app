.class public Lus/zoom/zrc/utils/ProblemReportSender;
.super Ljava/lang/Object;
.source "ProblemReportSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;
    }
.end annotation


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lus/zoom/zrc/utils/ProblemReportSender;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/ProblemReportSender;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/utils/ProblemReportSender$1;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/utils/ProblemReportSender$1;-><init>(Lus/zoom/zrc/utils/ProblemReportSender;Z)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lus/zoom/zrc/utils/ProblemReportSender;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/utils/ProblemReportSender;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/utils/ProblemReportSender;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static sendZRCOnly()Lus/zoom/zrc/utils/ProblemReportSender;
    .locals 2

    .line 32
    new-instance v0, Lus/zoom/zrc/utils/ProblemReportSender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lus/zoom/zrc/utils/ProblemReportSender;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public sendProblemReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 82
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->forceFlush()V

    .line 83
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getLogFolder()Ljava/lang/String;

    move-result-object v2

    .line 84
    sget-object v7, Lus/zoom/zrc/utils/ProblemReportSender;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lus/zoom/zrc/utils/ProblemReportSender$2;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lus/zoom/zrc/utils/ProblemReportSender$2;-><init>(Lus/zoom/zrc/utils/ProblemReportSender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
