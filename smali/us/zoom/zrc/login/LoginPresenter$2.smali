.class Lus/zoom/zrc/login/LoginPresenter$2;
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

    .line 134
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$2;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "roomList"

    .line 137
    invoke-static {p1, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "billingType"

    .line 138
    invoke-static {p1, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 139
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter$2;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {v1, v0, p1}, Lus/zoom/zrc/login/LoginPresenter;->access$100(Lus/zoom/zrc/login/LoginPresenter;Ljava/util/List;I)V

    return-void
.end method
