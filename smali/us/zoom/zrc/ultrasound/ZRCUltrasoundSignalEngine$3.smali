.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$3;
.super Ljava/lang/Object;
.source "ZRCUltrasoundSignalEngine.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$ILoginEvent;


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

    .line 113
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$3;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedRoomList(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    return-void
.end method

.method public onUserRefreshZAKReturn(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    return-void
.end method

.method public onZoomPresenceLoginFailed(I)V
    .locals 0

    return-void
.end method

.method public onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$3;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    return-void
.end method

.method public onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$3;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    return-void
.end method
