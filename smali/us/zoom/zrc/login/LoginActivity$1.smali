.class final Lus/zoom/zrc/login/LoginActivity$1;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->autoPairingWidthKey(Landroid/content/Context;Ljava/lang/String;)V
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
.field final synthetic val$pairingCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$1;->val$pairingCode:Ljava/lang/String;

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 80
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity$1;->run(Lus/zoom/zrc/login/LoginActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 2

    .line 83
    invoke-static {p1}, Lus/zoom/zrc/login/LoginActivity;->access$000(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/login/LoginPairingCodeFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->access$100(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    .line 84
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$1;->val$pairingCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->autoPairWithKey(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
