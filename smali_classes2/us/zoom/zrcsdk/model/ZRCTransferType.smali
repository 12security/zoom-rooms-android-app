.class public final enum Lus/zoom/zrcsdk/model/ZRCTransferType;
.super Ljava/lang/Enum;
.source "ZRCTransferType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrcsdk/model/ZRCTransferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrcsdk/model/ZRCTransferType;

.field public static final enum BlindTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

.field public static final enum Unknown:Lus/zoom/zrcsdk/model/ZRCTransferType;

.field public static final enum VoiceMailTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

.field public static final enum WarmTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

.field public static final enum WarmTransferComplete:Lus/zoom/zrcsdk/model/ZRCTransferType;


# instance fields
.field private nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrcsdk/model/ZRCTransferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->Unknown:Lus/zoom/zrcsdk/model/ZRCTransferType;

    new-instance v0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    const-string v1, "BlindTransfer"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lus/zoom/zrcsdk/model/ZRCTransferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->BlindTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    new-instance v0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    const-string v1, "WarmTransfer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lus/zoom/zrcsdk/model/ZRCTransferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    new-instance v0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    const-string v1, "WarmTransferComplete"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lus/zoom/zrcsdk/model/ZRCTransferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransferComplete:Lus/zoom/zrcsdk/model/ZRCTransferType;

    .line 5
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    const-string v1, "VoiceMailTransfer"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lus/zoom/zrcsdk/model/ZRCTransferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->VoiceMailTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lus/zoom/zrcsdk/model/ZRCTransferType;

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCTransferType;->Unknown:Lus/zoom/zrcsdk/model/ZRCTransferType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCTransferType;->BlindTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransferComplete:Lus/zoom/zrcsdk/model/ZRCTransferType;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCTransferType;->VoiceMailTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    aput-object v1, v0, v6

    sput-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->$VALUES:[Lus/zoom/zrcsdk/model/ZRCTransferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCTransferType;->nativeValue:I

    return-void
.end method

.method public static toTransferType(I)Lus/zoom/zrcsdk/model/ZRCTransferType;
    .locals 5

    .line 18
    invoke-static {}, Lus/zoom/zrcsdk/model/ZRCTransferType;->values()[Lus/zoom/zrcsdk/model/ZRCTransferType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    iget v4, v3, Lus/zoom/zrcsdk/model/ZRCTransferType;->nativeValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    sget-object p0, Lus/zoom/zrcsdk/model/ZRCTransferType;->Unknown:Lus/zoom/zrcsdk/model/ZRCTransferType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCTransferType;
    .locals 1

    .line 3
    const-class v0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrcsdk/model/ZRCTransferType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrcsdk/model/ZRCTransferType;
    .locals 1

    .line 3
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->$VALUES:[Lus/zoom/zrcsdk/model/ZRCTransferType;

    invoke-virtual {v0}, [Lus/zoom/zrcsdk/model/ZRCTransferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrcsdk/model/ZRCTransferType;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()I
    .locals 1

    .line 14
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCTransferType;->nativeValue:I

    return v0
.end method
