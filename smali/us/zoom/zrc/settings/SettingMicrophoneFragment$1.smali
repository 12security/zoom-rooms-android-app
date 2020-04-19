.class Lus/zoom/zrc/settings/SettingMicrophoneFragment$1;
.super Ljava/lang/Object;
.source "SettingMicrophoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 179
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$1;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 182
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$1;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v0, "parentFragment"

    const-string v2, "from"

    .line 183
    const-class p1, Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "to"

    const-class p1, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 184
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method
