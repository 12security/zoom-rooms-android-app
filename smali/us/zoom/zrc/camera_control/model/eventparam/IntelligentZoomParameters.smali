.class public Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;
.super Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
.source "IntelligentZoomParameters.java"


# instance fields
.field private isOn:Z

.field private mAppModel:Lus/zoom/zrc/model/AppModel;

.field private mPTApp:Lus/zoom/zrcsdk/PTApp;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, v0, v0}, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;-><init>(II)V

    .line 21
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    .line 22
    iput-object p2, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    .line 23
    iput-boolean p3, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->isOn:Z

    return-void
.end method


# virtual methods
.method public getAppModel()Lus/zoom/zrc/model/AppModel;
    .locals 1

    .line 31
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-object v0
.end method

.method public getPTApp()Lus/zoom/zrcsdk/PTApp;
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->isOn:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntelligentZoomParameters{mPTApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->isOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
