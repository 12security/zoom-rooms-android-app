.class Lus/zoom/zrc/model/Model$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/Model;->onRemoteControlRestartRoom(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/Model;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/Model;)V
    .locals 0

    .line 3671
    iput-object p1, p0, Lus/zoom/zrc/model/Model$1;->this$0:Lus/zoom/zrc/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3674
    iget-object v0, p0, Lus/zoom/zrc/model/Model$1;->this$0:Lus/zoom/zrc/model/Model;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3675
    iget-object v0, p0, Lus/zoom/zrc/model/Model$1;->this$0:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 3676
    iget-object v0, p0, Lus/zoom/zrc/model/Model$1;->this$0:Lus/zoom/zrc/model/Model;

    const/16 v1, 0xbbb

    invoke-static {v0, v1}, Lus/zoom/zrc/model/Model;->access$000(Lus/zoom/zrc/model/Model;I)V

    .line 3677
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->RemoteControlRestartRoom:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method
