.class Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout$1;
.super Landroid/graphics/Paint;
.source "CameraControlPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout$1;->this$0:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout$1;->setDither(Z)V

    .line 51
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout$1;->setFilterBitmap(Z)V

    return-void
.end method
