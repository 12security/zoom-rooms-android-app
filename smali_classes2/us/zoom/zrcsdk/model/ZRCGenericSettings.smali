.class public Lus/zoom/zrcsdk/model/ZRCGenericSettings;
.super Ljava/lang/Object;
.source "ZRCGenericSettings.java"


# instance fields
.field private isMyVideoHidden:Z

.field private isVideoSharingOptimizable:Z

.field private isVideoSharingOptimized:Z

.field private muteAvWhenMeetingBegins:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden:Z

    .line 18
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->muteAvWhenMeetingBegins:Z

    .line 19
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimizable:Z

    .line 20
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimized:Z

    return-void
.end method


# virtual methods
.method public isMuteAvWhenMeetingBegins()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->muteAvWhenMeetingBegins:Z

    return v0
.end method

.method public isMyVideoHidden()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden:Z

    return v0
.end method

.method public isVideoSharingOptimizable()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimizable:Z

    return v0
.end method

.method public isVideoSharingOptimized()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimized:Z

    return v0
.end method

.method public setMuteAvWhenMeetingBegins(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->muteAvWhenMeetingBegins:Z

    return-void
.end method

.method public setMyVideoHidden(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden:Z

    return-void
.end method

.method public setVideoSharingOptimizable(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimizable:Z

    return-void
.end method

.method public setVideoSharingOptimized(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMyVideoHidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isMyVideoHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",muteAvWhenMeetingBegins:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->muteAvWhenMeetingBegins:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isVideoSharingOptimizable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimizable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isVideoSharingOptimized:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
