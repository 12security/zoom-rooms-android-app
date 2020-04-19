.class Lus/zoom/zrc/login/LoginActivity$14;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->handleShowSignOutWithAccessCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$14;->this$0:Lus/zoom/zrc/login/LoginActivity;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    const-string v0, "enter_passcode_to_sign_out"

    .line 570
    invoke-static {v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Ljava/lang/String;)V

    .line 571
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method
