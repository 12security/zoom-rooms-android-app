.class Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$3;
.super Ljava/lang/Object;
.source "VirtualAudioDeviceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 162
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$3;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$3;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$3;->this$0:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    return-void
.end method
