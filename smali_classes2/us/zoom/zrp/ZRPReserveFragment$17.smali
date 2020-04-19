.class Lus/zoom/zrp/ZRPReserveFragment$17;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->showErrorAlertDialog(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;

.field final synthetic val$okAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$17;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    iput-object p2, p0, Lus/zoom/zrp/ZRPReserveFragment$17;->val$okAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1756
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$17;->val$okAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
