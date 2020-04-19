.class Lus/zoom/zrc/utils/ProblemReportSender$2;
.super Ljava/lang/Object;
.source "ProblemReportSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/ProblemReportSender;->sendProblemReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/ProblemReportSender;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$logFolder:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/ProblemReportSender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->this$0:Lus/zoom/zrc/utils/ProblemReportSender;

    iput-object p2, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$logFolder:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$email:Ljava/lang/String;

    iput-object p5, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$subject:Ljava/lang/String;

    iput-object p6, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 87
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$logFolder:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/Util;->createZipFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->this$0:Lus/zoom/zrc/utils/ProblemReportSender;

    invoke-static {v1}, Lus/zoom/zrc/utils/ProblemReportSender;->access$000(Lus/zoom/zrc/utils/ProblemReportSender;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 90
    new-instance v2, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;

    iget-object v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->this$0:Lus/zoom/zrc/utils/ProblemReportSender;

    invoke-direct {v2, v3}, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;-><init>(Lus/zoom/zrc/utils/ProblemReportSender;)V

    .line 91
    iget-object v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lus/zoom/zrc/utils/Util;->createCaseID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$id:Ljava/lang/String;

    :goto_0
    iput-object v3, v2, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->id:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$email:Ljava/lang/String;

    iput-object v3, v2, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->email:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$subject:Ljava/lang/String;

    iput-object v3, v2, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->subject:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->val$body:Ljava/lang/String;

    iput-object v3, v2, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->body:Ljava/lang/String;

    .line 95
    iput-object v0, v2, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->zipFile:Ljava/io/File;

    .line 96
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/utils/ProblemReportSender$2;->this$0:Lus/zoom/zrc/utils/ProblemReportSender;

    invoke-static {v0}, Lus/zoom/zrc/utils/ProblemReportSender;->access$000(Lus/zoom/zrc/utils/ProblemReportSender;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
