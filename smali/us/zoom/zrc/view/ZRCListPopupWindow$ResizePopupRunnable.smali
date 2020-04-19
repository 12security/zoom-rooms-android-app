.class Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ZRCListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;Lus/zoom/zrc/view/ZRCListPopupWindow$1;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 516
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$400(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    .line 517
    invoke-static {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$400(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$400(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$500(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 519
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->show()V

    :cond_0
    return-void
.end method
