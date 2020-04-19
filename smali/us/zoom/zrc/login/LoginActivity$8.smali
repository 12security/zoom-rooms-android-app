.class final Lus/zoom/zrc/login/LoginActivity$8;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->showAutoLogin(Landroid/content/Context;Ljava/lang/String;)V
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
.field final synthetic val$pushedKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$8;->val$pushedKey:Ljava/lang/String;

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 166
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity$8;->run(Lus/zoom/zrc/login/LoginActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$8;->val$pushedKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->handleAutoLogin(Ljava/lang/String;)V

    return-void
.end method
