.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;
.super Landroid/content/BroadcastReceiver;
.source "ZRCUltrasoundSignalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->setupRestartUltrasoundAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "us.zoom.zrc.action.ZRCUltrasoundSignalEngine.RESTART"

    .line 537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 538
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handle restart ultrasound player in mid-night!"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    .line 540
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$1100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10$1;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 554
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$1000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    :goto_0
    return-void
.end method
