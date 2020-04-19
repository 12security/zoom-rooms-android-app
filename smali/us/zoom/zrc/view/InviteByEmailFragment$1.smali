.class Lus/zoom/zrc/view/InviteByEmailFragment$1;
.super Ljava/lang/Object;
.source "InviteByEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/InviteByEmailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/InviteByEmailFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/InviteByEmailFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 46
    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getRightTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getToView()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    .line 49
    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getTo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getSubject()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\r\n|\n)"

    const-string v1, "<br />"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v2

    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getTo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/SendEmailView;->getSubject()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lus/zoom/zrcsdk/PTApp;->sendEmailTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$100(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/SendEmailView;->getToView()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByEmailFragment$1;->this$0:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteByEmailFragment;->access$100(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;->onClickSendInvitationEmail(Z)V

    :cond_2
    return-void
.end method
