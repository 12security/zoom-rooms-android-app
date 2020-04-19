.class Lus/zoom/zrc/settings/ChangeWinPasswordDialog$1;
.super Ljava/lang/Object;
.source "ChangeWinPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$1;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$1;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$1;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
