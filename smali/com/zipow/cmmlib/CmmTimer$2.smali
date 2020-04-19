.class Lcom/zipow/cmmlib/CmmTimer$2;
.super Ljava/lang/Object;
.source "CmmTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zipow/cmmlib/CmmTimer;->setTimer(JJ)V
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

    .line 52
    iput-object p1, p0, Lcom/zipow/cmmlib/CmmTimer$2;->this$0:Lcom/zipow/cmmlib/CmmTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    iget-object v1, p0, Lcom/zipow/cmmlib/CmmTimer$2;->this$0:Lcom/zipow/cmmlib/CmmTimer;

    invoke-static {v1}, Lcom/zipow/cmmlib/CmmTimer;->access$300(Lcom/zipow/cmmlib/CmmTimer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
