.class Lus/zoom/zrc/view/ClaimHostDialogFragment$1;
.super Ljava/lang/Object;
.source "ClaimHostDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ClaimHostDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ClaimHostDialogFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment$1;->this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment$1;->this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->access$000(Lus/zoom/zrc/view/ClaimHostDialogFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#76787a"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment$1;->this$0:Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->access$000(Lus/zoom/zrc/view/ClaimHostDialogFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#1C86EE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
