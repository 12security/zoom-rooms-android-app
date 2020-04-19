.class public abstract Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
.super Ljava/lang/Object;
.source "EventParameters.java"


# instance fields
.field private instruction:I

.field private state:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;->instruction:I

    .line 31
    iput p2, p0, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;->state:I

    return-void
.end method


# virtual methods
.method public getInstruction()I
    .locals 1

    .line 35
    iget v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;->instruction:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 39
    iget v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;->state:I

    return v0
.end method
