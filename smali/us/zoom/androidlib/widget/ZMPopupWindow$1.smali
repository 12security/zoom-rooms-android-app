.class Lus/zoom/androidlib/widget/ZMPopupWindow$1;
.super Ljava/lang/Object;
.source "ZMPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMPopupWindow;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 71
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupWindow;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMPopupWindow;->access$000(Lus/zoom/androidlib/widget/ZMPopupWindow;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupWindow;

    invoke-static {p1, p2}, Lus/zoom/androidlib/widget/ZMPopupWindow;->access$100(Lus/zoom/androidlib/widget/ZMPopupWindow;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupWindow;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
