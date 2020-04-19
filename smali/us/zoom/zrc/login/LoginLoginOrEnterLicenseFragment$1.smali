.class Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;
.super Ljava/lang/Object;
.source "LoginLoginOrEnterLicenseFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 81
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->LoginWithZoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-static {v1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$000(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    .line 82
    invoke-static {v1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$000(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->hideErrorMessage()V

    .line 86
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$100(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$200(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    const-string v1, "input_work_email"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
