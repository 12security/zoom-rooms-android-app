.class Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;
.super Ljava/lang/Object;
.source "SettingMicrophoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;


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

    .line 189
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeeMoreClick(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 2

    .line 192
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "see more button show pass code entry dialog"

    const/4 v0, 0x0

    .line 193
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2$1;-><init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;)V

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 202
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$2;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->access$000(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V

    return-void
.end method
