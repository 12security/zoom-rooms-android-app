.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;
.super Ljava/lang/Object;
.source "ZRCAudioCheckFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 70
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->access$200(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-static {v4}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->access$300(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-gtz v1, :cond_1

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->access$400(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-static {v0, v1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->access$500(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;I)V

    :goto_0
    return-void
.end method
