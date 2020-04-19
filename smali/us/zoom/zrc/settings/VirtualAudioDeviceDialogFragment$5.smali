.class Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;
.super Ljava/lang/Object;
.source "VirtualAudioDeviceDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;


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

    .line 198
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "item click at position %d, networkDeviceId %s, networkDeviceName %s, isManuallyChecked %b"

    const/4 v1, 0x4

    .line 201
    new-array v1, v1, [Ljava/lang/Object;

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 201
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_0

    .line 204
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3, p4}, Lus/zoom/zrcsdk/PTApp;->selectNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3, p4}, Lus/zoom/zrcsdk/PTApp;->unSelectNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    .line 209
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    sget p3, Lus/zoom/zrcbox/R$string;->selected:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    sget p3, Lus/zoom/zrcbox/R$string;->unselected:I

    :goto_1
    invoke-virtual {p2, p3}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
