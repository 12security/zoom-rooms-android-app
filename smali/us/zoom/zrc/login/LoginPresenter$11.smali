.class Lus/zoom/zrc/login/LoginPresenter$11;
.super Lus/zoom/zrc/base/notification/INotification;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPresenter;->setup(Lus/zoom/zrc/login/LoginContract$IUI;)V
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

    .line 198
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$11;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 4

    .line 201
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    .line 202
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$11;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    const-string v1, "accessToken"

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "errorStr"

    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lus/zoom/zrc/login/LoginPresenter;->access$1000(Lus/zoom/zrc/login/LoginPresenter;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
