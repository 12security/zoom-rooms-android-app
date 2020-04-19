.class public Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SwitchCameraAdapter.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/IStringAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;,
        Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;",
        ">;",
        "Lus/zoom/zrc/view/adapter/IStringAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;)Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStringList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 42
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 68
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 58
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->layout_select_camera_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    sget v0, Lus/zoom/zrcbox/R$id;->camera_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p2, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-object p2
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;

    return-void
.end method
