.class Lus/zoom/zrcsdk/ZRCSdk$1;
.super Ljava/lang/Object;
.source "ZRCSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrcsdk/ZRCSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/ZRCSdk;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/ZRCSdk;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdk$1;->this$0:Lus/zoom/zrcsdk/ZRCSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 73
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk$1;->this$0:Lus/zoom/zrcsdk/ZRCSdk;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdk;->access$000(Lus/zoom/zrcsdk/ZRCSdk;)Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->handleWebRequestOnIdle()V

    .line 74
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdk$1;->this$0:Lus/zoom/zrcsdk/ZRCSdk;

    invoke-static {v0}, Lus/zoom/zrcsdk/ZRCSdk;->access$200(Lus/zoom/zrcsdk/ZRCSdk;)Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getRequestHandler()Lus/zoom/zrcsdk/HandlerImp;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdk$1;->this$0:Lus/zoom/zrcsdk/ZRCSdk;

    invoke-static {v1}, Lus/zoom/zrcsdk/ZRCSdk;->access$100(Lus/zoom/zrcsdk/ZRCSdk;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrcsdk/HandlerImp;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
