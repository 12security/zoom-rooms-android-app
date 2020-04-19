.class public Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;
.super Landroid/widget/PopupWindow;
.source "CameraControlPresetPopupWindow.java"


# instance fields
.field private isDefaultPreset:Z

.field private selectedCamera:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

.field private showingIndex:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIZLus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;IZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 18
    iput p6, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->showingIndex:I

    .line 19
    iput-boolean p7, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->isDefaultPreset:Z

    .line 20
    iput-object p5, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->selectedCamera:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-void
.end method


# virtual methods
.method public getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 1

    .line 28
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->selectedCamera:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-object v0
.end method

.method public getShowingIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->showingIndex:I

    return v0
.end method

.method public isDefaultPreset()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->isDefaultPreset:Z

    return v0
.end method
