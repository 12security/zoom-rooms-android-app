.class public Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;
.super Ljava/lang/Object;
.source "ZRCMeetingShareSettings.java"


# instance fields
.field private isMultiShare:Z

.field private showWarningForSelfSharePinnedToViewerShare:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShowWarningForSelfSharePinnedToViewerShare()I
    .locals 1

    .line 17
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->showWarningForSelfSharePinnedToViewerShare:I

    return v0
.end method

.method public isMultiShare()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare:Z

    return v0
.end method

.method public setMultiShare(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare:Z

    return-void
.end method

.method public setShowWarningForSelfSharePinnedToViewerShare(I)V
    .locals 0

    .line 21
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->showWarningForSelfSharePinnedToViewerShare:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCMeetingShareSettings{isMultiShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showWarningForSelfSharePinnedToViewerShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->showWarningForSelfSharePinnedToViewerShare:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
