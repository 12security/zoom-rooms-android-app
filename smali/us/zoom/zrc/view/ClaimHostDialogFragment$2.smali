.class Lus/zoom/zrc/view/ClaimHostDialogFragment$2;
.super Ljava/lang/Object;
.source "ClaimHostDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ClaimHostDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ClaimHostDialogFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment$2;->this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment$2;->this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->access$100(Lus/zoom/zrc/view/ClaimHostDialogFragment;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
