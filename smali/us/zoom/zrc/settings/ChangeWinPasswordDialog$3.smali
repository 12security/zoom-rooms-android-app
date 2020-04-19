.class Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;
.super Ljava/lang/Object;
.source "ChangeWinPasswordDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 122
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$100(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$300(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p1, p3}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$400(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p1, p3}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$500(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V

    return p2

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
