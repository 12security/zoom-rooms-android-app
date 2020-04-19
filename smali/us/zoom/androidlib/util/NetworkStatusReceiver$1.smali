.class Lus/zoom/androidlib/util/NetworkStatusReceiver$1;
.super Landroid/os/Handler;
.source "NetworkStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/NetworkStatusReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/NetworkStatusReceiver;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    iput-object p3, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/NetworkUtil;->hasDataNetwork(Landroid/content/Context;)Z

    move-result v0

    .line 47
    iget-object v1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lus/zoom/androidlib/util/NetworkUtil;->getDataNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 48
    iget-object v2, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lus/zoom/androidlib/util/NetworkUtil;->getNetworkIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 49
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {p1}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$400(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;-><init>(Lus/zoom/androidlib/util/NetworkStatusReceiver$1;ZILjava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$102(Lus/zoom/androidlib/util/NetworkStatusReceiver;Z)Z

    .line 69
    iget-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {p1, v1}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$202(Lus/zoom/androidlib/util/NetworkStatusReceiver;I)I

    .line 70
    iget-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {p1, v2}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$302(Lus/zoom/androidlib/util/NetworkStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
