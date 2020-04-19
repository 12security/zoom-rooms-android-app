.class public Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;
.super Ljava/lang/Object;
.source "ZRCCameraPresetsManager.java"

# interfaces
.implements Lus/zoom/zrc/camera_control/model/ICameraPresetsManager;


# instance fields
.field private defaultCameraPresetIndex:I

.field private namedPresets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfPresetsSupported:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->numberOfPresetsSupported:I

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->defaultCameraPresetIndex:I

    return-void
.end method

.method public static getManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;
    .locals 1

    .line 20
    new-instance v0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    invoke-direct {v0}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cameraPresetDefaultIndex()I
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->defaultCameraPresetIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nameOfPresetAtIndex(I)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v0, ""

    .line 62
    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized numberOfPresets()I
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    iget v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->numberOfPresetsSupported:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->numberOfPresetsSupported:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs recoverLost([I)V
    .locals 5

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 95
    iget-object v3, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    iget-object v3, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized setNameForPreset(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 75
    iget-object p2, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNamedPresets(Ljava/util/Map;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->namedPresets:Ljava/util/Map;

    .line 42
    iput p2, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->numberOfPresetsSupported:I

    .line 43
    iput p3, p0, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->defaultCameraPresetIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
