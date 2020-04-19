.class Lus/zoom/zrc/login/LoginPairingCodeFragment$6;
.super Ljava/lang/Object;
.source "LoginPairingCodeFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPairingCodeFragment;->setupDomainSwitchAction(Landroid/view/View;)V
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

    .line 255
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$6;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeatClicked(I)V
    .locals 0

    .line 258
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$6;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method
