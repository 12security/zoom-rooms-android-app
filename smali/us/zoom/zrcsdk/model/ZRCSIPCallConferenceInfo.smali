.class public Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;
.super Ljava/lang/Object;
.source "ZRCSIPCallConferenceInfo.java"


# static fields
.field private static final ZRCSIPCallConferenceRole_Host:I = 0x1

.field private static final ZRCSIPCallConferenceRole_Participant:I = 0x2

.field private static final ZRCSIPCallConferenceRole_Unknown:I


# instance fields
.field private hostCallId:Ljava/lang/String;

.field private role:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostCallId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;->hostCallId:Ljava/lang/String;

    return-object v0
.end method

.method public isHost()Z
    .locals 2

    .line 19
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;->role:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "role"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;->role:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "hostCallId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;->hostCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
