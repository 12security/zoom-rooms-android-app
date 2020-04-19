.class Lus/zoom/zrc/settings/SettingMicrophoneFragment$18;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingMicrophoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onUnlockForAgcCancellationSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$18;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 801
    check-cast p1, Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->access$1600(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->performClick()Z

    return-void
.end method
