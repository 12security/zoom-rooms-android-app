.class Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginNetworkDisconnectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$1;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 55
    invoke-static {}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "0.0.0.0"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ""

    const-string p2, "Network connected, retry..."

    const/4 v0, 0x0

    .line 60
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$1;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->access$000(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;Z)V

    :cond_1
    return-void
.end method
