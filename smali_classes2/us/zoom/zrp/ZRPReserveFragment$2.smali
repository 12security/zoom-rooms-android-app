.class Lus/zoom/zrp/ZRPReserveFragment$2;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 304
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$2;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserActiveOnUI()V
    .locals 1

    .line 307
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$2;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$100(Lus/zoom/zrp/ZRPReserveFragment;)V

    .line 308
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$2;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$200(Lus/zoom/zrp/ZRPReserveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$2;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$300(Lus/zoom/zrp/ZRPReserveFragment;)V

    :cond_0
    return-void
.end method
