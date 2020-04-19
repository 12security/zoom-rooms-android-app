.class Lus/zoom/zrc/settings/SettingMenuFragment$11;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMenuFragment;->signOut()V
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

    .line 704
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$11;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 707
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->logout(Z)V

    const-string p1, "on click %s, work mode is %s"

    const/4 v0, 0x2

    .line 708
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingMenuFragment$11;->this$0:Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-static {v1}, Lus/zoom/zrc/settings/SettingMenuFragment;->access$900(Lus/zoom/zrc/settings/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
