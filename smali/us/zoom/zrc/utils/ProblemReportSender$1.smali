.class Lus/zoom/zrc/utils/ProblemReportSender$1;
.super Ljava/lang/Object;
.source "ProblemReportSender.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/ProblemReportSender;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/ProblemReportSender;

.field final synthetic val$shouldNotifyZR:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/ProblemReportSender;Z)V
    .locals 0

    .line 39
    iput-object p1, p0, Lus/zoom/zrc/utils/ProblemReportSender$1;->this$0:Lus/zoom/zrc/utils/ProblemReportSender;

    iput-boolean p2, p0, Lus/zoom/zrc/utils/ProblemReportSender$1;->val$shouldNotifyZR:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->zipFile:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    iget-object v2, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/AppModel;->setLogfilePath(Ljava/lang/String;)V

    move-object v9, v0

    .line 50
    :goto_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlicensed_room:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "from"

    .line 54
    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "ZRP Android - "

    const-string v1, "Scheduling Display"

    goto :goto_1

    :cond_2
    const-string v0, "ZRC Android - "

    const-string v1, "Controller"

    .line 65
    :goto_1
    iget-object v2, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->body:Ljava/lang/String;

    .line 66
    iget-boolean v3, p0, Lus/zoom/zrc/utils/ProblemReportSender$1;->val$shouldNotifyZR:Z

    if-nez v3, :cond_3

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Version: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v2

    .line 71
    :goto_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v3

    iget-object v4, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->id:Ljava/lang/String;

    iget-object v5, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->email:Ljava/lang/String;

    const-string v6, "zoom.us"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->subject:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v3 .. v10}, Lus/zoom/zrcsdk/PTApp;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)Z

    .line 73
    iget-boolean v0, p0, Lus/zoom/zrc/utils/ProblemReportSender$1;->val$shouldNotifyZR:Z

    if-eqz v0, :cond_4

    .line 74
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget-object v1, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->email:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->subject:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->body:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrc/utils/ProblemReportSender$ReportItemInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lus/zoom/zrcsdk/PTApp;->sendZoomRoomsProblemReportTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
