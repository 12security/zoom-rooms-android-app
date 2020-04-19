.class public Lus/zoom/androidlib/widget/ZMSquareImageView;
.super Landroid/widget/ImageView;
.source "ZMSquareImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 25
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSquareImageView;->getMeasuredWidth()I

    move-result p1

    .line 26
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSquareImageView;->getMeasuredHeight()I

    move-result p2

    if-le p1, p2, :cond_0

    move p1, p2

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p1}, Lus/zoom/androidlib/widget/ZMSquareImageView;->setMeasuredDimension(II)V

    return-void
.end method
