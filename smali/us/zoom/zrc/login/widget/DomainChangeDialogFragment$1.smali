.class Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;
.super Ljava/lang/Object;
.source "DomainChangeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->buildDomainListDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$100(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 134
    iget-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$200(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$300()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$400(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method
