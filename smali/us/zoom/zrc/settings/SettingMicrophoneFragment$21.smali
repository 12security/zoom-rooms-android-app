.class Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingMicrophoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

.field final synthetic val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 3

    .line 868
    check-cast p1, Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->access$1900(Lus/zoom/zrc/settings/SettingMicrophoneFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    const-string p1, "onItemLongClick: device id: %s, device name: %s "

    const/4 v0, 0x2

    .line 869
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$21;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
