.class Lus/zoom/zrc/ProxyNamePasswordActivity$1;
.super Ljava/lang/Object;
.source "ProxyNamePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ProxyNamePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ProxyNamePasswordActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$000(Lus/zoom/zrc/ProxyNamePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$100(Lus/zoom/zrc/ProxyNamePasswordActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$200(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    .line 54
    invoke-static {v1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$300(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$000(Lus/zoom/zrc/ProxyNamePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$100(Lus/zoom/zrc/ProxyNamePasswordActivity;)I

    move-result v2

    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    .line 56
    invoke-static {p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$200(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$300(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->userInputUsernamePasswordForProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 57
    new-instance p1, Lus/zoom/zrcsdk/model/ProxyInfo;

    invoke-direct {p1}, Lus/zoom/zrcsdk/model/ProxyInfo;-><init>()V

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$000(Lus/zoom/zrc/ProxyNamePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ProxyInfo;->setProxyHost(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$100(Lus/zoom/zrc/ProxyNamePasswordActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ProxyInfo;->setPort(I)V

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$200(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ProxyInfo;->setUserName(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-static {v0}, Lus/zoom/zrc/ProxyNamePasswordActivity;->access$300(Lus/zoom/zrc/ProxyNamePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ProxyInfo;->setUserPwd(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveProxyInfo(Lus/zoom/zrcsdk/model/ProxyInfo;)V

    .line 63
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setProxyInfo(Lus/zoom/zrcsdk/model/ProxyInfo;)V

    .line 64
    iget-object p1, p0, Lus/zoom/zrc/ProxyNamePasswordActivity$1;->this$0:Lus/zoom/zrc/ProxyNamePasswordActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/ProxyNamePasswordActivity;->finish()V

    return-void
.end method
