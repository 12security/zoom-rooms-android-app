.class Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;
.super Ljava/lang/Object;
.source "NetworkDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/NetworkDeviceAdapter;->onBindViewHolder(Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

.field final synthetic val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/NetworkDeviceAdapter;ILus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    iput p2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->val$position:I

    iput-object p3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 105
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-static {p1}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->access$000(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-static {p1}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->access$000(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->val$position:I

    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;->onClick(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
