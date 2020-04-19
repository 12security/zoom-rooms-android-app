.class Lus/zoom/zrc/login/LoginPresenter$17;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPresenter;->handleAddCalendarCallback(I)V
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

    .line 663
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$17;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarRefreshResult(I)V
    .locals 1

    .line 666
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$17;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginPresenter;->access$1100(Lus/zoom/zrc/login/LoginPresenter;)Lus/zoom/zrc/login/LoginContract$IUI;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowCalendarPicker(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    return-void
.end method
