.class Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$4;
.super Ljava/lang/Object;
.source "HostAskStartMediaDeviceAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$4;->this$0:Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "user do stay muted"

    const/4 p2, 0x0

    .line 192
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/ConfApp;->answerHostRequestUnmuteAudio(Z)Z

    return-void
.end method
