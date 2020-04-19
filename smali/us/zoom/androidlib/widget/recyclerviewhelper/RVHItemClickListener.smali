.class public Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;
.super Ljava/lang/Object;
.source "RVHItemClickListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;->mListener:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;

    .line 31
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$1;-><init>(Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;->mListener:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 43
    iget-object p2, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;->mListener:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
