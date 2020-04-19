.class Lus/zoom/zrp/settings/ZRPMainSettingsFragment$3;
.super Ljava/lang/Object;
.source "ZRPMainSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 90
    iput-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$3;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/settings/SettingEvent;->OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method
