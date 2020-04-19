.class Lus/zoom/zrc/logging/ZRCAppLogger$1;
.super Ljava/lang/Object;
.source "ZRCAppLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/logging/ZRCAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/logging/ZRCAppLogger;


# direct methods
.method constructor <init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$1;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ZRCLog"

    const-string v0, "ZRCAppLogger:onServiceConnected..."

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$1;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$002(Lus/zoom/zrc/logging/ZRCAppLogger;Z)Z

    .line 47
    iget-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$1;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {p2}, Lus/zoom/zrc/logging/IZRCLogService$Stub;->asInterface(Landroid/os/IBinder;)Lus/zoom/zrc/logging/IZRCLogService;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$102(Lus/zoom/zrc/logging/ZRCAppLogger;Lus/zoom/zrc/logging/IZRCLogService;)Lus/zoom/zrc/logging/IZRCLogService;

    .line 48
    iget-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$1;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {p1}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$200(Lus/zoom/zrc/logging/ZRCAppLogger;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ZRCLog"

    const-string v0, "ZRCAppLogger:onServiceDisconnected..."

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$1;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$002(Lus/zoom/zrc/logging/ZRCAppLogger;Z)Z

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$1;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$102(Lus/zoom/zrc/logging/ZRCAppLogger;Lus/zoom/zrc/logging/IZRCLogService;)Lus/zoom/zrc/logging/IZRCLogService;

    return-void
.end method
