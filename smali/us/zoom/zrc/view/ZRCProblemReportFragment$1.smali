.class Lus/zoom/zrc/view/ZRCProblemReportFragment$1;
.super Ljava/lang/Object;
.source "ZRCProblemReportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCProblemReportFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCProblemReportFragment;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$1;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 186
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$1;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$1;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->access$000(Lus/zoom/zrc/view/ZRCProblemReportFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
