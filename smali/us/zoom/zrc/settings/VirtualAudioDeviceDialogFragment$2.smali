.class Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;
.super Ljava/lang/Object;
.source "VirtualAudioDeviceDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 100
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardClosed()V
    .locals 1

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$000(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$000(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->access$100(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public onKeyboardOpen()V
    .locals 0

    return-void
.end method

.method public onKeyboardSizeChanged()V
    .locals 0

    return-void
.end method
