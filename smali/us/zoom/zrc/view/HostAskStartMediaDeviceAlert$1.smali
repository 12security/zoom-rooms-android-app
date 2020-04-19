.class Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$1;
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

    .line 164
    iput-object p1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$1;->this$0:Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "user do start video"

    const/4 p2, 0x0

    .line 167
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/ConfApp;->answerHostRequestUnmuteVideo(Z)I

    return-void
.end method
