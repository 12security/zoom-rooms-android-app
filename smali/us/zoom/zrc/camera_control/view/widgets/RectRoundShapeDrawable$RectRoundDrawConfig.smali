.class public Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;
.super Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;
.source "RectRoundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectRoundDrawConfig"
.end annotation


# instance fields
.field private direction:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

.field private limitSize:[I

.field private scaleFactor:F


# direct methods
.method public constructor <init>(ILus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->setPaintColor(I)V

    .line 104
    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->direction:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    return-void
.end method

.method public constructor <init>(ILus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;[I)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->setPaintColor(I)V

    .line 109
    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->direction:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    .line 110
    iput-object p3, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->limitSize:[I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;)Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;
    .locals 0

    .line 97
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->getDirection()Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;)Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;
    .locals 0

    .line 97
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->direction:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    return-object p0
.end method

.method private getDirection()Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;
    .locals 1

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->direction:Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$Direction;

    return-object v0
.end method


# virtual methods
.method getLimitSize()[I
    .locals 1

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->limitSize:[I

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 126
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->scaleFactor:F

    return v0
.end method

.method public setLimitSize([I)V
    .locals 0

    .line 122
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->limitSize:[I

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 130
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable$RectRoundDrawConfig;->scaleFactor:F

    return-void
.end method
