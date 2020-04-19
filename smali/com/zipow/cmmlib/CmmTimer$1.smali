.class Lcom/zipow/cmmlib/CmmTimer$1;
.super Ljava/lang/Object;
.source "CmmTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zipow/cmmlib/CmmTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zipow/cmmlib/CmmTimer;


# direct methods
.method constructor <init>(Lcom/zipow/cmmlib/CmmTimer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zipow/cmmlib/CmmTimer$1;->this$0:Lcom/zipow/cmmlib/CmmTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    iget-object v2, p0, Lcom/zipow/cmmlib/CmmTimer$1;->this$0:Lcom/zipow/cmmlib/CmmTimer;

    invoke-static {v2}, Lcom/zipow/cmmlib/CmmTimer;->access$000(Lcom/zipow/cmmlib/CmmTimer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/zipow/cmmlib/CmmTimer$1;->this$0:Lcom/zipow/cmmlib/CmmTimer;

    invoke-static {v2, v3, v4, v5}, Lcom/zipow/cmmlib/CmmTimer;->access$100(Lcom/zipow/cmmlib/CmmTimer;JLcom/zipow/cmmlib/CmmTimer;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 29
    invoke-static {}, Lcom/zipow/cmmlib/CmmTimer;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%d ms used to call callNativeTimerProc. timeStart=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm:ss.SSS"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 30
    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 29
    invoke-static {v4, v5, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
