.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;
.super Ljava/lang/Object;
.source "ZRCUltrasoundSignalEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;->this$1:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 544
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;->this$1:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;

    iget-object v0, v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$900(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;->this$1:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;

    iget-object v0, v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    .line 546
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;->this$1:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;

    iget-object v0, v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$1000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;->this$1:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;

    iget-object v0, v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$1100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
