.class Lus/zoom/androidlib/widget/ZMHorizontalListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    .line 338
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 342
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 348
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 355
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    monitor-enter p1

    .line 356
    :try_start_0
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    iget p4, p2, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    float-to-int p3, p3

    add-int/2addr p4, p3

    iput p4, p2, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mNextX:I

    .line 357
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 357
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 366
    :goto_0
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 367
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v2, v1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 369
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    .line 370
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 371
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 372
    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$200(Lus/zoom/androidlib/widget/ZMHorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 375
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$200(Lus/zoom/androidlib/widget/ZMHorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {v5}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$300(Lus/zoom/androidlib/widget/ZMHorizontalListView;)I

    move-result p1

    add-int/2addr p1, v3

    add-int v7, p1, v1

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    iget-object p1, p1, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$300(Lus/zoom/androidlib/widget/ZMHorizontalListView;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    move-object v6, v2

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 377
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$400(Lus/zoom/androidlib/widget/ZMHorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 378
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$400(Lus/zoom/androidlib/widget/ZMHorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {v5}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$300(Lus/zoom/androidlib/widget/ZMHorizontalListView;)I

    move-result p1

    add-int/2addr p1, v3

    add-int v7, p1, v1

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    iget-object p1, p1, Lus/zoom/androidlib/widget/ZMHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$3;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->access$300(Lus/zoom/androidlib/widget/ZMHorizontalListView;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    move-object v6, v2

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    return v3
.end method
