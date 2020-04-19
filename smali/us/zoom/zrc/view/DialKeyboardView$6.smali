.class Lus/zoom/zrc/view/DialKeyboardView$6;
.super Ljava/lang/Object;
.source "DialKeyboardView.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/DialKeyboardView;->showDialHistoryPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DialKeyboardView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;Lus/zoom/zrcsdk/model/ICallHistoryItem;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {v0}, Lus/zoom/zrc/view/DialKeyboardView;->access$1000(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 653
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 656
    :cond_0
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$id;->tag_enable_cout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 657
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 658
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1000(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p2}, Lus/zoom/zrcsdk/model/ICallHistoryItem;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;->onClickDialBtn(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1200(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedDialHistoryList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 660
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1200(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    .line 661
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$6;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
