.class Lus/zoom/androidlib/widget/ZMHorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "ZMHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/ZMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 98
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$002(Lus/zoom/androidlib/widget/ZMHorizontalListView;Z)Z

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->invalidate()V

    .line 102
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v1

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onInvalidated()V
    .locals 1

    .line 107
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$100(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V

    .line 108
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->invalidate()V

    .line 109
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$1;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V

    return-void
.end method
