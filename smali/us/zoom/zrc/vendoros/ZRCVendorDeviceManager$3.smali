.class Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$3;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRCVendorDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;


# direct methods
.method constructor <init>(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$3;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 50
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->QueryWithPairingCodeFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 51
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$3;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-static {p1, v1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->access$202(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;Z)Z

    goto :goto_0

    .line 55
    :cond_0
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_1

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$3;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-static {p1, v1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->access$202(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
