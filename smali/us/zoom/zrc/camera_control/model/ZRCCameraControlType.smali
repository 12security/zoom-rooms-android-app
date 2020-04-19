.class public final enum Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
.super Ljava/lang/Enum;
.source "ZRCCameraControlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

.field public static final enum LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

.field public static final enum REMOTE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

.field public static final enum SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    .line 20
    new-instance v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    const-string v1, "SHARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    .line 25
    new-instance v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    const-string v1, "REMOTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->REMOTE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->REMOTE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    aput-object v1, v0, v4

    sput-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->$VALUES:[Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
    .locals 1

    .line 10
    const-class v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
    .locals 1

    .line 10
    sget-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->$VALUES:[Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-virtual {v0}, [Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-object v0
.end method
