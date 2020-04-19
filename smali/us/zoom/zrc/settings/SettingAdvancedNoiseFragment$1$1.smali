.class Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingAdvancedNoiseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1$1;->this$1:Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;

    iput p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1$1;->val$mode:I

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 93
    check-cast p1, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;

    iget v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1$1;->val$mode:I

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->access$000(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;I)V

    return-void
.end method
