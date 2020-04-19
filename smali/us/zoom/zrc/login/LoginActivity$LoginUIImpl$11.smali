.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onEnterAutoLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$pushedKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-object p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;->val$pushedKey:Ljava/lang/String;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 981
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->getBackStackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 984
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onEnterParingCode()V

    .line 986
    :cond_0
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    .line 987
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getFragmentLicenseKey()Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    move-result-object v0

    const/4 v1, 0x1

    .line 988
    invoke-static {p1, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->access$100(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    .line 989
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 990
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;->val$pushedKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->autoLoginWithLicenseKey(Ljava/lang/String;)V

    return-void
.end method
