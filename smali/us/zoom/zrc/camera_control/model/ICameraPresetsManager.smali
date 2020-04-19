.class interface abstract Lus/zoom/zrc/camera_control/model/ICameraPresetsManager;
.super Ljava/lang/Object;
.source "ICameraPresetsManager.java"


# static fields
.field public static final MAX_NUM_OF_CAMERA_PRESET:I = 0x3


# virtual methods
.method public abstract cameraPresetDefaultIndex()I
.end method

.method public abstract nameOfPresetAtIndex(I)Ljava/lang/String;
.end method

.method public abstract numberOfPresets()I
.end method

.method public varargs abstract recoverLost([I)V
.end method

.method public abstract setNameForPreset(ILjava/lang/String;)V
.end method

.method public abstract setNamedPresets(Ljava/util/Map;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method
