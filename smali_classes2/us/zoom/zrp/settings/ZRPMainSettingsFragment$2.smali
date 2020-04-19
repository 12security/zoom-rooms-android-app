.class Lus/zoom/zrp/settings/ZRPMainSettingsFragment$2;
.super Ljava/lang/Object;
.source "ZRPMainSettingsFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;


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

    .line 78
    iput-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$2;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockToRun()V
    .locals 1

    .line 81
    iget-object v0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$2;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-static {v0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->access$100(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    return-void
.end method

.method public shouldBlock()Z
    .locals 1

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    return v0
.end method
