.class Lus/zoom/zrc/login/LoginPresenter$13;
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

.field final synthetic val$kickOutBy:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginPresenter;Ljava/lang/Integer;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$13;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter$13;->val$kickOutBy:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 315
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$13;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPresenter;->access$1100(Lus/zoom/zrc/login/LoginPresenter;)Lus/zoom/zrc/login/LoginContract$IUI;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->KickOutByReason:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter$13;->val$kickOutBy:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method
