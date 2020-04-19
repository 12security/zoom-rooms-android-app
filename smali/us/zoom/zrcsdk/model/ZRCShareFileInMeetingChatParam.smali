.class public Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;
.super Ljava/lang/Object;
.source "ZRCShareFileInMeetingChatParam.java"


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private previewUrl:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileSize:Ljava/lang/String;

    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "previewUrl"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->previewUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "downloadUrl"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->downloadUrl:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fileName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "thumbnailUrl"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->thumbnailUrl:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fileSize"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileSize:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fileId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->fileId:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->type:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
