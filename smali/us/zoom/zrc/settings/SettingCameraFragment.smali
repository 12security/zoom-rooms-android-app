.class public Lus/zoom/zrc/settings/SettingCameraFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingCameraFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingCameraFragment"


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

.field private advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

.field private advancedSettingsDescriptionView:Landroid/view/View;

.field private backBtn:Landroid/view/View;

.field private listView:Landroid/widget/ListView;

.field private menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

.field private title:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->selectCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingCameraFragment;)Landroid/widget/ListView;
    .locals 0

    .line 30
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/SettingCameraFragment;)Lus/zoom/zrc/settings/CameraMenuPopupWindow;
    .locals 0

    .line 30
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->showRenameDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->showAdvancePtzCameraSettings(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method private hasCamera()Z
    .locals 2

    .line 235
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasComDevice()Z
    .locals 2

    .line 230
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOnlySupportPtzCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSupportRenameCamera()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->hasComDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOnlySupportRenameCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSupportRenameCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->hasComDevice()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupportAdvanceSettings()Z
    .locals 1

    .line 219
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->hasCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->hasComDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isSupportRenameCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportRenameCamera()Z
    .locals 3

    .line 240
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 242
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSupportRenameCamera()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private isSupportShowMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)Z
    .locals 2

    .line 223
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->hasComDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSupportRenameCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private onUpdateDeviceInfoView()V
    .locals 6

    .line 105
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setDeviceSourceList(Ljava/util/List;I)V

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->notifyDataSetChanged()V

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-virtual {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->dismiss()V

    .line 112
    :cond_0
    invoke-direct {p0, v2}, Lus/zoom/zrc/settings/SettingCameraFragment;->updateMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    return-void

    .line 115
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v3, v2, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setDeviceSourceList(Ljava/util/List;I)V

    .line 117
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->notifyDataSetChanged()V

    .line 118
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCameraFragment;->updateMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 119
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->setCameraList(Ljava/util/List;)V

    .line 122
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->setComCameraList(Ljava/util/List;)V

    const-string v1, ""

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraDeviceList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",getComDeviceList="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancedSettingsDescriptionView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 126
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isSupportAdvanceSettings()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private onUpdateLockedState()V
    .locals 2

    .line 131
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setLockedState(Z)V

    return-void
.end method

.method private selectCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lus/zoom/zrcsdk/PTApp;->selectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showAdvancePtzCameraSettings(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-direct {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    .line 273
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->setPresentDeviceInfo(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 274
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-virtual {p1}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 277
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private showMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 4

    .line 177
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 185
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 188
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 189
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    new-instance v2, Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1, v0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;I)V

    iput-object v2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->setOnCameraEditSelectListener(Lus/zoom/zrc/settings/CameraMenuPopupWindow$OnCameraMenuSelectListener;)V

    .line 192
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->show()V

    return-void
.end method

.method private showRenameDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/settings/CameraNameEditDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method private updateMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->getAnchorPosition()I

    move-result v0

    .line 200
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->getAnchorDeviceInfo()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 201
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 207
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lus/zoom/zrc/settings/SettingCameraFragment$2;

    invoke-direct {v2, p0, v1, p1}, Lus/zoom/zrc/settings/SettingCameraFragment$2;-><init>(Lus/zoom/zrc/settings/SettingCameraFragment;ILus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 202
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->menuPopupWindow:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->onUpdateDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isInMeeting()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 100
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingCameraFragment;->batchHideView(Ljava/util/List;)V

    .line 101
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingCameraFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->onBack()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 62
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_camera:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->title:Landroid/view/View;

    .line 64
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->backBtn:Landroid/view/View;

    .line 65
    sget p2, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->advanced_settings_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancedSettingsDescriptionView:Landroid/view/View;

    .line 67
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancedSettingsDescriptionView:Landroid/view/View;

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isSupportAdvanceSettings()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    new-instance p2, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isInMeeting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isInPhoneCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p2, p3, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    .line 69
    new-instance p2, Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-direct {p2}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->advancePtzCameraSettings:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    .line 70
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 73
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingCameraFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    return-object p1
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

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    const-string p2, ""

    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "item click to select camera ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 144
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lus/zoom/zrc/settings/SettingCameraFragment$1;

    invoke-direct {p4, p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment$1;-><init>(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-static {p2, p3, p4}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 156
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->selectCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 161
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    const-string p2, ""

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "long click to edit camera ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->isOnlySupportRenameCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->onRename(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->isOnlySupportPtzCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->onSetCom(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->isSupportShowMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    return p3

    .line 171
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->showMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_3
    :goto_0
    return p3
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 46
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->onUpdateDeviceInfoView()V

    goto :goto_0

    .line 48
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_1

    .line 49
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->onUpdateLockedState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRename(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 3

    .line 290
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingCameraFragment$3;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment$3;-><init>(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->showRenameDialog(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method public onSetCom(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 3

    .line 307
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingCameraFragment$4;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment$4;-><init>(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCameraFragment;->showAdvancePtzCameraSettings(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 80
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingCameraFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->onUpdateDeviceInfoView()V

    .line 83
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCameraFragment;->onUpdateLockedState()V

    return-void
.end method
