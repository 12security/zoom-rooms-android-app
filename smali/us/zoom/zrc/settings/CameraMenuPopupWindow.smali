.class public Lus/zoom/zrc/settings/CameraMenuPopupWindow;
.super Ljava/lang/Object;
.source "CameraMenuPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;
    }
.end annotation


# instance fields
.field private anchorView:Landroid/view/View;

.field private arrowLayout:Landroid/view/View;

.field private cameraMenuSelectListener:Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;

.field private context:Landroid/content/Context;

.field private deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

.field private downArrow:Landroid/view/View;

.field private listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

.field private menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private upArrow:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->position:I

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->context:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 44
    iput-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->anchorView:Landroid/view/View;

    .line 45
    iput p4, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->position:I

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->menuList:Ljava/util/List;

    .line 47
    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSupportRenameCamera()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 48
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->menuList:Ljava/util/List;

    sget p3, Lus/zoom/zrcbox/R$string;->rename:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 51
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 52
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->menuList:Ljava/util/List;

    sget p3, Lus/zoom/zrcbox/R$string;->set_com:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    sget p2, Lus/zoom/zrcbox/R$layout;->camera_rename_popup_window:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->arrowLayout:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->arrowLayout:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->up_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->upArrow:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->arrowLayout:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->down_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->downArrow:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->createListPopupWindow()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/CameraMenuPopupWindow;)Lus/zoom/zrc/view/ZRCListPopupWindow;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    return-object p0
.end method

.method private createListPopupWindow()V
    .locals 4

    .line 61
    new-instance v0, Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$style;->ZRCListPopupWindow:I

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/view/ZRCListPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    .line 62
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$layout;->camera_long_click_popup_item:I

    iget-object v3, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->menuList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 63
    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->menuList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->measureWrapContentWidth(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setWidth(I)V

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setHeight(I)V

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setModal(Z)V

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->anchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->arrowLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->upArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setAbovePromptView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->downArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setBelowPromptView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->settings_item_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setPromptPosition(I)V

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method getAnchorDeviceInfo()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 1

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-object v0
.end method

.method getAnchorPosition()I
    .locals 1

    .line 116
    iget v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->position:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->dismiss()V

    .line 126
    instance-of p1, p2, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->cameraMenuSelectListener:Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;

    if-eqz p1, :cond_2

    .line 130
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->context:Landroid/content/Context;

    sget p3, Lus/zoom/zrcbox/R$string;->rename:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->cameraMenuSelectListener:Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;

    iget-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-interface {p1, p2}, Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;->onRename(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->context:Landroid/content/Context;

    sget p3, Lus/zoom/zrcbox/R$string;->set_com:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->cameraMenuSelectListener:Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;

    iget-object p2, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-interface {p1, p2}, Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;->onSetCom(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method onUpdateDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->dismiss()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 106
    iput p3, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->position:I

    .line 107
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->show()V

    :cond_2
    return-void

    .line 97
    :cond_3
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->dismiss()V

    return-void
.end method

.method setOnCameraEditSelectListener(Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->cameraMenuSelectListener:Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->dismiss()V

    .line 80
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->menuList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->show()V

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->listPopupWindow:Lus/zoom/zrc/view/ZRCListPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/CameraMenuPopupWindow$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow$1;-><init>(Lus/zoom/zrc/settings/CameraMenuPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
