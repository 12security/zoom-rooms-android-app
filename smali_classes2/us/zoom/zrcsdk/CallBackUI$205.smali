.class Lus/zoom/zrcsdk/CallBackUI$205;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdateZRCSDeviceList(IILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$action_type:I

.field final synthetic val$error_code:I

.field final synthetic val$zrcsDevices:Ljava/util/List;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;IILjava/util/List;)V
    .locals 0

    .line 3307
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$205;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$205;->val$action_type:I

    iput p3, p0, Lus/zoom/zrcsdk/CallBackUI$205;->val$error_code:I

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$205;->val$zrcsDevices:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3310
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$205;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 3311
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$205;->val$action_type:I

    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$205;->val$error_code:I

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$205;->val$zrcsDevices:Ljava/util/List;

    invoke-interface {v1, v2, v3, v4}, Lus/zoom/zrcsdk/IPtEventListener;->onUpdateZRCSDeviceList(IILjava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
