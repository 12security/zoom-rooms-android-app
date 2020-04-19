.class Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;
.super Ljava/lang/Object;
.source "VideoLayoutViewSelectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;->this$0:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;->this$0:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->access$000(Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;->this$0:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->access$000(Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$1;->this$0:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->access$000(Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
