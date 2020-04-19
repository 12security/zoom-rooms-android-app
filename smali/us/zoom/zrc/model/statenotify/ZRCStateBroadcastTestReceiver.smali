.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZRCStateBroadcastTestReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZRCStateBroadcastTest"

.field private static instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 28
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.IN_CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.INCOMING_CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.PAIR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.MIC_MUTE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.SCHEDULING_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;
    .locals 1

    .line 20
    sget-object v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;

    invoke-direct {v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;-><init>()V

    sput-object v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;

    .line 23
    :cond_0
    sget-object v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;

    return-object v0
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastTestReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "us.zoom.zrc.action.INCOMING_CALL_STATE_CHANGED"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p1, "state"

    .line 47
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ZRCStateBroadcastTest"

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "us.zoom.zrc.action.INCOMING_CALL_STATE_CHANGED >> state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->incomingCallState2String(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string v0, "us.zoom.zrc.action.IN_CALL_STATE_CHANGED"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "state"

    .line 50
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ZRCStateBroadcastTest"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "us.zoom.zrc.action.IN_CALL_STATE_CHANGED >> state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->inCallState2String(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string v0, "us.zoom.zrc.action.PAIR_STATE_CHANGED"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ip_address"

    .line 53
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "state"

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "ZRCStateBroadcastTest"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "us.zoom.zrc.action.PAIR_STATE_CHANGED >> ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->pairState2String(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "us.zoom.zrc.action.MIC_MUTE_STATE_CHANGED"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "state"

    .line 57
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ZRCStateBroadcastTest"

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "us.zoom.zrc.action.MIC_MUTE_STATE_CHANGED >> state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->muteState2String(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "us.zoom.zrc.action.SCHEDULING_DISPLAY_STATE_CHANGED"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "state"

    .line 60
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ZRCStateBroadcastTest"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "us.zoom.zrc.action.SCHEDULING_DISPLAY_STATE_CHANGED >> state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->zrpState2String(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method release(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
