.class public Lus/zoom/zrc/settings/WhiteboardCameraAdapter;
.super Landroid/widget/BaseAdapter;
.source "WhiteboardCameraAdapter.java"


# static fields
.field static final LIST_OTHER_ITEM_HOST:Ljava/lang/String; = "LIST_OTHER_ITEM_HOST"


# instance fields
.field private mContext:Landroid/content/Context;

.field private wbcameras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->onUpdateWbCameraList()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

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

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

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

    .line 76
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 77
    sget v1, Lus/zoom/zrcbox/R$layout;->whiteboard_camera_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_0
    iget-object p3, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 81
    sget p3, Lus/zoom/zrcbox/R$id;->wbcamera_item_tv:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 82
    sget v1, Lus/zoom/zrcbox/R$id;->iv_selected:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->isSameAs(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 86
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 92
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-object p2
.end method

.method onUpdateWbCameraList()V
    .locals 10

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

    .line 33
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 36
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 43
    invoke-virtual {v1, v4}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->isSameAs(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    iget-object v5, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object v5, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_2
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 54
    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->wbcameras:Ljava/util/List;

    new-instance v9, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    const-string v3, "LIST_OTHER_ITEM_HOST"

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->pair_wbcamera_via_ip:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lus/zoom/zrcsdk/model/ZMDeviceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
