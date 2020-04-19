.class public final enum Lus/zoom/zrc/share_camera/model/ZRCSharingType;
.super Ljava/lang/Enum;
.source "ZRCSharingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/share_camera/model/ZRCSharingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/share_camera/model/ZRCSharingType;

.field public static final enum ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

.field public static final enum ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

.field public static final enum ZRCSharingType_Unknown:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

.field public static final enum ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

.field public static final enum ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const-string v1, "ZRCSharingType_Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Unknown:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 12
    new-instance v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const-string v1, "ZRCSharingType_Desktop"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 13
    new-instance v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const-string v1, "ZRCSharingType_iOS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 14
    new-instance v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const-string v1, "ZRCSharingType_Camera"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 15
    new-instance v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const-string v1, "ZRCSharingType_WhiteboardCamera"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Unknown:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v1, v0, v5

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v1, v0, v6

    sput-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->$VALUES:[Lus/zoom/zrc/share_camera/model/ZRCSharingType;

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

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/share_camera/model/ZRCSharingType;
    .locals 1

    .line 10
    const-class v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/share_camera/model/ZRCSharingType;
    .locals 1

    .line 10
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->$VALUES:[Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v0}, [Lus/zoom/zrc/share_camera/model/ZRCSharingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    return-object v0
.end method
