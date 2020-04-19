.class Lus/zoom/zrc/settings/SettingCECScreenControlFragment$1;
.super Ljava/lang/Object;
.source "SettingCECScreenControlFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOnCecScreens(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingCECScreenControlFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingCECScreenControlFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment$1;->this$0:Lus/zoom/zrc/settings/SettingCECScreenControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment$1;->this$0:Lus/zoom/zrc/settings/SettingCECScreenControlFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->access$000(Lus/zoom/zrc/settings/SettingCECScreenControlFragment;Z)V

    .line 153
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment$1;->this$0:Lus/zoom/zrc/settings/SettingCECScreenControlFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->dismissWaitingDialog()V

    return-void
.end method
