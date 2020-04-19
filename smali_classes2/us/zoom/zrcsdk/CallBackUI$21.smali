.class Lus/zoom/zrcsdk/CallBackUI$21;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onSpeakerTestingResult(IFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$duration:F

.field final synthetic val$result:I

.field final synthetic val$stop:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;IFZ)V
    .locals 0

    .line 735
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$21;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$21;->val$result:I

    iput p3, p0, Lus/zoom/zrcsdk/CallBackUI$21;->val$duration:F

    iput-boolean p4, p0, Lus/zoom/zrcsdk/CallBackUI$21;->val$stop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 738
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$21;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 739
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$21;->val$result:I

    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$21;->val$duration:F

    iget-boolean v4, p0, Lus/zoom/zrcsdk/CallBackUI$21;->val$stop:Z

    invoke-interface {v1, v2, v3, v4}, Lus/zoom/zrcsdk/IPtEventListener;->onSpeakerTestingResult(IFZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
