.class Lus/zoom/zrcsdk/CallBackUI$39;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdateVideoPageStatus(ZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$isInFirstPage:Z

.field final synthetic val$isInLastPage:Z

.field final synthetic val$pageVideoType:I

.field final synthetic val$videoCountInCurrentPage:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ZZII)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$39;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-boolean p2, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$isInFirstPage:Z

    iput-boolean p3, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$isInLastPage:Z

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$pageVideoType:I

    iput p5, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$videoCountInCurrentPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1014
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$39;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 1015
    new-instance v2, Lus/zoom/zrcsdk/model/VideoPageStatus;

    invoke-direct {v2}, Lus/zoom/zrcsdk/model/VideoPageStatus;-><init>()V

    .line 1016
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$isInFirstPage:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoPageStatus;->setInFirstPage(Z)V

    .line 1017
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$isInLastPage:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoPageStatus;->setInLastPage(Z)V

    .line 1018
    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$pageVideoType:I

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoPageStatus;->setPageVideoType(I)V

    .line 1019
    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$39;->val$videoCountInCurrentPage:I

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoPageStatus;->setVideoCountInCurrentPage(I)V

    .line 1020
    invoke-interface {v1, v2}, Lus/zoom/zrcsdk/IMeetingEventListener;->onUpdateVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method
