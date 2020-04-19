.class Lus/zoom/zrc/settings/SettingSpeakerFragment$2;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingSpeakerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingSpeakerFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;

.field final synthetic val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingSpeakerFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$2;->this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 223
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSpeakerList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSpeakerList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Lus/zoom/zrc/settings/SettingSpeakerFragment;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->access$100(Lus/zoom/zrc/settings/SettingSpeakerFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_0
    return-void
.end method
