.class Lus/zoom/zrc/login/LoginPairingCodeFragment$4;
.super Ljava/lang/Object;
.source "LoginPairingCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPairingCodeFragment;->showParingCodeKeyboard()V
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

    .line 213
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$4;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 216
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$4;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$4;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->access$000(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->showInputMethod()V

    return-void
.end method
