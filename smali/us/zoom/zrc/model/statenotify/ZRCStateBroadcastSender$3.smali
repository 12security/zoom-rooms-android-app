.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$3;
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

    .line 176
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$3;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$3;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$500(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    return-void
.end method
