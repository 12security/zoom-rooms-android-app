.class Lus/zoom/zrp/ZRPReserveFragment$7;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initEditTextViewsEvents()V
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

    .line 632
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$7;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 635
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$7;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lus/zoom/zrp/ZRPReserveFragment$7;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->add_participants:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    :cond_0
    return-void
.end method
