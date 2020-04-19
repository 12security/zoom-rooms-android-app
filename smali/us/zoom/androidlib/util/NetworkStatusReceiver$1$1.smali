.class Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;
.super Ljava/lang/Object;
.source "NetworkStatusReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

.field final synthetic val$curConnection:Z

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/NetworkStatusReceiver$1;ZILjava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iput-boolean p2, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$curConnection:Z

    iput p3, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$type:I

    iput-object p4, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$ip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 53
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v0, v0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {v0}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$000(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Lus/zoom/androidlib/util/ListenerList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    array-length v1, v0

    if-lez v1, :cond_0

    .line 55
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    move-object v4, v3

    check-cast v4, Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;

    .line 57
    iget-boolean v5, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$curConnection:Z

    iget v6, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$type:I

    iget-object v7, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$ip:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v3, v3, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    .line 58
    invoke-static {v3}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$100(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Z

    move-result v8

    iget-object v3, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v3, v3, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {v3}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$200(Lus/zoom/androidlib/util/NetworkStatusReceiver;)I

    move-result v9

    iget-object v3, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v3, v3, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    invoke-static {v3}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$300(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Ljava/lang/String;

    move-result-object v10

    .line 57
    invoke-interface/range {v4 .. v10}, Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;->networkStatusChanged(ZILjava/lang/String;ZILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v0, v0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    iget-boolean v1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$curConnection:Z

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$102(Lus/zoom/androidlib/util/NetworkStatusReceiver;Z)Z

    .line 63
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v0, v0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    iget v1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$type:I

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$202(Lus/zoom/androidlib/util/NetworkStatusReceiver;I)I

    .line 64
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->this$1:Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v0, v0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;->this$0:Lus/zoom/androidlib/util/NetworkStatusReceiver;

    iget-object v1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1$1;->val$ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->access$302(Lus/zoom/androidlib/util/NetworkStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
