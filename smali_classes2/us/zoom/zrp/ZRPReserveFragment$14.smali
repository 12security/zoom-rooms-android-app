.class Lus/zoom/zrp/ZRPReserveFragment$14;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRPReserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->onTimerForCheckReservingMeetingTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$14;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 3

    .line 1429
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$14;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lus/zoom/zrp/ZRPReserveFragment;->access$1902(Lus/zoom/zrp/ZRPReserveFragment;J)J

    .line 1430
    check-cast p1, Lus/zoom/zrp/ZRPReserveFragment;

    invoke-virtual {p1}, Lus/zoom/zrp/ZRPReserveFragment;->dismissWaitingDialog()V

    return-void
.end method
