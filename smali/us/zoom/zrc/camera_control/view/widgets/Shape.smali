.class final enum Lus/zoom/zrc/camera_control/view/widgets/Shape;
.super Ljava/lang/Enum;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/camera_control/view/widgets/Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/camera_control/view/widgets/Shape;

.field public static final enum CIRCLE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

.field public static final enum RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

.field public static final enum ROUND_RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

.field public static final enum SQUARE:Lus/zoom/zrc/camera_control/view/widgets/Shape;


# instance fields
.field private shapeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;

    const-string v1, "RECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lus/zoom/zrc/camera_control/view/widgets/Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    .line 11
    new-instance v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;

    const-string v1, "SQUARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lus/zoom/zrc/camera_control/view/widgets/Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->SQUARE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    .line 12
    new-instance v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;

    const-string v1, "CIRCLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lus/zoom/zrc/camera_control/view/widgets/Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->CIRCLE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    .line 13
    new-instance v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;

    const-string v1, "ROUND_RECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lus/zoom/zrc/camera_control/view/widgets/Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->ROUND_RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lus/zoom/zrc/camera_control/view/widgets/Shape;

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->SQUARE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->CIRCLE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->ROUND_RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    aput-object v1, v0, v5

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->$VALUES:[Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->shapeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/camera_control/view/widgets/Shape;
    .locals 1

    .line 9
    const-class v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/camera_control/view/widgets/Shape;
    .locals 1

    .line 9
    sget-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->$VALUES:[Lus/zoom/zrc/camera_control/view/widgets/Shape;

    invoke-virtual {v0}, [Lus/zoom/zrc/camera_control/view/widgets/Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object v0
.end method


# virtual methods
.method public getShapeInt()I
    .locals 1

    .line 22
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->shapeInt:I

    return v0
.end method
