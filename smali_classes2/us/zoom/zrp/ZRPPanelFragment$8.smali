.class Lus/zoom/zrp/ZRPPanelFragment$8;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRPPanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->dismissAllAlerts()V
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

    .line 302
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$8;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 305
    check-cast p1, Lus/zoom/zrp/ZRPPanelFragment;

    .line 306
    invoke-static {p1}, Lus/zoom/zrp/ZRPPanelFragment;->access$1000(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    move-result-object v0

    .line 307
    invoke-static {p1}, Lus/zoom/zrp/ZRPPanelFragment;->access$1100(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method
