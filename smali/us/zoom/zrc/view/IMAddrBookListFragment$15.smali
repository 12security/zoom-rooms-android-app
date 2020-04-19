.class Lus/zoom/zrc/view/IMAddrBookListFragment$15;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->onResume()V
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

    .line 598
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$15;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 602
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$15;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$100(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$15;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$1100(Lus/zoom/zrc/view/IMAddrBookListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    return-void
.end method
