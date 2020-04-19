.class Lus/zoom/zrc/view/DialKeyboardView$5;
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

    .line 636
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;Lus/zoom/zrcsdk/model/ICallHistoryItem;)V
    .locals 0

    .line 639
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 640
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1000(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1000(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    move-result-object p1

    invoke-interface {p2}, Lus/zoom/zrcsdk/model/ICallHistoryItem;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;->onClickSipDialBtn(Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1100(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedSipDialHistoryList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 643
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1100(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    .line 644
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$5;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
