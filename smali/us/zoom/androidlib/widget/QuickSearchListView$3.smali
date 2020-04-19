.class Lus/zoom/androidlib/widget/QuickSearchListView$3;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 168
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView$3;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$3;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$300(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$3;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$300(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView$3;->this$0:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->access$000(Lus/zoom/androidlib/widget/QuickSearchListView;)Lus/zoom/androidlib/widget/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
