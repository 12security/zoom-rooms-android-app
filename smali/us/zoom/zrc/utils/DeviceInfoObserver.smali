.class public Lus/zoom/zrc/utils/DeviceInfoObserver;
.super Ljava/lang/Object;
.source "DeviceInfoObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;,
        Lus/zoom/zrc/utils/DeviceInfoObserver$SpeakVolumeListener;
    }
.end annotation


# static fields
.field private static instance:Lus/zoom/zrc/utils/DeviceInfoObserver;


# instance fields
.field private lockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;",
            ">;"
        }
    .end annotation
.end field

.field private volumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/DeviceInfoObserver$SpeakVolumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;
    .locals 2

    .line 25
    sget-object v0, Lus/zoom/zrc/utils/DeviceInfoObserver;->instance:Lus/zoom/zrc/utils/DeviceInfoObserver;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lus/zoom/zrc/utils/DeviceInfoObserver;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lus/zoom/zrc/utils/DeviceInfoObserver;->instance:Lus/zoom/zrc/utils/DeviceInfoObserver;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lus/zoom/zrc/utils/DeviceInfoObserver;

    invoke-direct {v1}, Lus/zoom/zrc/utils/DeviceInfoObserver;-><init>()V

    sput-object v1, Lus/zoom/zrc/utils/DeviceInfoObserver;->instance:Lus/zoom/zrc/utils/DeviceInfoObserver;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lus/zoom/zrc/utils/DeviceInfoObserver;->instance:Lus/zoom/zrc/utils/DeviceInfoObserver;

    return-object v0
.end method


# virtual methods
.method public addSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSpeakVolumeListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SpeakVolumeListener;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifySettingLocked(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-interface {v1, p1}, Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;->onSettingLocked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySpeakVolumeStatus(I)V
    .locals 2

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/DeviceInfoObserver$SpeakVolumeListener;

    invoke-interface {v1, p1}, Lus/zoom/zrc/utils/DeviceInfoObserver$SpeakVolumeListener;->changeSpeakerVolume(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V
    .locals 1

    .line 51
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSpeakerVolumeListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SpeakVolumeListener;)V
    .locals 1

    .line 41
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lus/zoom/zrc/utils/DeviceInfoObserver;->volumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
