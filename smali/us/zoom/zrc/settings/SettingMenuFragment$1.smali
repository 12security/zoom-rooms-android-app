.class Lus/zoom/zrc/settings/SettingMenuFragment$1;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingMenuFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingMenuFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$1;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment$1;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->access$000(Lus/zoom/zrc/settings/SettingMenuFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->access$100(Lus/zoom/zrc/settings/SettingMenuFragment;Landroid/view/View;)V

    return-void
.end method
