.class Lus/zoom/zrc/settings/SettingMicrophoneFragment$6;
.super Ljava/lang/Object;
.source "SettingMicrophoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 239
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$6;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockToRun()V
    .locals 1

    .line 242
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$6;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->access$400(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    return-void
.end method

.method public shouldBlock()Z
    .locals 1

    .line 247
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    return v0
.end method
