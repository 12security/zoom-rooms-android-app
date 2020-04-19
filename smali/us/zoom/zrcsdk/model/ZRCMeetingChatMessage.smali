.class public Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;
.super Ljava/lang/Object;
.source "ZRCMeetingChatMessage.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_STAMP_FORMAT:Ljava/text/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final TYPE_TO_ALL:I = 0x0

.field private static final TYPE_TO_INDIVIDUAL:I = 0x3

.field private static final TYPE_TO_INDIVIDUAL_CCPANELIST:I = 0x2

.field private static final TYPE_TO_PANELIST:I = 0x1


# instance fields
.field private chatMessageType:I

.field private contentType:I

.field private fileName:Ljava/lang/String;

.field private fileSize:I

.field private fileUrl:Ljava/lang/String;

.field private index:I

.field private isEncrypted:Z

.field private isFile:Z

.field private isSelfSend:Z

.field private isShareFileMsg:Z

.field private messageContent:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private messageTimeStamp:Ljava/lang/String;

.field private receiverDisplayName:Ljava/lang/String;

.field private receiverId:I

.field private receiverJId:Ljava/lang/String;

.field private senderDisplayName:Ljava/lang/String;

.field private senderId:I

.field private senderJId:Ljava/lang/String;

.field private shareFileInfo:Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->TIME_STAMP_FORMAT:Ljava/text/DateFormat;

    .line 27
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->TIME_STAMP_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown ChatMsgType"

    return-object p0

    :pswitch_0
    const-string p0, "ChatMsgType_to_Individual"

    return-object p0

    :pswitch_1
    const-string p0, "ChatMsgType_to_Individual_ccPanelist"

    return-object p0

    :pswitch_2
    const-string p0, "ChatMsgType_to_Panelist"

    return-object p0

    :pswitch_3
    const-string p0, "ChatMsgType_to_All"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->compareTo(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 302
    :cond_0
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 263
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    if-nez v1, :cond_1

    return v0

    .line 266
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    .line 267
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getChatMessageType()I
    .locals 1

    .line 136
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->chatMessageType:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    .line 184
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->contentType:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .line 168
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->fileSize:I

    return v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 96
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    return v0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 113
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getMessageContentLength()I
    .locals 1

    .line 120
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTimeStamp()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDisplayName()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverId()I
    .locals 1

    .line 200
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverId:I

    return v0
.end method

.method public getReceiverJId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverJId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderDisplayName()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()I
    .locals 1

    .line 192
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderId:I

    return v0
.end method

.method public getSenderJId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderJId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareFileInfo()Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->shareFileInfo:Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;

    return-object v0
.end method

.method public getTimeStampInMillis()J
    .locals 4

    .line 240
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageTimeStamp:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 244
    :cond_0
    :try_start_0
    sget-object v3, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->TIME_STAMP_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 272
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isEncrypted:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 85
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->chatMessageType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameSender(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 92
    :cond_0
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderId:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderId:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSelfSend()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isSelfSend:Z

    return v0
.end method

.method public isShareFileMsg()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg:Z

    return v0
.end method

.method public setChatMessageType(I)V
    .locals 0

    .line 140
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->chatMessageType:I

    return-void
.end method

.method public setContentType(I)V
    .locals 0

    .line 188
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->contentType:I

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isEncrypted:Z

    return-void
.end method

.method public setFile(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile:Z

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    .line 172
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->fileSize:I

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 100
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    return-void
.end method

.method public setMessageContent(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageContent:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setMessageTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setReceiverDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setReceiverId(I)V
    .locals 0

    .line 204
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverId:I

    return-void
.end method

.method public setReceiverJId(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverJId:Ljava/lang/String;

    return-void
.end method

.method public setSelfSend(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isSelfSend:Z

    return-void
.end method

.method public setSenderDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(I)V
    .locals 0

    .line 196
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderId:I

    return-void
.end method

.method public setSenderJId(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderJId:Ljava/lang/String;

    return-void
.end method

.method public setShareFileInfo(Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->shareFileInfo:Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;

    return-void
.end method

.method public setShareFileMsg(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 278
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "index"

    .line 279
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->index:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "messageId"

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageId:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "isSelfSend"

    iget-boolean v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isSelfSend:Z

    .line 281
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "chatMessageType"

    iget v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->chatMessageType:I

    .line 282
    invoke-static {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "isFile"

    iget-boolean v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile:Z

    .line 283
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "isEncrypted"

    iget-boolean v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isEncrypted:Z

    .line 284
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "contentType"

    iget v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->contentType:I

    .line 285
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "senderId"

    iget v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderId:I

    .line 286
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "receiverId"

    iget v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverId:I

    .line 287
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "senderJId"

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderJId:Ljava/lang/String;

    .line 288
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "receiverJId"

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverJId:Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "senderDisplayName"

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->senderDisplayName:Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "receiverDisplayName"

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->receiverDisplayName:Ljava/lang/String;

    .line 291
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "messageTimeStamp"

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->messageTimeStamp:Ljava/lang/String;

    .line 292
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "isShareFileMsg"

    iget-boolean v3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg:Z

    .line 293
    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 294
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
