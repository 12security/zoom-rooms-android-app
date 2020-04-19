.class Lus/zoom/zrc/view/IMAddrBookListFragment$7;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$7;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 288
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$7;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$502(Lus/zoom/zrc/view/IMAddrBookListFragment;Z)Z

    const/4 p1, 0x0

    return p1
.end method
