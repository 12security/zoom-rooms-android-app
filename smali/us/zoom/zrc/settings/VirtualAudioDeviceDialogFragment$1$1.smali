.class Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "VirtualAudioDeviceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1;->onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1$1;->this$1:Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 75
    check-cast p1, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->dismiss()V

    return-void
.end method
