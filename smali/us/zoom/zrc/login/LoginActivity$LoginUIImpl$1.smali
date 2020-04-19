.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$errorCode:I

.field final synthetic val$errorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-object p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->val$errorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iput p4, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->val$errorCode:I

    iput-object p5, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 3

    .line 855
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->val$errorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iget v1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->val$errorCode:I

    iget-object v2, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;->val$message:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2}, Lus/zoom/zrc/login/LoginActivity;->access$400(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method
