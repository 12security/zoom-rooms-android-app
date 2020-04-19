.class Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;
.super Ljava/lang/Object;
.source "DomainChangeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->buildCustomInputDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

.field final synthetic val$inputView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 172
    iget-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;->val$inputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "//"

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p2}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;->val$inputView:Landroid/widget/EditText;

    invoke-static {p2, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 180
    iget-object p2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p2, p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$400(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Ljava/lang/String;)V

    return-void
.end method
