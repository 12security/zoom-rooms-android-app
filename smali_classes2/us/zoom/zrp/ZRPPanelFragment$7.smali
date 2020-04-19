.class Lus/zoom/zrp/ZRPPanelFragment$7;
.super Ljava/lang/Object;
.source "ZRPPanelFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->onStart()V
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

    .line 260
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$7;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$7;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$900(Lus/zoom/zrp/ZRPPanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
