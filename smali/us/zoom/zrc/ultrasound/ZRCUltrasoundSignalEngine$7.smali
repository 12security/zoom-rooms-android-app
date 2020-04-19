.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$7;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
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

    .line 199
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$7;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomPresenceSignedOutNotification()V
    .locals 1

    .line 202
    invoke-super {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;->onZoomPresenceSignedOutNotification()V

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$7;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    return-void
.end method
