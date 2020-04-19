.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$4;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
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

    .line 147
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$4;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchUserChangedEntityNotification(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-super {p0, p1}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onBatchUserChangedEntityNotification(Ljava/util/List;)V

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getEvent()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$4;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$300(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    :cond_2
    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$4;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$300(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    :cond_0
    return-void
.end method
