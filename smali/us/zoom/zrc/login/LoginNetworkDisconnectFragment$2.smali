.class Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;
.super Ljava/lang/Object;
.source "LoginNetworkDisconnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

.field final synthetic val$systemSettings:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;->val$systemSettings:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getZoomRoomPassCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;->val$systemSettings:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", has pass code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2$1;-><init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;)V

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 109
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->access$100(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V

    return-void
.end method
