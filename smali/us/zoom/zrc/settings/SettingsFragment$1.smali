.class Lus/zoom/zrc/settings/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingsFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingsFragment$1;->this$0:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment$1;->this$0:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment$1;->this$0:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingsFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment$1;->this$0:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment$1;->this$0:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment$1;->this$0:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingsFragment;->access$000(Lus/zoom/zrc/settings/SettingsFragment;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
