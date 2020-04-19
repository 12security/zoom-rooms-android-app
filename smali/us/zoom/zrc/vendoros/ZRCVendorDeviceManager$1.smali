.class Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$1;
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

    .line 33
    iput-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$1;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$1;->this$0:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-static {p1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->access$000(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    return-void
.end method
