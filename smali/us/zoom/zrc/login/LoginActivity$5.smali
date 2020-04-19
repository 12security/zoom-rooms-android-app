.class final Lus/zoom/zrc/login/LoginActivity$5;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->showConnectionClosed(Landroid/content/Context;I)V
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


# instance fields
.field final synthetic val$reason:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 121
    iput p1, p0, Lus/zoom/zrc/login/LoginActivity$5;->val$reason:I

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 121
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity$5;->run(Lus/zoom/zrc/login/LoginActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 4

    .line 124
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->isOpenFromPT()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    instance-of v1, v0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 130
    :cond_1
    instance-of v1, v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :cond_2
    instance-of v0, v0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/login/LoginActivity$5;->val$reason:I

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->handleConnectionClosed(I)V

    goto :goto_1

    :cond_4
    const-string p1, "received connection closed, but not in a connecting or connected UI"

    .line 138
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
