.class Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;
.super Lus/zoom/androidlib/util/EventAction;
.source "SettingWhiteboardCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 156
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;->this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;->this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;->val$item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->access$100(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    return-void
.end method
