.class public Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
.source "SettingRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/SettingRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityAlertDialogFragment"
.end annotation


# static fields
.field static final Type_Reboot:I = 0x0

.field static final Type_Reboot_With_Note:I = 0x2

.field static final Type_ShutDown:I = 0x1

.field static final Type_ShutDown_With_Note:I = 0x3

.field static final Type_SignOut:I = 0x4


# instance fields
.field type:I

.field private uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 883
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 899
    new-instance v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment$1;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    return-void
.end method


# virtual methods
.method isRebootType()Z
    .locals 2

    .line 892
    iget v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isShutDownType()Z
    .locals 3

    .line 896
    iget v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 917
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 918
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 923
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onDestroy()V

    .line 924
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method
