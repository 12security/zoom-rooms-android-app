.class Lus/zoom/zrc/login/LoginPresenter$18;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPresenter;->startRefreshZRCIpTimer()V
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

    .line 732
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$18;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 735
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$18;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPresenter;->access$1200(Lus/zoom/zrc/login/LoginPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$18;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPresenter;->access$1100(Lus/zoom/zrc/login/LoginPresenter;)Lus/zoom/zrc/login/LoginContract$IUI;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getFooter()Lus/zoom/zrc/login/LoginContract$IFooter;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IFooter;->onUpdateIpAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$18;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPresenter;->access$1100(Lus/zoom/zrc/login/LoginPresenter;)Lus/zoom/zrc/login/LoginContract$IUI;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getFooter()Lus/zoom/zrc/login/LoginContract$IFooter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IFooter;->onUpdateIpAddress(Ljava/lang/String;)V

    .line 740
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$18;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPresenter;->access$1300(Lus/zoom/zrc/login/LoginPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
