.class public final enum Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;
.super Ljava/lang/Enum;
.source "RectRoundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

.field public static final enum HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

.field public static final enum VERTICAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    .line 136
    new-instance v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    const-string v1, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->VERTICAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    const/4 v0, 0x2

    .line 134
    new-array v0, v0, [Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->HORIZONTAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->VERTICAL:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->$VALUES:[Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;
    .locals 1

    .line 134
    const-class v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;
    .locals 1

    .line 134
    sget-object v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->$VALUES:[Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    invoke-virtual {v0}, [Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    return-object v0
.end method
