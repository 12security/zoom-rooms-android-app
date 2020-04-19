.class Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$6;
.super Ljava/lang/Object;
.source "VirtualAudioDeviceDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$6;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "identity click at position %d, networkDeviceId %s, networkDeviceName %s, isSelected %b"

    const/4 v1, 0x4

    .line 216
    new-array v1, v1, [Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p4, 0x3

    aput-object p1, v1, p4

    .line 216
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget-object p4, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$6;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {p4}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object p4

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object p4

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$6;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, p2, p3}, Lus/zoom/zrcsdk/PTApp;->identifyNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
