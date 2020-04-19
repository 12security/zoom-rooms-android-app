.class public Lus/zoom/androidlib/widget/ZMMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZMMenuAdapter.java"


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

.field private mFontSize:F

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMenuItemType;>;"
        }
    .end annotation
.end field

.field private mShowIcon:Z

.field private mShowSelectStatus:Z

.field private mSmallfontMultilineMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mShowIcon:Z

    .line 24
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mShowSelectStatus:Z

    .line 25
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mSmallfontMultilineMode:Z

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mFontSize:F

    .line 29
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mShowIcon:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZF)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMMenuAdapter;-><init>(Landroid/content/Context;Z)V

    .line 35
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mSmallfontMultilineMode:Z

    .line 36
    iput p3, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mFontSize:F

    return-void
.end method

.method private onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
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

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/IZMMenuItem;

    .line 74
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->addItem(Lus/zoom/androidlib/widget/IZMMenuItem;)V

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

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 68
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->addItem(Lus/zoom/androidlib/widget/IZMMenuItem;)V

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

    .line 79
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 107
    sget v0, Lus/zoom/androidlib/R$layout;->zm_menu_item:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 90
    invoke-direct {p0, p2, p3}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/IZMMenuItem;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_1
    invoke-virtual {p0, p2, p1}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->onBindView(Landroid/view/View;Lus/zoom/androidlib/widget/IZMMenuItem;)V

    return-object p2
.end method

.method public ismShowIcon()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mShowIcon:Z

    return v0
.end method

.method public ismShowSelectStatus()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mShowSelectStatus:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;Lus/zoom/androidlib/widget/IZMMenuItem;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/androidlib/widget/IZMMenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TMenuItemType;)V"
        }
    .end annotation

    .line 112
    sget v0, Lus/zoom/androidlib/R$id;->check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/ZMCheckedTextView;

    .line 113
    sget v1, Lus/zoom/androidlib/R$id;->imgIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 114
    sget v2, Lus/zoom/androidlib/R$id;->txtLabel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    iget-boolean v3, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mSmallfontMultilineMode:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 117
    iget v3, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mFontSize:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    :cond_0
    invoke-interface {p2}, Lus/zoom/androidlib/widget/IZMMenuItem;->isDisable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    sget v3, Lus/zoom/androidlib/R$color;->zm_ui_kit_color_gray_E4E4ED:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 123
    :cond_1
    sget v3, Lus/zoom/androidlib/R$color;->zm_ui_kit_color_white_ffffff:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    :goto_0
    invoke-interface {p2}, Lus/zoom/androidlib/widget/IZMMenuItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->ismShowIcon()Z

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-interface {p2}, Lus/zoom/androidlib/widget/IZMMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 131
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :goto_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->ismShowSelectStatus()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/widget/ZMCheckedTextView;->setVisibility(I)V

    .line 138
    invoke-interface {p2}, Lus/zoom/androidlib/widget/IZMMenuItem;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMCheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {v0, v3}, Lus/zoom/androidlib/widget/ZMCheckedTextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setShowSelectedStatus(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMMenuAdapter;->mShowSelectStatus:Z

    return-void
.end method
