.class Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;
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

    .line 109
    iput-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$000(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$100(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$300(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$400(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$500(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
