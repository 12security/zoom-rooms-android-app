.class Lus/zoom/zrp/ZRPSettingsFragment$1;
.super Landroid/app/Dialog;
.source "ZRPSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPSettingsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPSettingsFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPSettingsFragment;Landroid/content/Context;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/zrp/ZRPSettingsFragment$1;->this$0:Lus/zoom/zrp/ZRPSettingsFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 69
    iget-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment$1;->this$0:Lus/zoom/zrp/ZRPSettingsFragment;

    invoke-static {v0}, Lus/zoom/zrp/ZRPSettingsFragment;->access$000(Lus/zoom/zrp/ZRPSettingsFragment;)V

    return-void
.end method
