.class Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingDeviceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingDeviceProfileFragment;

.field final synthetic val$roomProfileInfo:Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingDeviceProfileFragment;Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;->this$0:Lus/zoom/zrc/settings/SettingDeviceProfileFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;->val$roomProfileInfo:Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;->this$0:Lus/zoom/zrc/settings/SettingDeviceProfileFragment;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;->val$roomProfileInfo:Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->access$000(Lus/zoom/zrc/settings/SettingDeviceProfileFragment;Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;->val$roomProfileInfo:Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->access$100(Lus/zoom/zrc/settings/SettingDeviceProfileFragment;Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V

    :cond_0
    return-void
.end method
