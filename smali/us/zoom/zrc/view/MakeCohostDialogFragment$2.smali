.class Lus/zoom/zrc/view/MakeCohostDialogFragment$2;
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

    .line 84
    iput-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment$2;->this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment$2;->this$0:Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->dismiss()V

    return-void
.end method
