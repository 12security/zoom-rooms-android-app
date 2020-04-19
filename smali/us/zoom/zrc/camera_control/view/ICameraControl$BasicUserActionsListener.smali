.class public interface abstract Lus/zoom/zrc/camera_control/view/ICameraControl$BasicUserActionsListener;
.super Ljava/lang/Object;
.source "ICameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/ICameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BasicUserActionsListener"
.end annotation


# virtual methods
.method public abstract camDown(I)V
.end method

.method public abstract camLeft(I)V
.end method

.method public abstract camRight(I)V
.end method

.method public abstract camUp(I)V
.end method

.method public abstract done(Landroid/app/Dialog;)V
.end method

.method public abstract switchCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
.end method

.method public abstract zoomIn(I)V
.end method

.method public abstract zoomOut(I)V
.end method
