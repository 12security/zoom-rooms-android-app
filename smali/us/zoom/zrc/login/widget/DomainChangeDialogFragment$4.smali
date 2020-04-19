.class Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;
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

    .line 183
    iput-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;->val$inputView:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
