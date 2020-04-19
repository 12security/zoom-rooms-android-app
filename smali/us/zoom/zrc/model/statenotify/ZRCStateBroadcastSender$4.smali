.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$4;
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

    .line 183
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$4;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$4;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$600(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    return-void
.end method
