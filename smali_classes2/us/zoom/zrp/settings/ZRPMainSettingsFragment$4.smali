.class Lus/zoom/zrp/settings/ZRPMainSettingsFragment$4;
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

    .line 98
    iput-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$4;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$4;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-static {p1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->access$200(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$4;->this$0:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-static {p1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->access$200(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;->onRoomSettingsClicked()V

    :cond_0
    return-void
.end method
