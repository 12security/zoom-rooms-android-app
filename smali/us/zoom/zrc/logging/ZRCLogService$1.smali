.class Lus/zoom/zrc/logging/ZRCLogService$1;
.super Lus/zoom/zrc/logging/IZRCLogService$Stub;
.source "ZRCLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/logging/ZRCLogService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/logging/ZRCLogService;


# direct methods
.method constructor <init>(Lus/zoom/zrc/logging/ZRCLogService;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/logging/ZRCLogService$1;->this$0:Lus/zoom/zrc/logging/ZRCLogService;

    invoke-direct {p0}, Lus/zoom/zrc/logging/IZRCLogService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public forceFlushLog()V
    .locals 1

    .line 32
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCLogService$1;->this$0:Lus/zoom/zrc/logging/ZRCLogService;

    invoke-static {v0}, Lus/zoom/zrc/logging/ZRCLogService;->access$100(Lus/zoom/zrc/logging/ZRCLogService;)V

    return-void
.end method

.method public printLog(ILjava/lang/String;[B)V
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCLogService$1;->this$0:Lus/zoom/zrc/logging/ZRCLogService;

    invoke-static {v0, p1, p2, p3}, Lus/zoom/zrc/logging/ZRCLogService;->access$000(Lus/zoom/zrc/logging/ZRCLogService;ILjava/lang/String;[B)V

    return-void
.end method
