.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZRCStateBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;)V
    .locals 0

    .line 561
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    return-void
.end method

.method private requestEndAllCalls()V
    .locals 6

    .line 570
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    .line 572
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v2

    .line 574
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->hangupAllSipCall()V

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    const-string v1, "Received END CALL, exit local presentation."

    .line 577
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-virtual {v0, v3, v3, v3, v3}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 581
    invoke-static {}, Lus/zoom/zrc/PTActivity;->closePresentation()V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v4, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-static {v4}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$400(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Received END CALL, exiting meeting..."

    .line 583
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    const-string v1, "Received END CALL, exit upcoming meeting."

    .line 586
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    iget-object v1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-virtual {v0, v5}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$402(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    if-ne v1, v4, :cond_4

    if-nez v2, :cond_3

    const-string v1, "Received END CALL, exit normal meeting."

    .line 592
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    iget-object v1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAmIHost()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$402(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)Z

    goto :goto_0

    :cond_3
    const-string v1, "Received END CALL, exit sharing/pstn meeting."

    .line 597
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    iget-object v1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-virtual {v0, v5}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$402(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Received END CALL"

    const/4 p2, 0x0

    .line 565
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;->requestEndAllCalls()V

    return-void
.end method
