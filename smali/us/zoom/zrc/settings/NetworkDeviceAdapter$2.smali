.class Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;
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

.field final synthetic val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/NetworkDeviceAdapter;Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;I)V
    .locals 0

    .line 125
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    iput-object p2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    iput-object p3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iput p4, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 132
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object v1, v1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->setManuallyChecked(Z)V

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object v0, v0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    iget-object v2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object v2, v2, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object v3, v3, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->access$100(Lus/zoom/zrc/settings/NetworkDeviceAdapter;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-static {v0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->access$200(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)V

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-static {v0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->access$300(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->this$0:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-static {v0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->access$300(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;

    move-result-object v1

    iget v3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$position:I

    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$deviceInfo:Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 139
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;->val$holder:Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
