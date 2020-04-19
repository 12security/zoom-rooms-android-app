.class Lus/zoom/zrc/login/LoginPresenter$6;
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

    .line 163
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$6;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$6;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginPresenter;->access$500(Lus/zoom/zrc/login/LoginPresenter;I)V

    return-void
.end method
