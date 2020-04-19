.class Lus/zoom/zrcsdk/CallBackUI$65;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onStartMeetingResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ZLjava/lang/String;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$65;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-boolean p2, p0, Lus/zoom/zrcsdk/CallBackUI$65;->val$result:Z

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$65;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1392
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$65;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$100(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IPtEventListener;

    .line 1393
    iget-boolean v2, p0, Lus/zoom/zrcsdk/CallBackUI$65;->val$result:Z

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$65;->val$requestId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lus/zoom/zrcsdk/IPtEventListener;->onStartMeetingResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
