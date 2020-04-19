.class Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 40
    iput-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$2;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$2;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-static {p1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->access$100(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    return-void
.end method
