.class Lus/zoom/zrc/login/LoginPairingCodeFragment$1;
.super Ljava/lang/Object;
.source "LoginPairingCodeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPairingCodeFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 77
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$1;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$1;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->access$000(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->showInputMethod()V

    return-void
.end method
