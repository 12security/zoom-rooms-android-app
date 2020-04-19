.class public final enum Lus/zoom/zrc/model/ZRCShareStopType;
.super Ljava/lang/Enum;
.source "ZRCShareStopType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/model/ZRCShareStopType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/model/ZRCShareStopType;

.field public static final enum ZRCShareStopTypeBlackMagic:Lus/zoom/zrc/model/ZRCShareStopType;

.field public static final enum ZRCShareStopTypeCamera:Lus/zoom/zrc/model/ZRCShareStopType;

.field public static final enum ZRCShareStopTypeNone:Lus/zoom/zrc/model/ZRCShareStopType;

.field public static final enum ZRCShareStopTypeOther:Lus/zoom/zrc/model/ZRCShareStopType;

.field public static final enum ZRCShareStopTypeWhiteboardCamera:Lus/zoom/zrc/model/ZRCShareStopType;

.field public static final enum ZRCShareStopTypeZRW:Lus/zoom/zrc/model/ZRCShareStopType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lus/zoom/zrc/model/ZRCShareStopType;

    const-string v1, "ZRCShareStopTypeNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/model/ZRCShareStopType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeNone:Lus/zoom/zrc/model/ZRCShareStopType;

    .line 5
    new-instance v0, Lus/zoom/zrc/model/ZRCShareStopType;

    const-string v1, "ZRCShareStopTypeBlackMagic"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/model/ZRCShareStopType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeBlackMagic:Lus/zoom/zrc/model/ZRCShareStopType;

    .line 6
    new-instance v0, Lus/zoom/zrc/model/ZRCShareStopType;

    const-string v1, "ZRCShareStopTypeCamera"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/model/ZRCShareStopType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    .line 7
    new-instance v0, Lus/zoom/zrc/model/ZRCShareStopType;

    const-string v1, "ZRCShareStopTypeZRW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/model/ZRCShareStopType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeZRW:Lus/zoom/zrc/model/ZRCShareStopType;

    .line 8
    new-instance v0, Lus/zoom/zrc/model/ZRCShareStopType;

    const-string v1, "ZRCShareStopTypeWhiteboardCamera"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/zrc/model/ZRCShareStopType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeWhiteboardCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    .line 9
    new-instance v0, Lus/zoom/zrc/model/ZRCShareStopType;

    const-string v1, "ZRCShareStopTypeOther"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lus/zoom/zrc/model/ZRCShareStopType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeOther:Lus/zoom/zrc/model/ZRCShareStopType;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Lus/zoom/zrc/model/ZRCShareStopType;

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeNone:Lus/zoom/zrc/model/ZRCShareStopType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeBlackMagic:Lus/zoom/zrc/model/ZRCShareStopType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeZRW:Lus/zoom/zrc/model/ZRCShareStopType;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeWhiteboardCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    aput-object v1, v0, v6

    sget-object v1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeOther:Lus/zoom/zrc/model/ZRCShareStopType;

    aput-object v1, v0, v7

    sput-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->$VALUES:[Lus/zoom/zrc/model/ZRCShareStopType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/model/ZRCShareStopType;
    .locals 1

    .line 3
    const-class v0, Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/model/ZRCShareStopType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/model/ZRCShareStopType;
    .locals 1

    .line 3
    sget-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->$VALUES:[Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-virtual {v0}, [Lus/zoom/zrc/model/ZRCShareStopType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/model/ZRCShareStopType;

    return-object v0
.end method
