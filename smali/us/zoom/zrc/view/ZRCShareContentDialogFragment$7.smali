.class Lus/zoom/zrc/view/ZRCShareContentDialogFragment$7;
.super Ljava/lang/Object;
.source "ZRCShareContentDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->findMultiShareViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$7;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockToRun()V
    .locals 1

    .line 612
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$7;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$900(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    return-void
.end method

.method public shouldBlock()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$7;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$1000(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Z

    move-result v0

    return v0
.end method
