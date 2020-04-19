.class public Lus/zoom/zrc/settings/VirtualBackgroundAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VirtualBackgroundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;,
        Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;,
        Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_NONE:I = 0x0

.field private static final VIEW_TYPE_NORMAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private onItemClickListener:Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;

.field private final virtualBackgroundNoneItem:Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

.field private virtualBackgrounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v6, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    const-string v1, ""

    const-string v4, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgroundNoneItem:Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->updateVirtualBackgrounds()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;)Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->onItemClickListener:Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;

    return-object p0
.end method

.method private getZRDownloadedList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualBackgrounds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    if-nez v2, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_3

    .line 68
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    if-nez p2, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_3

    .line 77
    instance-of v0, p1, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;

    if-nez v0, :cond_2

    return-void

    .line 80
    :cond_2
    check-cast p1, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;

    .line 81
    iget-object p1, p1, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;->virtualBackgroundNoneImg:Landroid/widget/ImageView;

    goto :goto_0

    .line 83
    :cond_3
    instance-of v0, p1, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;

    if-nez v0, :cond_4

    return-void

    .line 86
    :cond_4
    check-cast p1, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;

    .line 87
    iget-object p1, p1, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;->virtualBackgroundListNormalImg:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getSmall_img_url()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->virtual_background_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-static {}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedVirtualBackground()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->selected_rounded_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 105
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->selected_rounded_border_port:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    :goto_2
    new-instance v0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;-><init>(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;Lus/zoom/zrcsdk/model/ZRCVirtualBackground;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 56
    new-instance p2, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;

    sget v2, Lus/zoom/zrcbox/R$layout;->virtual_backgrond_list_item_none:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;-><init>(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;Landroid/view/View;)V

    return-object p2

    .line 58
    :cond_0
    new-instance p2, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;

    sget v2, Lus/zoom/zrcbox/R$layout;->virtual_background_list_item:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;-><init>(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->onItemClickListener:Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;

    return-void
.end method

.method updateVirtualBackgrounds()V
    .locals 2

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgroundNoneItem:Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->getZRDownloadedList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
