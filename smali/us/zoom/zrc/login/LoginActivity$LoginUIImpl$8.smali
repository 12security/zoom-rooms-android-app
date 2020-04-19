.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$8;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onLoginOrEnterLicense(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$8;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-object p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$8;->val$email:Ljava/lang/String;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 948
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 949
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    .line 950
    iget-object v1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$8;->val$email:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/login/LoginActivity;->getFragmentLoginOrEnterLicense(Ljava/lang/String;)Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lus/zoom/zrc/login/LoginActivity;->access$100(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    return-void
.end method
