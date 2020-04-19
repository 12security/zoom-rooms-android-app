.class Lus/zoom/zrc/PTActivity$8;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->showEnterPasswordDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$8;->this$0:Lus/zoom/zrc/PTActivity;

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

    .line 786
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 787
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$8;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$700(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$8;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$700(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
