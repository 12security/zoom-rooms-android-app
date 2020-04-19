.class Lus/zoom/zrcsdk/CallBackUI$70;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$caseId:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:Z

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1459
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$70;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-boolean p2, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$result:Z

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$email:Ljava/lang/String;

    iput-object p5, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$subject:Ljava/lang/String;

    iput-object p6, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$body:Ljava/lang/String;

    iput-object p7, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$caseId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1463
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$70;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 1464
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$result:Z

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$requestId:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$email:Ljava/lang/String;

    iget-object v6, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$subject:Ljava/lang/String;

    iget-object v7, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$body:Ljava/lang/String;

    iget-object v8, p0, Lus/zoom/zrcsdk/CallBackUI$70;->val$caseId:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lus/zoom/zrcsdk/IPtEventListener;->onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
