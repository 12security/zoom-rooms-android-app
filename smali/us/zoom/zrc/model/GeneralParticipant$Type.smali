.class public final enum Lus/zoom/zrc/model/GeneralParticipant$Type;
.super Ljava/lang/Enum;
.source "GeneralParticipant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/GeneralParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/model/GeneralParticipant$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/model/GeneralParticipant$Type;

.field public static final enum MEETING_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

.field public static final enum MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

.field public static final enum SILENT_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

.field public static final enum SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lus/zoom/zrc/model/GeneralParticipant$Type;

    const-string v1, "SILENT_TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/model/GeneralParticipant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    .line 33
    new-instance v0, Lus/zoom/zrc/model/GeneralParticipant$Type;

    const-string v1, "SILENT_PARTICIPANT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/model/GeneralParticipant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    .line 34
    new-instance v0, Lus/zoom/zrc/model/GeneralParticipant$Type;

    const-string v1, "MEETING_TITLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/model/GeneralParticipant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    .line 35
    new-instance v0, Lus/zoom/zrc/model/GeneralParticipant$Type;

    const-string v1, "MEETING_PARTICIPANT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/model/GeneralParticipant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lus/zoom/zrc/model/GeneralParticipant$Type;

    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->SILENT_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_TITLE:Lus/zoom/zrc/model/GeneralParticipant$Type;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/model/GeneralParticipant$Type;->MEETING_PARTICIPANT:Lus/zoom/zrc/model/GeneralParticipant$Type;

    aput-object v1, v0, v5

    sput-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->$VALUES:[Lus/zoom/zrc/model/GeneralParticipant$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/model/GeneralParticipant$Type;
    .locals 1

    .line 31
    const-class v0, Lus/zoom/zrc/model/GeneralParticipant$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/model/GeneralParticipant$Type;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/model/GeneralParticipant$Type;
    .locals 1

    .line 31
    sget-object v0, Lus/zoom/zrc/model/GeneralParticipant$Type;->$VALUES:[Lus/zoom/zrc/model/GeneralParticipant$Type;

    invoke-virtual {v0}, [Lus/zoom/zrc/model/GeneralParticipant$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/model/GeneralParticipant$Type;

    return-object v0
.end method
