.class Lus/zoom/zrp/ZRPReserveFragment$4;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 580
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$4;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 584
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$4;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$500(Lus/zoom/zrp/ZRPReserveFragment;)V

    const/4 p1, 0x0

    return p1
.end method
