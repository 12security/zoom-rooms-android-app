.class Lus/zoom/zrc/view/ZRCProblemReportFragment$2;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRCProblemReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCProblemReportFragment;->onSendEmailResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCProblemReportFragment;Ljava/lang/String;I)V
    .locals 0

    .line 268
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    iput p3, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;->val$result:I

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->dismissWaitingDialog()V

    .line 272
    iget p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;->val$result:I

    if-nez p1, :cond_0

    .line 273
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->dismiss()V

    :cond_0
    return-void
.end method
