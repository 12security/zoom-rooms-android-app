.class Lus/zoom/zrc/view/MeetingMainControllerFragment$1;
.super Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;
.source "MeetingMainControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$1;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoStatusChanged(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$1;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    return-void
.end method
