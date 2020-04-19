.class Lus/zoom/zrp/ZRPPanelFragment$6;
.super Ljava/lang/Object;
.source "ZRPPanelFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelFragment;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelFragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    iput-object p2, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->val$view:Landroid/view/View;

    iput-object p3, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$600(Lus/zoom/zrp/ZRPPanelFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$700(Lus/zoom/zrp/ZRPPanelFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$800(Lus/zoom/zrp/ZRPPanelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->access$602(Lus/zoom/zrp/ZRPPanelFragment;I)I

    .line 235
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrp/ZRPPanelFragment;->access$702(Lus/zoom/zrp/ZRPPanelFragment;I)I

    .line 237
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->val$savedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "savedIsCloseReserveFragmentAnimationShowing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$800(Lus/zoom/zrp/ZRPPanelFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v1}, Lus/zoom/zrp/ZRPPanelFragment;->access$600(Lus/zoom/zrp/ZRPPanelFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    iget-object v1, p0, Lus/zoom/zrp/ZRPPanelFragment$6;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v1}, Lus/zoom/zrp/ZRPPanelFragment;->access$800(Lus/zoom/zrp/ZRPPanelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
