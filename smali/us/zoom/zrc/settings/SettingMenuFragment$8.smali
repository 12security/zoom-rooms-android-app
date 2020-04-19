.class Lus/zoom/zrc/settings/SettingMenuFragment$8;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMenuFragment;->onUnlockForLockSettingsSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingMenuFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$8;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 390
    check-cast p1, Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingMenuFragment;->access$700(Lus/zoom/zrc/settings/SettingMenuFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->performClick()Z

    return-void
.end method
