.class Lus/zoom/zrcsdk/CallBackUI$22;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onCalibrateScreenSequenceResult(IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$action:I

.field final synthetic val$currentScreen:I

.field final synthetic val$quantityOfScreens:I

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;IILjava/lang/String;I)V
    .locals 0

    .line 748
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$22;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$currentScreen:I

    iput p3, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$quantityOfScreens:I

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$requestId:Ljava/lang/String;

    iput p5, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 752
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$22;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 753
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$currentScreen:I

    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$quantityOfScreens:I

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$requestId:Ljava/lang/String;

    iget v5, p0, Lus/zoom/zrcsdk/CallBackUI$22;->val$action:I

    invoke-interface {v1, v2, v3, v4, v5}, Lus/zoom/zrcsdk/IPtEventListener;->onCalibrateScreenSequenceResult(IILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
