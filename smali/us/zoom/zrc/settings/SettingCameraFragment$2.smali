.class Lus/zoom/zrc/settings/SettingCameraFragment$2;
.super Ljava/lang/Object;
.source "SettingCameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingCameraFragment;->updateMenuPopupWindow(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

.field final synthetic val$indexOfMenuDeviceInfo:I

.field final synthetic val$settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingCameraFragment;ILus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

    iput p2, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->val$indexOfMenuDeviceInfo:I

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->val$settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingCameraFragment;->access$100(Lus/zoom/zrc/settings/SettingCameraFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->val$indexOfMenuDeviceInfo:I

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

    invoke-static {v2}, Lus/zoom/zrc/settings/SettingCameraFragment;->access$100(Lus/zoom/zrc/settings/SettingCameraFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->this$0:Lus/zoom/zrc/settings/SettingCameraFragment;

    invoke-static {v1}, Lus/zoom/zrc/settings/SettingCameraFragment;->access$200(Lus/zoom/zrc/settings/SettingCameraFragment;)Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->val$settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    iget v3, p0, Lus/zoom/zrc/settings/SettingCameraFragment$2;->val$indexOfMenuDeviceInfo:I

    invoke-virtual {v1, v2, v0, v3}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->onUpdateDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;Landroid/view/View;I)V

    return-void
.end method
