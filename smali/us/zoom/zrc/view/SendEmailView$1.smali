.class Lus/zoom/zrc/view/SendEmailView$1;
.super Ljava/lang/Object;
.source "SendEmailView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SendEmailView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SendEmailView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SendEmailView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p1, ""

    .line 97
    iget-object p2, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-static {p2}, Lus/zoom/zrc/view/SendEmailView;->access$000(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-static {p2}, Lus/zoom/zrc/view/SendEmailView;->access$000(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-static {p1}, Lus/zoom/zrc/view/SendEmailView;->access$000(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/SendEmailView;->validateEmails(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-static {p1}, Lus/zoom/zrc/view/SendEmailView;->access$100(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/SendEmailView$1;->this$0:Lus/zoom/zrc/view/SendEmailView;

    invoke-static {p1}, Lus/zoom/zrc/view/SendEmailView;->access$100(Lus/zoom/zrc/view/SendEmailView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
