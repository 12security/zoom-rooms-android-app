.class Lus/zoom/zrc/settings/SettingMenuFragment$13;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMenuFragment;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingMenuFragment;I)V
    .locals 0

    .line 846
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$13;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    iput p2, p0, Lus/zoom/zrc/settings/SettingMenuFragment$13;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 849
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingMenuFragment$13;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingMenuFragment;->access$1000(Lus/zoom/zrc/settings/SettingMenuFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$13;->val$value:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
