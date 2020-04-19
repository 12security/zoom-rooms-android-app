.class public Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;
.super Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
.source "GoToPresetEventParameters.java"


# instance fields
.field private mAppModel:Lus/zoom/zrc/model/AppModel;

.field private final mIndex:I

.field private mPTApp:Lus/zoom/zrcsdk/PTApp;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;I)V
    .locals 1

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, v0, v0}, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;-><init>(II)V

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    .line 25
    iput-object p2, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    .line 26
    iput p3, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mIndex:I

    return-void
.end method


# virtual methods
.method public getAppModel()Lus/zoom/zrc/model/AppModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 38
    iget v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mIndex:I

    return v0
.end method

.method public getPTApp()Lus/zoom/zrcsdk/PTApp;
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoToPresetEventParameters{instruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->getInstruction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mPTApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mAppModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
