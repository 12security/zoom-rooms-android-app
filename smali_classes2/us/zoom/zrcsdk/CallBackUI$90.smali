.class Lus/zoom/zrcsdk/CallBackUI$90;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$callInfo:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field final synthetic val$peerUri:Ljava/lang/String;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
    .locals 0

    .line 1767
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$90;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$result:I

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$requestId:Ljava/lang/String;

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$type:I

    iput-object p5, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$callInfo:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    iput-object p6, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$peerUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1770
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$90;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$200(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

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

    check-cast v2, Lus/zoom/zrcsdk/ISipServiceListener;

    .line 1771
    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$result:I

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$requestId:Ljava/lang/String;

    iget v5, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$type:I

    iget-object v6, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$callInfo:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    iget-object v7, p0, Lus/zoom/zrcsdk/CallBackUI$90;->val$peerUri:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lus/zoom/zrcsdk/ISipServiceListener;->onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
