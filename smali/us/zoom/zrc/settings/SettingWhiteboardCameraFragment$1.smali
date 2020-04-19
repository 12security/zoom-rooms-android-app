.class Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$1;
.super Ljava/lang/Object;
.source "SettingWhiteboardCameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;
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

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$1;->this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$1;->this$0:Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->access$000(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
