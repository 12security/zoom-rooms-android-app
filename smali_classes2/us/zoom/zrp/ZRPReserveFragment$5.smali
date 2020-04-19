.class Lus/zoom/zrp/ZRPReserveFragment$5;
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

    .line 589
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$5;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 593
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$5;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$600(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$5;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$600(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$5;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$700(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 597
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$5;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$700(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->default_meeting_topic:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(I)V

    .line 599
    :cond_1
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->endEditingMeetingTitle()V

    :goto_0
    return-void
.end method
