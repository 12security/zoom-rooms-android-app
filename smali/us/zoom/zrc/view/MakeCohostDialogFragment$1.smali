.class Lus/zoom/zrc/view/MakeCohostDialogFragment$1;
.super Ljava/lang/Object;
.source "MakeCohostDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MakeCohostDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MakeCohostDialogFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment$1;->this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment$1;->this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->access$000(Lus/zoom/zrc/view/MakeCohostDialogFragment;)Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment$1;->this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->access$000(Lus/zoom/zrc/view/MakeCohostDialogFragment;)Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;->onClick()V

    .line 80
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment$1;->this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->dismiss()V

    return-void
.end method
