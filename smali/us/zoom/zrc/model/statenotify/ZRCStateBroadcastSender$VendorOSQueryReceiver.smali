.class Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZRCStateBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorOSQueryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;)V
    .locals 0

    .line 607
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "query_type"

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 613
    iget-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;->this$0:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-static {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$1000(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->access$1100(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;ZI)V

    :cond_0
    return-void
.end method
