.class Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "LoginKeyCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/LoginKeyCodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInputConnection"
.end annotation


# instance fields
.field private inputText:Landroid/text/Editable;

.field final synthetic this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V
    .locals 1

    .line 582
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V
    .locals 0

    .line 578
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;-><init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 603
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 605
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$900(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Ljava/lang/CharSequence;)V

    :cond_0
    return p2
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .line 597
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$800(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V

    .line 598
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 4

    .line 612
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1000(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 614
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    .line 615
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1200(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v3}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 620
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1300(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    .line 621
    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1300(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1300(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 622
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1300(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 624
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->inputText:Landroid/text/Editable;

    return-object v0

    .line 626
    :cond_3
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public performEditorAction(I)Z
    .locals 4

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 633
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1300(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I

    move-result p1

    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1400(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 634
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p1, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$002(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Z)Z

    .line 635
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1500(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v0, v2, v3}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v1

    .line 639
    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 588
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x70

    if-ne v1, v0, :cond_0

    .line 589
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$700(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V

    const/4 p1, 0x1

    return p1

    .line 592
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
