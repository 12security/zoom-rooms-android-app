.class Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;
.super Ljava/lang/Object;
.source "SettingAdvancedNoiseFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 89
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1$1;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1$1;-><init>(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;I)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->access$000(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;I)V

    return-void
.end method
