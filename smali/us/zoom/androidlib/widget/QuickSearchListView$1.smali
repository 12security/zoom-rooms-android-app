.class Lus/zoom/androidlib/widget/QuickSearchListView$1;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 137
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$000(Lus/zoom/androidlib/widget/QuickSearchListView;)Lus/zoom/androidlib/widget/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    instance-of v0, v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$100(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$100(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
