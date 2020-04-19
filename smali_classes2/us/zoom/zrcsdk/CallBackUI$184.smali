.class Lus/zoom/zrcsdk/CallBackUI$184;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onAnswerIncomingSipCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$accepted:Z

.field final synthetic val$callInfo:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
    .locals 0

    .line 3001
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$184;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$result:I

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$callInfo:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    iput-boolean p5, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$accepted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3004
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$184;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 3005
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$result:I

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$requestId:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$callInfo:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    iget-boolean v5, p0, Lus/zoom/zrcsdk/CallBackUI$184;->val$accepted:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lus/zoom/zrcsdk/IPtEventListener;->onAnswerIncomingCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
