.class Lus/zoom/zrp/settings/ZRPMainSettingsFragment$6;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRPMainSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->onUnlockForLockSettingsSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$6;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 119
    check-cast p1, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-static {p1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->access$300(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->performClick()Z

    return-void
.end method
