.class Lus/zoom/zrc/view/IMAddrBookListFragment$1;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;
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

    .line 120
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$000(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$100(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$100(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$200(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/adapter/SearchListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->search(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$300(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$100(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$300(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method
