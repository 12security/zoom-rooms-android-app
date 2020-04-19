.class Lus/zoom/zrp/ZRPReserveFragment$6;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initEditTextViewsEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 608
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$800(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->enter_email:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1

    .line 613
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$800(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[,; ]"

    .line 617
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 618
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 619
    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->isValidEmail(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v3}, Lus/zoom/zrp/ZRPReserveFragment;->access$1000(Lus/zoom/zrp/ZRPReserveFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    iget-object v3, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {v3}, Lus/zoom/zrp/ZRPReserveFragment;->access$1000(Lus/zoom/zrp/ZRPReserveFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_2
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1100(Lus/zoom/zrp/ZRPReserveFragment;)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p2}, Lus/zoom/zrp/ZRPReserveFragment;->access$1000(Lus/zoom/zrp/ZRPReserveFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->setAttendeeEmails(Ljava/util/List;)V

    .line 624
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1100(Lus/zoom/zrp/ZRPReserveFragment;)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->notifyDataSetChanged()V

    .line 625
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$400(Lus/zoom/zrp/ZRPReserveFragment;)V

    .line 628
    :cond_3
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$6;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->add_participants:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(I)V

    :goto_1
    return-void
.end method
