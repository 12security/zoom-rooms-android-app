.class Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "RoomSystemDialSessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/RoomSystemDialSessionHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 97
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnCallStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 98
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e

    .line 100
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-static {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$000(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-static {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$100(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V

    goto/16 :goto_0

    .line 105
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    const-string p1, "changedParticipants"

    .line 106
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 107
    iget-object p2, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-static {p2, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$200(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Ljava/util/List;)V

    goto/16 :goto_0

    .line 108
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_3

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->checkRoomSystemOnMeetingEnd()V

    goto/16 :goto_0

    .line 110
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnRoomSystemCallingStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_4

    .line 111
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$300(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;I)V

    goto/16 :goto_0

    .line 112
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnInviteRoomSystemManuallyResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_5

    .line 113
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$400(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Z)V

    goto :goto_0

    .line 114
    :cond_5
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    const/16 v1, 0x2711

    if-ne v0, p1, :cond_6

    .line 115
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    const/4 p2, 0x0

    iput-object p2, p1, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    .line 116
    invoke-virtual {p1, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    goto :goto_0

    .line 117
    :cond_6
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateRoomSystemCallingUserInfo:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_7

    .line 118
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    const-string v0, "userId"

    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const-string v1, "userName"

    .line 119
    invoke-static {p2, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 118
    invoke-static {p1, v0, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$500(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;ILjava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_7
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne v0, p1, :cond_8

    .line 121
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    goto :goto_0

    .line 122
    :cond_8
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnUpdateAirPlayBlackMagicStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_9

    .line 123
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    .line 124
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-static {p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$600(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    goto :goto_0

    .line 125
    :cond_9
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnAskToJoinThirdPartyMeeting:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_b

    if-nez p2, :cond_a

    return-void

    .line 127
    :cond_a
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$700(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V

    goto :goto_0

    .line 129
    :cond_b
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->InSilentModeStateChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_c

    .line 130
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-static {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$800(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V

    goto :goto_0

    .line 131
    :cond_c
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnGoingToBeInMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-eq p2, p1, :cond_d

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnConfReady:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_e

    .line 132
    :cond_d
    iget-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-static {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->access$000(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)Z

    :cond_e
    :goto_0
    return-void
.end method
