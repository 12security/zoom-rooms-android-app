.class public Lus/zoom/zrc/view/SwitchCameraPopupWindow;
.super Ljava/lang/Object;
.source "SwitchCameraPopupWindow.java"


# instance fields
.field private anchorView:Landroid/view/View;

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private maxRows:I

.field private popupWindow:Landroid/widget/PopupWindow;

.field public propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private switchableCameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->maxRows:I

    .line 46
    new-instance v0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow$1;-><init>(Lus/zoom/zrc/view/SwitchCameraPopupWindow;)V

    iput-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/SwitchCameraPopupWindow;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->updateSettingsDeviceInfo()V

    return-void
.end method

.method private updateSettingsDeviceInfo()V
    .locals 3

    .line 99
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->switchableCameraList:Ljava/util/List;

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->isDeepEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    return-void

    .line 114
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->anchorView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->show(Ljava/util/List;Landroid/view/View;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 124
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_0
    return-void
.end method

.method public setFixedRows(I)V
    .locals 0

    .line 118
    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->maxRows:I

    return-void
.end method

.method public show(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iput-object p2, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->anchorView:Landroid/view/View;

    .line 66
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$layout;->layout_select_camera_popup_window:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    sget v2, Lus/zoom/zrcbox/R$id;->camera_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/view/FixedRowsRecyclerView;

    .line 68
    iget v3, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->maxRows:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 69
    invoke-virtual {v2, v3}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setMaxRows(I)V

    .line 71
    :cond_1
    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->switchableCameraList:Ljava/util/List;

    .line 72
    new-instance v3, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;

    invoke-direct {v3, v0, p1}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 73
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    invoke-virtual {v2, v3}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance p1, Lus/zoom/zrc/view/RecyclerViewDivider;

    sget v4, Lus/zoom/zrcbox/R$color;->zrc_gray:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p1, v0, v5, v6, v4}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v2, p1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 76
    new-instance p1, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-direct {p1, v1, v0, v0, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    .line 77
    new-instance p1, Lus/zoom/zrc/view/SwitchCameraPopupWindow$2;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow$2;-><init>(Lus/zoom/zrc/view/SwitchCameraPopupWindow;)V

    invoke-virtual {v3, p1}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->setOnItemClickListener(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;)V

    .line 86
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-static {p1, p2}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 89
    new-instance p1, Lus/zoom/zrc/view/SwitchCameraPopupWindow$3;

    invoke-direct {p1, p0, v2}, Lus/zoom/zrc/view/SwitchCameraPopupWindow$3;-><init>(Lus/zoom/zrc/view/SwitchCameraPopupWindow;Lus/zoom/zrc/view/FixedRowsRecyclerView;)V

    invoke-virtual {v2, p1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 95
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
