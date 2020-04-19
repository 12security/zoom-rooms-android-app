.class Lus/zoom/zrc/login/LoginPresenter$15;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPresenter;->retryConnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginPresenter;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$15;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$15;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPresenter;->access$1100(Lus/zoom/zrc/login/LoginPresenter;)Lus/zoom/zrc/login/LoginContract$IUI;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowNetworkDisconnected()V

    return-void
.end method
