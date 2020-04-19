.class Lus/zoom/zrc/view/PresentationFragment$2;
.super Ljava/lang/Object;
.source "PresentationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/PresentationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/PresentationFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/PresentationFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lus/zoom/zrc/view/PresentationFragment$2;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment$2;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/PresentationFragment;->access$100(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment$2;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/PresentationFragment;->access$100(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment$2;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/PresentationFragment;->access$100(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment$2;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/PresentationFragment;->access$100(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
