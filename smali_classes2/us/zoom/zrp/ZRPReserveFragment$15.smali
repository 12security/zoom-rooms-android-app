.class Lus/zoom/zrp/ZRPReserveFragment$15;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRoomSuccessDialog()V
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

    .line 1550
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$15;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1553
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$15;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$2000(Lus/zoom/zrp/ZRPReserveFragment;)V

    .line 1555
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$15;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$2100(Lus/zoom/zrp/ZRPReserveFragment;)Lus/zoom/zrp/ZRPReserveFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1557
    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$2000(Lus/zoom/zrp/ZRPReserveFragment;)V

    :cond_0
    return-void
.end method
