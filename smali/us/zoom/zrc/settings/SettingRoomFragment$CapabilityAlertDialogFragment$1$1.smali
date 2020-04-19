.class Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1;->onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1;Ljava/lang/String;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1$1;->this$1:Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 908
    check-cast p1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->dismiss()V

    return-void
.end method
