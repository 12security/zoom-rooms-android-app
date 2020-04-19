.class Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;
.super Landroid/text/style/ClickableSpan;
.source "LoginJoinOnlyModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->setupEnterLicenseKey(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;->this$0:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;->this$0:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->access$200(Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;->this$0:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment$3;->this$0:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
