.class Lus/zoom/zrc/incoming/IncomingCallActivity$4;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity;->startCheckingExpiredTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/incoming/IncomingCallActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$4;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 420
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$4;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-static {v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$1100(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    .line 421
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$1200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
