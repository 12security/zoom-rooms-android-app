.class Lus/zoom/zrp/ZRPPanelActivity$1;
.super Ljava/lang/Object;
.source "ZRPPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity$1;->this$0:Lus/zoom/zrp/ZRPPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity$1;->this$0:Lus/zoom/zrp/ZRPPanelActivity;

    invoke-virtual {v0}, Lus/zoom/zrp/ZRPPanelActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity$1;->this$0:Lus/zoom/zrp/ZRPPanelActivity;

    invoke-virtual {v0}, Lus/zoom/zrp/ZRPPanelActivity;->onTimer()V

    .line 110
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelActivity$1;->this$0:Lus/zoom/zrp/ZRPPanelActivity;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelActivity;->access$000(Lus/zoom/zrp/ZRPPanelActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
