.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$overlap:Z

.field final synthetic val$waitingMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-boolean p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;->val$overlap:Z

    iput-object p4, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;->val$waitingMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 877
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;->val$overlap:Z

    iget-object v1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;->val$waitingMessage:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->access$600(Lus/zoom/zrc/login/LoginActivity;ZLjava/lang/CharSequence;)V

    return-void
.end method
