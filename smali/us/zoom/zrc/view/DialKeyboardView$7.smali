.class Lus/zoom/zrc/view/DialKeyboardView$7;
.super Ljava/lang/Object;
.source "DialKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 671
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 674
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->clearSipDialHistory()V

    .line 675
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->clearDialHistory()V

    .line 676
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1100(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedSipDialHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 677
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1100(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    .line 678
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1200(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getSortedDialHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->setList(Ljava/util/List;)V

    .line 679
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$1200(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->notifyDataSetChanged()V

    .line 680
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$900(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 681
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$7;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DialKeyboardView;->setButtonStatus()V

    return-void
.end method
