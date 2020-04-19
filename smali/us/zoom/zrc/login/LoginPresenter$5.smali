.class Lus/zoom/zrc/login/LoginPresenter$5;
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

    .line 154
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$5;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "result"

    .line 157
    invoke-static {p1, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const-string v1, "roomEmail"

    .line 158
    invoke-static {p1, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "passCode"

    .line 159
    invoke-static {p1, v2}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter$5;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v2, v0, v1, p1}, Lus/zoom/zrc/login/LoginPresenter;->access$400(Lus/zoom/zrc/login/LoginPresenter;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
