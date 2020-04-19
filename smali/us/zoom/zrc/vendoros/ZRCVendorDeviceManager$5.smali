.class Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$5;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRCVendorDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->setup()V
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

    .line 98
    iput-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$5;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$5;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->access$400(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;Ljava/lang/String;)V

    return-void
.end method
