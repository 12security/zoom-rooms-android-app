.class Lus/zoom/zrcsdk/CallBackUI$192;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onCloseCaptionControlResult(ILjava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$fontSize:I

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ZI)V
    .locals 0

    .line 3110
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$192;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$result:I

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$requestId:Ljava/lang/String;

    iput-boolean p4, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$show:Z

    iput p5, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$fontSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3113
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$192;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$400(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IMeetingEventListener;

    .line 3114
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$result:I

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$requestId:Ljava/lang/String;

    iget-boolean v4, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$show:Z

    iget v5, p0, Lus/zoom/zrcsdk/CallBackUI$192;->val$fontSize:I

    invoke-interface {v1, v2, v3, v4, v5}, Lus/zoom/zrcsdk/IMeetingEventListener;->onCloseCaptionControlResult(ILjava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method
