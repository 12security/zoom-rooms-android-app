.class Lus/zoom/zrc/view/ZRCListPopupWindow$1;
.super Ljava/lang/Object;
.source "ZRCListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$1;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$1;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->access$300(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow$1;->this$0:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->show()V

    :cond_0
    return-void
.end method
