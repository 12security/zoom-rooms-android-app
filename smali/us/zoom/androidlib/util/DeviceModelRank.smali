.class public final enum Lus/zoom/androidlib/util/DeviceModelRank;
.super Ljava/lang/Enum;
.source "DeviceModelRank.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/androidlib/util/DeviceModelRank;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/androidlib/util/DeviceModelRank;

.field public static final enum High:Lus/zoom/androidlib/util/DeviceModelRank;

.field public static final enum Low:Lus/zoom/androidlib/util/DeviceModelRank;

.field public static final enum Medium:Lus/zoom/androidlib/util/DeviceModelRank;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lus/zoom/androidlib/util/DeviceModelRank;

    const-string v1, "High"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/androidlib/util/DeviceModelRank;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/DeviceModelRank;->High:Lus/zoom/androidlib/util/DeviceModelRank;

    .line 5
    new-instance v0, Lus/zoom/androidlib/util/DeviceModelRank;

    const-string v1, "Medium"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/androidlib/util/DeviceModelRank;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/DeviceModelRank;->Medium:Lus/zoom/androidlib/util/DeviceModelRank;

    .line 6
    new-instance v0, Lus/zoom/androidlib/util/DeviceModelRank;

    const-string v1, "Low"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/androidlib/util/DeviceModelRank;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/androidlib/util/DeviceModelRank;->Low:Lus/zoom/androidlib/util/DeviceModelRank;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lus/zoom/androidlib/util/DeviceModelRank;

    sget-object v1, Lus/zoom/androidlib/util/DeviceModelRank;->High:Lus/zoom/androidlib/util/DeviceModelRank;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/androidlib/util/DeviceModelRank;->Medium:Lus/zoom/androidlib/util/DeviceModelRank;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/androidlib/util/DeviceModelRank;->Low:Lus/zoom/androidlib/util/DeviceModelRank;

    aput-object v1, v0, v4

    sput-object v0, Lus/zoom/androidlib/util/DeviceModelRank;->$VALUES:[Lus/zoom/androidlib/util/DeviceModelRank;

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

.method public static valueOf(Ljava/lang/String;)Lus/zoom/androidlib/util/DeviceModelRank;
    .locals 1

    .line 3
    const-class v0, Lus/zoom/androidlib/util/DeviceModelRank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/util/DeviceModelRank;

    return-object p0
.end method

.method public static values()[Lus/zoom/androidlib/util/DeviceModelRank;
    .locals 1

    .line 3
    sget-object v0, Lus/zoom/androidlib/util/DeviceModelRank;->$VALUES:[Lus/zoom/androidlib/util/DeviceModelRank;

    invoke-virtual {v0}, [Lus/zoom/androidlib/util/DeviceModelRank;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/androidlib/util/DeviceModelRank;

    return-object v0
.end method
