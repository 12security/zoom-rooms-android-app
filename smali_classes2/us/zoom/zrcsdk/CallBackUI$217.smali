.class Lus/zoom/zrcsdk/CallBackUI$217;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$action_type:I

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$zmd_admin:Ljava/lang/String;

.field final synthetic val$zmd_host:Ljava/lang/String;

.field final synthetic val$zmd_id:Ljava/lang/String;

.field final synthetic val$zmd_pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3479
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$217;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$requestId:Ljava/lang/String;

    iput p3, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$result:I

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$action_type:I

    iput-object p5, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_host:Ljava/lang/String;

    iput-object p6, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_id:Ljava/lang/String;

    iput-object p7, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_admin:Ljava/lang/String;

    iput-object p8, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 3482
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$217;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    move-object v2, v1

    check-cast v2, Lus/zoom/zrcsdk/IPtEventListener;

    .line 3483
    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$requestId:Ljava/lang/String;

    iget v4, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$result:I

    iget v5, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$action_type:I

    iget-object v6, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_host:Ljava/lang/String;

    iget-object v7, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_id:Ljava/lang/String;

    iget-object v8, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_admin:Ljava/lang/String;

    iget-object v9, p0, Lus/zoom/zrcsdk/CallBackUI$217;->val$zmd_pwd:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lus/zoom/zrcsdk/IPtEventListener;->onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
