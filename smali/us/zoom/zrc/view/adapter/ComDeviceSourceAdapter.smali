.class public Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ComDeviceSourceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private presentPtzComId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mList:Ljava/util/List;

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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 65
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 66
    sget v1, Lus/zoom/zrcbox/R$layout;->com_device_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;)V

    .line 68
    sget v1, Lus/zoom/zrcbox/R$id;->tv_friendly_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;->friendlyName:Landroid/widget/TextView;

    .line 69
    sget v1, Lus/zoom/zrcbox/R$id;->iv_selected:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;->tick:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;

    .line 77
    :goto_0
    iget-object v1, p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;->friendlyName:Landroid/widget/TextView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->getFriendly_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->getCom_id()I

    move-result p1

    iget v1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->presentPtzComId:I

    if-ne p1, v1, :cond_1

    .line 80
    iget-object p1, p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;->tick:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object p1, p3, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;->tick:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mList:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->notifyDataSetChanged()V

    const-string p1, ""

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPresentPtzComId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->presentPtzComId:I

    return-void
.end method
