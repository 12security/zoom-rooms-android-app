.class final Lus/zoom/zrc/login/LoginActivity$6;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->showLoginWithWorkEmail(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/util/ZRCForegroundTask<",
        "Lus/zoom/zrc/login/LoginActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 146
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity$6;->run(Lus/zoom/zrc/login/LoginActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 149
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->handleLoginWithWorkEmailInPairingMode()V

    return-void
.end method
