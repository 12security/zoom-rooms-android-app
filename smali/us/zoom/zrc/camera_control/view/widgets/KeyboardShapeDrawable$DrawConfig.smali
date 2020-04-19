.class Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;
.super Ljava/lang/Object;
.source "KeyboardShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawConfig"
.end annotation


# instance fields
.field private paintColor:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPaintColor()I
    .locals 1

    .line 31
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;->paintColor:I

    return v0
.end method

.method setPaintColor(I)V
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable$DrawConfig;->paintColor:I

    return-void
.end method
