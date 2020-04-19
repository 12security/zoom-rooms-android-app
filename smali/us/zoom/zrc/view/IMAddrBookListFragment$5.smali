.class Lus/zoom/zrc/view/IMAddrBookListFragment$5;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


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

    .line 253
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$5;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$5;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$100(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-void
.end method
