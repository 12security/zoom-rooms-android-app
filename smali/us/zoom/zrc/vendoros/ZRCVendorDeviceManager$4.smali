.class Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$4;
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

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$4;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$4;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->access$300(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;I)V

    return-void
.end method
