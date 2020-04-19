.class Lus/zoom/zrcsdk/ZRCSdkContext$4;
.super Ljava/lang/Object;
.source "ZRCSdkContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/ZRCSdkContext;->startProxyActivity(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$proxyHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/ZRCSdkContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    iput-object p2, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$proxyHost:Ljava/lang/String;

    iput p3, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$port:I

    iput-object p4, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 743
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$000(Lus/zoom/zrcsdk/ZRCSdkContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$proxyHost:Ljava/lang/String;

    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$100(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/model/ProxyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ProxyInfo;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$port:I

    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$100(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/model/ProxyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ProxyInfo;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    .line 746
    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$200(Lus/zoom/zrcsdk/ZRCSdkContext;)I

    move-result v0

    if-nez v0, :cond_1

    .line 747
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$proxyHost:Ljava/lang/String;

    iget v3, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$port:I

    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    .line 748
    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$100(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/model/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ProxyInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$100(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/model/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ProxyInfo;->getUserPwd()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 747
    invoke-virtual/range {v1 .. v6}, Lus/zoom/zrcsdk/PTApp;->userInputUsernamePasswordForProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 749
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$208(Lus/zoom/zrcsdk/ZRCSdkContext;)I

    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$300(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/ContextImp;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$proxyHost:Ljava/lang/String;

    iget v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$port:I

    iget-object v3, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->val$description:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrcsdk/ContextImp;->startProxyActivity(Ljava/lang/String;ILjava/lang/String;)V

    .line 754
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext$4;->this$0:Lus/zoom/zrcsdk/ZRCSdkContext;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->access$208(Lus/zoom/zrcsdk/ZRCSdkContext;)I

    return-void
.end method
