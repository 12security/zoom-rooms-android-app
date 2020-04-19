.class Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "ZRCRecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/ZRCRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowOnItemTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;-><init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 511
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->access$500(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 512
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->access$500(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :cond_1
    return p2
.end method
