.class Lus/zoom/zrc/login/LoginPairingCodeFragment$5;
.super Landroid/text/style/ClickableSpan;
.source "LoginPairingCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPairingCodeFragment;->buildPairingFailedMessage()Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->access$000(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Retry query with pairing code after failed to pair: %s"

    const/4 v1, 0x1

    .line 237
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->access$200(Lus/zoom/zrc/login/LoginPairingCodeFragment;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->login_color_link:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
