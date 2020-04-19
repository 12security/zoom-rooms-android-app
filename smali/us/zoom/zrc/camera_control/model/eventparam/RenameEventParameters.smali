.class public Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;
.super Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;
.source "RenameEventParameters.java"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;-><init>(Lus/zoom/zrcsdk/PTApp;Lus/zoom/zrc/model/AppModel;I)V

    .line 25
    iput-object p4, p0, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenameEventParameters{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-super {p0}, Lus/zoom/zrc/camera_control/model/eventparam/GoToPresetEventParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
