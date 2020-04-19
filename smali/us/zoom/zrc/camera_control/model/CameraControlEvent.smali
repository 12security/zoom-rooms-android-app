.class public abstract Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.super Ljava/lang/Object;
.source "CameraControlEvent.java"

# interfaces
.implements Lus/zoom/zrc/camera_control/model/Executable;


# instance fields
.field private mParameters:Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/CameraControlEvent;->mParameters:Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    return-void
.end method


# virtual methods
.method protected getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/CameraControlEvent;->mParameters:Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraControlEvent{mParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/CameraControlEvent;->mParameters:Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
