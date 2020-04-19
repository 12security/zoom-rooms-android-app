.class Lus/zoom/zrc/settings/SettingMenuFragment$3;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 275
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$3;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 278
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isDisplayTopBanner()Z

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->requestDisplayTopBanner(Z)Z

    return-void
.end method
