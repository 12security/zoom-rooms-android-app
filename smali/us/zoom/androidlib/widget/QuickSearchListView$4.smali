.class Lus/zoom/androidlib/widget/QuickSearchListView$4;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/QuickSearchListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/QuickSearchListView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/QuickSearchListView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView$4;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 188
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$4;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$400(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$4;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$400(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$4;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$400(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$4;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$400(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
