.class Lus/zoom/zrc/login/LoginPairingCodeFragment$2;
.super Ljava/lang/Object;
.source "LoginPairingCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPairingCodeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 99
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$2;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendEnterPairingCodeHelp()V

    .line 103
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$2;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->access$000(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->hideInputMethod()V

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$2;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->access$100(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->show()V

    return-void
.end method
