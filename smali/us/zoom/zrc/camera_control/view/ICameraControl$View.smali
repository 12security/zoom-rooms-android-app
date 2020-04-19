.class public interface abstract Lus/zoom/zrc/camera_control/view/ICameraControl$View;
.super Ljava/lang/Object;
.source "ICameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/ICameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract enableCameraMoveActions(Z)V
.end method

.method public abstract enableCameraZoomActions(Z)V
.end method

.method public abstract fitScreen()V
.end method

.method public abstract getShowingDialog()Landroid/app/Dialog;
.end method

.method public abstract onCameraIntelligentZoomAvailableChanged(Z)V
.end method

.method public abstract onCameraIntelligentZoomOnChanged(Z)V
.end method

.method public abstract onCameraListChanged(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
.end method

.method public abstract onCameraPresetDefaultPositionUpdate(I)V
.end method

.method public abstract onCanCurrentCameraBeControlledChanged(Z)V
.end method

.method public abstract onCanSwitchCameraChanged(Z)V
.end method

.method public abstract onMyVideoStatusChanged(Z)V
.end method

.method public abstract onOwnVideoMirroredChanged(Z)V
.end method

.method public abstract setBottomLineHidden(Z)V
.end method

.method public abstract setCameraIntelligentZoomAvailable(Z)V
.end method

.method public abstract setCameraIntelligentZoomOn(Z)V
.end method

.method public abstract setCameraPresetClickable(Z)V
.end method

.method public abstract setCameraSharingHintHidden(Z)V
.end method

.method public abstract setDoneHidden(Z)V
.end method

.method public abstract setIntelligentZoomEnable(ZJ)V
.end method

.method public abstract setIntelligentZoomHidden(Z)V
.end method

.method public abstract setMirrorMyVideoEnable(Z)V
.end method

.method public abstract setMirrorMyVideoHidden(Z)V
.end method

.method public abstract setMirrorMyVideoOn(Z)V
.end method

.method public abstract setNameOfCameraPreset(ILjava/lang/String;)V
.end method

.method public abstract setNumberOfPresets(I)V
.end method

.method public abstract setSwitchCameraEnabled(Z)V
.end method

.method public abstract setSwitchCameraHidden(Z)V
.end method

.method public abstract showPassCodeForLockDialog()V
.end method

.method public abstract showPresetPopupWindow(I)V
.end method

.method public abstract showProgressingDialog()V
.end method

.method public abstract showRenamePresetDialog(ILjava/lang/String;)V
.end method

.method public abstract showSwitchableCameraListPopupWindow(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNavigationTitle(Ljava/lang/String;)V
.end method

.method public abstract updateShareCameraName(Ljava/lang/String;)V
.end method
