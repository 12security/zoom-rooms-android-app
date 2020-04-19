.class Lus/zoom/androidlib/util/HeadsetUtil$1;
.super Ljava/lang/Object;
.source "HeadsetUtil.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/HeadsetUtil;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/HeadsetUtil;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/HeadsetUtil;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 105
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .line 106
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/HeadsetUtil;->access$202(Lus/zoom/androidlib/util/HeadsetUtil;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 110
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 115
    iget-object p2, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$602(Lus/zoom/androidlib/util/HeadsetUtil;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 116
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/HeadsetUtil;->access$702(Lus/zoom/androidlib/util/HeadsetUtil;Z)Z

    .line 117
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$400(Lus/zoom/androidlib/util/HeadsetUtil;)V

    .line 118
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$800(Lus/zoom/androidlib/util/HeadsetUtil;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 88
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$000(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$000(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 90
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$100(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$200(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$100(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {v1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$200(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 92
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/HeadsetUtil;->access$202(Lus/zoom/androidlib/util/HeadsetUtil;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 94
    :cond_1
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/HeadsetUtil;->access$302(Lus/zoom/androidlib/util/HeadsetUtil;Z)Z

    .line 95
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$400(Lus/zoom/androidlib/util/HeadsetUtil;)V

    .line 96
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$1;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {p1}, Lus/zoom/androidlib/util/HeadsetUtil;->access$500(Lus/zoom/androidlib/util/HeadsetUtil;)V

    return-void
.end method
