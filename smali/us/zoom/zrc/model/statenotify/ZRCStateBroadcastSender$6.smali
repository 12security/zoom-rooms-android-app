.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$6;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRCStateBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->addNotificationForInCallStateBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$6;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$6;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$800(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)V

    return-void
.end method
