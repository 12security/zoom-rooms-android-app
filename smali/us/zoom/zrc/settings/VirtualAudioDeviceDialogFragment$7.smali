.class Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$7;
.super Ljava/lang/Object;
.source "VirtualAudioDeviceDialogFragment.java"

# interfaces
.implements Lus/zoom/androidlib/util/CollectionsUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->networkDeviceFilter(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lus/zoom/androidlib/util/CollectionsUtil$Filter<",
        "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$7;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 270
    check-cast p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$7;->apply(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)Z

    move-result p1

    return p1
.end method

.method public apply(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)Z
    .locals 2

    .line 273
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isShownAllVirtualAudioDevices()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method
