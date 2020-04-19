.class Lus/zoom/zrc/settings/SettingCameraFragment$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingCameraFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

.field final synthetic val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment$1;->this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 148
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Lus/zoom/zrc/settings/SettingCameraFragment;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingCameraFragment;->access$000(Lus/zoom/zrc/settings/SettingCameraFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_0
    return-void
.end method
