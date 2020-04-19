.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZRCStateBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryZoomInfoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "query_type"

    const/4 v0, -0x1

    .line 551
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-void

    .line 556
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received query zoom info: queryType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->queryType2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object p2, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-static {p2, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$900(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;I)V

    return-void
.end method
