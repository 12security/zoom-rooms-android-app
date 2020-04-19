.class Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "QuickSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/QuickSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private rebuildItemsLater()V
    .locals 2

    .line 418
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->access$200(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-static {v1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->access$100(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->access$200(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-static {v1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->access$100(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 408
    invoke-direct {p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->rebuildItemsLater()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 413
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->access$000(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V

    .line 414
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
