.class Lus/zoom/zrc/login/LoginFragmentErrorDialog$2;
.super Ljava/lang/Object;
.source "LoginFragmentErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFragmentErrorDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$2;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 285
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendRetryConnect()V

    const-string p1, "User clicked retry connection..."

    const/4 p2, 0x0

    .line 286
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$2;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->retryConnect(Z)V

    return-void
.end method
