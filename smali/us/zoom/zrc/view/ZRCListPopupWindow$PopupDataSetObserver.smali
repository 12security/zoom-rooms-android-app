.class Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ZRCListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;Lus/zoom/zrc/view/ZRCListPopupWindow$1;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 502
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 510
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->dismiss()V

    return-void
.end method
