.class Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;
.super Ljava/lang/Object;
.source "ProblemReportSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/ProblemReportSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportItemInfo"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field email:Ljava/lang/String;

.field id:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lus/zoom/zrc/utils/ProblemReportSender;

.field zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/ProblemReportSender;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->this$0:Lus/zoom/zrc/utils/ProblemReportSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
