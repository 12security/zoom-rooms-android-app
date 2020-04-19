.class Lus/zoom/zrc/login/LoginPairingCodeFragment$3;
.super Ljava/lang/Object;
.source "LoginPairingCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPairingCodeFragment;->onStart()V
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

    .line 137
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$3;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendEnterSignIn()V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment$3;->this$0:Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    return-void
.end method
