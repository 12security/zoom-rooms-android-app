.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$9;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ZRCUltrasoundSignalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$9;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 230
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->operationTimeStatus:I

    if-ne p1, p2, :cond_0

    .line 231
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$9;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    goto :goto_0

    .line 232
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->ultrasoundPlayerCandidateDeviceId:I

    if-ne p1, p2, :cond_1

    .line 233
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$9;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$800(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    :cond_1
    :goto_0
    return-void
.end method
