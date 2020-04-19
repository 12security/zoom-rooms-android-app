.class Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$3;
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


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$3;->this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 181
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
