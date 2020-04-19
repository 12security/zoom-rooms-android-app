.class public Lus/zoom/androidlib/widget/ZMChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZMChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MenuItemType::",
        "Lus/zoom/androidlib/widget/IZMMenuItem;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawableChoiceResId:I

.field private mDrawableContentDescription:Ljava/lang/String;

.field private mFontSize:F

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMenuItemType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mFontSize:F

    .line 25
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mDrawableChoiceResId:I

    .line 27
    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mDrawableContentDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;F)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMChoiceAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    iput p4, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mFontSize:F

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMenuItemType;>;)V"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/IZMMenuItem;

    .line 58
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->addItem(Lus/zoom/androidlib/widget/IZMMenuItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([Lus/zoom/androidlib/widget/IZMMenuItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TMenuItemType;)V"
        }
    .end annotation

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 52
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->addItem(Lus/zoom/androidlib/widget/IZMMenuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addItem(Lus/zoom/androidlib/widget/IZMMenuItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMenuItemType;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 73
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 74
    sget v0, Lus/zoom/androidlib/R$layout;->zm_item_with_choice:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    :cond_0
    sget v0, Lus/zoom/androidlib/R$id;->txtTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget v1, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mFontSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    :cond_1
    sget v1, Lus/zoom/androidlib/R$id;->imgIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    iget v2, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mDrawableChoiceResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mDrawableContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMChoiceAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/IZMMenuItem;

    if-nez p1, :cond_2

    return-object p3

    .line 87
    :cond_2
    invoke-interface {p1}, Lus/zoom/androidlib/widget/IZMMenuItem;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-interface {p1}, Lus/zoom/androidlib/widget/IZMMenuItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method
