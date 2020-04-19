.class public Lus/zoom/zrc/model/GeneralParticipant;
.super Ljava/lang/Object;
.source "GeneralParticipant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/model/GeneralParticipant$Type;
    }
.end annotation


# instance fields
.field private participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field private type:Lus/zoom/zrc/model/GeneralParticipant$Type;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/model/GeneralParticipant$Type;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lus/zoom/zrc/model/GeneralParticipant;->type:Lus/zoom/zrc/model/GeneralParticipant$Type;

    .line 12
    iput-object p2, p0, Lus/zoom/zrc/model/GeneralParticipant;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-void
.end method


# virtual methods
.method public getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 1

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/model/GeneralParticipant;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-object v0
.end method

.method public getType()Lus/zoom/zrc/model/GeneralParticipant$Type;
    .locals 1

    .line 16
    iget-object v0, p0, Lus/zoom/zrc/model/GeneralParticipant;->type:Lus/zoom/zrc/model/GeneralParticipant$Type;

    return-object v0
.end method

.method public setParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lus/zoom/zrc/model/GeneralParticipant;->participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-void
.end method

.method public setType(Lus/zoom/zrc/model/GeneralParticipant$Type;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lus/zoom/zrc/model/GeneralParticipant;->type:Lus/zoom/zrc/model/GeneralParticipant$Type;

    return-void
.end method
