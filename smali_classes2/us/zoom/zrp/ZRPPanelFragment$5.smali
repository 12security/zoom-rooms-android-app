.class Lus/zoom/zrp/ZRPPanelFragment$5;
.super Ljava/lang/Object;
.source "ZRPPanelFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


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


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$5;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 223
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$5;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$500(Lus/zoom/zrp/ZRPPanelFragment;)V

    return-void
.end method
