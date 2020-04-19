.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRCStateBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->init(Landroid/content/Context;)V
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

    .line 132
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$2;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 2

    const-string p1, "onMeetingExitedNotification, clear END CALL flag."

    const/4 v0, 0x0

    .line 135
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$2;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-static {p1, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$402(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)Z

    return-void
.end method
