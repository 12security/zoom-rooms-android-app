.class public interface abstract Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;
.super Ljava/lang/Object;
.source "ICameraControl.java"

# interfaces
.implements Lus/zoom/zrc/camera_control/view/ICameraControl$BasicUserActionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/ICameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdvancedUserActionsListener"
.end annotation


# virtual methods
.method public abstract loadCameraControlView(Lus/zoom/zrc/camera_control/model/CameraShareData;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
.end method

.method public abstract onGoToPreset(I)V
.end method

.method public abstract onPresetOperations(I)V
.end method

.method public abstract rename(ILjava/lang/String;)V
.end method

.method public abstract saveCameraPosition(I)V
.end method

.method public abstract setCameraDefaultPosition(ZI)V
.end method

.method public abstract switchIntelligentZoom(Z)V
.end method

.method public abstract switchVideoMirror()V
.end method

.method public abstract toRenameOfPreset(I)V
.end method
