.class Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;
.super Ljava/lang/Object;
.source "SettingWhiteboardCameraFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->onClickItem(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;->this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 175
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->unpair(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
