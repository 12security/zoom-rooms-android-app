.class Lus/zoom/zrc/view/SimpleFeedbackFragment$2;
.super Ljava/lang/Object;
.source "SimpleFeedbackFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SimpleFeedbackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SimpleFeedbackFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$2;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$2;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->access$000(Lus/zoom/zrc/view/SimpleFeedbackFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$2;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->access$000(Lus/zoom/zrc/view/SimpleFeedbackFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$2;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->access$000(Lus/zoom/zrc/view/SimpleFeedbackFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
