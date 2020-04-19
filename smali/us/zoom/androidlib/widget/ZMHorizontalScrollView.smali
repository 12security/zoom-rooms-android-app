.class public Lus/zoom/androidlib/widget/ZMHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ZMHorizontalScrollView.java"


# instance fields
.field private onZMScrollChangedListener:Lus/zoom/androidlib/widget/OnZMScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 29
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalScrollView;->onZMScrollChangedListener:Lus/zoom/androidlib/widget/OnZMScrollChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 30
    invoke-interface/range {v0 .. v5}, Lus/zoom/androidlib/widget/OnZMScrollChangedListener;->onScrollChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setOnZMScrollChangedListener(Lus/zoom/androidlib/widget/OnZMScrollChangedListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalScrollView;->onZMScrollChangedListener:Lus/zoom/androidlib/widget/OnZMScrollChangedListener;

    return-void
.end method
