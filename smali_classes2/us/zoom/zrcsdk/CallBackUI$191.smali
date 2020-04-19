.class Lus/zoom/zrcsdk/CallBackUI$191;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onCameraControlResult(ILjava/lang/String;IIIZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$accept:Z

.field final synthetic val$action:I

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$panTilitSpeedPercentage:I

.field final synthetic val$result:I

.field final synthetic val$type:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;IIIIZLjava/lang/String;I)V
    .locals 0

    .line 3097
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$191;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$result:I

    iput p3, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$type:I

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$action:I

    iput p5, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$userId:I

    iput-boolean p6, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$accept:Z

    iput-object p7, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$deviceId:Ljava/lang/String;

    iput p8, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$panTilitSpeedPercentage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 3100
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$191;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    move-object v2, v1

    check-cast v2, Lus/zoom/zrcsdk/IMeetingEventListener;

    .line 3101
    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$result:I

    iget v4, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$type:I

    iget v5, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$action:I

    iget v6, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$userId:I

    iget-boolean v7, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$accept:Z

    iget-object v8, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$deviceId:Ljava/lang/String;

    iget v9, p0, Lus/zoom/zrcsdk/CallBackUI$191;->val$panTilitSpeedPercentage:I

    invoke-interface/range {v2 .. v9}, Lus/zoom/zrcsdk/IMeetingEventListener;->onCameraControlResult(IIIIZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
