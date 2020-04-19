.class public Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;
.super Ljava/lang/Object;
.source "ZRCFeedBackInfo.java"


# static fields
.field public static final FIRST_IMPRESSION_BAD:I = 0x2

.field public static final FIRST_IMPRESSION_GOOD:I = 0x1

.field public static final FIRST_IMPRESSION_UNSET:I


# instance fields
.field private feedback:Ljava/lang/String;

.field private firstImpression:I

.field private name:Ljava/lang/String;

.field private reasons:Ljava/lang/String;

.field private responderEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedback()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->feedback:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstImpression()I
    .locals 1

    .line 15
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->firstImpression:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReasons()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->reasons:Ljava/lang/String;

    return-object v0
.end method

.method public getResponderEmail()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->responderEmail:Ljava/lang/String;

    return-object v0
.end method

.method public setFeedback(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->feedback:Ljava/lang/String;

    return-void
.end method

.method public setFirstImpression(I)V
    .locals 0

    .line 19
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->firstImpression:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setReasons(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->reasons:Ljava/lang/String;

    return-void
.end method

.method public setResponderEmail(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->responderEmail:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCFeedBackInfo [firstImpression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->firstImpression:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->feedback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->reasons:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responderEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->responderEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
