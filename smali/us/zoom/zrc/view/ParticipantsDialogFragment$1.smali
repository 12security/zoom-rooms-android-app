.class Lus/zoom/zrc/view/ParticipantsDialogFragment$1;
.super Ljava/lang/Object;
.source "ParticipantsDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantsDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantsDialogFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$1;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$1;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->dismiss()V

    return-void
.end method
