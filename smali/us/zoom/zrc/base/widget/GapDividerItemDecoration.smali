.class public Lus/zoom/zrc/base/widget/GapDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GapDividerItemDecoration.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mDividerSize:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 39
    iput p1, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mDividerSize:I

    const/4 p1, 0x1

    if-ne p1, p2, :cond_0

    .line 41
    iput p1, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mOrientation:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mOrientation:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$dimen;->login_list_item_divider:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mDividerSize:I

    const/4 p1, 0x1

    if-ne p1, p2, :cond_0

    .line 30
    iput p1, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mOrientation:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mOrientation:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDividerSize()I
    .locals 1

    .line 48
    iget v0, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mDividerSize:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 53
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    .line 54
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 56
    iget v0, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mDividerSize:I

    .line 57
    instance-of v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 58
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 59
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    .line 60
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    const/4 v0, 0x0

    .line 65
    :cond_0
    iget p2, p0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;->mOrientation:I

    if-nez p2, :cond_1

    .line 66
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
