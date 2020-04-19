.class Lus/zoom/zrp/ZRPPanelFragment$1;
.super Ljava/lang/Object;
.source "ZRPPanelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 162
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$1;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$1;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPPanelFragment;->access$000(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrp/ZRPPanelFragment$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$1;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPPanelFragment;->access$000(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrp/ZRPPanelFragment$Listener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrp/ZRPPanelFragment$Listener;->onSettingsClicked()V

    :cond_0
    return-void
.end method
