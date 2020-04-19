.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "ZRCUltrasoundSignalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;
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

    .line 86
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$1;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 89
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reboot...."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$1;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    return-void
.end method
