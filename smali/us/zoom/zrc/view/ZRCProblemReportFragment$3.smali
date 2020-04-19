.class Lus/zoom/zrc/view/ZRCProblemReportFragment$3;
.super Landroid/text/style/ClickableSpan;
.source "ZRCProblemReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCProblemReportFragment;->setAgreeText()V
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

    .line 303
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPolicyFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 313
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->access$100(Lus/zoom/zrc/view/ZRCProblemReportFragment;)Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setBackgroundColor(I)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;->this$0:Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
