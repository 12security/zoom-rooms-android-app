.class Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;
.super Ljava/lang/Object;
.source "DomainChangeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 160
    iput-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;->val$inputView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
