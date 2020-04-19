.class Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;
.super Landroid/text/style/ClickableSpan;
.source "LoginNetworkDisconnectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->buildDisconnectDescription(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->access$000(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;Z)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->login_color_link:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
