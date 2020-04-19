.class public final enum Lus/zoom/ultrasound/ZRCUltrasoundAction;
.super Ljava/lang/Enum;
.source "ZRCUltrasoundAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/ultrasound/ZRCUltrasoundAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field public static final enum FEEDBACK_DETECT:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field public static final enum PAIRCODE_INMEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

.field public static final enum PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v1, "PAIRCODE_PRE_MEETING_BROADCAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lus/zoom/ultrasound/ZRCUltrasoundAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 5
    new-instance v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v1, "PAIRCODE_INMEETING_BROADCAST"

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lus/zoom/ultrasound/ZRCUltrasoundAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_INMEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    .line 6
    new-instance v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v1, "FEEDBACK_DETECT"

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-direct {v0, v1, v4, v5}, Lus/zoom/ultrasound/ZRCUltrasoundAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->FEEDBACK_DETECT:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lus/zoom/ultrasound/ZRCUltrasoundAction;

    sget-object v1, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_INMEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/ultrasound/ZRCUltrasoundAction;->FEEDBACK_DETECT:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    aput-object v1, v0, v4

    sput-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->$VALUES:[Lus/zoom/ultrasound/ZRCUltrasoundAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/ultrasound/ZRCUltrasoundAction;
    .locals 1

    .line 3
    const-class v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/ultrasound/ZRCUltrasoundAction;

    return-object p0
.end method

.method public static values()[Lus/zoom/ultrasound/ZRCUltrasoundAction;
    .locals 1

    .line 3
    sget-object v0, Lus/zoom/ultrasound/ZRCUltrasoundAction;->$VALUES:[Lus/zoom/ultrasound/ZRCUltrasoundAction;

    invoke-virtual {v0}, [Lus/zoom/ultrasound/ZRCUltrasoundAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/ultrasound/ZRCUltrasoundAction;

    return-object v0
.end method
