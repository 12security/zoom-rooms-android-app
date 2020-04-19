.class final Lus/zoom/zrc/incoming/IncomingCallActivity$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method

.method private onAnswerIncomingCallResult(ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 8

    .line 192
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v7, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    invoke-virtual {v0, v7}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onAppStateChanged()V
    .locals 2

    .line 156
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$4;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onConnectionClosed()V
    .locals 2

    .line 204
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$8;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onJoinSipCallToMeetingResult(I)V
    .locals 2

    .line 119
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;I)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 2

    .line 144
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$100()V

    .line 147
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$3;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$3;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onReceivedSipCallTerminated(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 2

    .line 168
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onReceivedTreatedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 2

    .line 180
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private onSipToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 2

    .line 132
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$100()V

    .line 135
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/incoming/IncomingCallActivity$2$2;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$2;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 88
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 93
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 94
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onAppStateChanged()V

    goto/16 :goto_0

    .line 95
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->IncomingCallNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    .line 96
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    invoke-direct {p0, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    goto/16 :goto_0

    .line 97
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallInviteToJoinMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_3

    .line 98
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    invoke-direct {p0, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onSipToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    goto/16 :goto_0

    .line 99
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SipCallTerminatedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_4

    const-string p1, "call"

    .line 100
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const-string v0, "reason"

    .line 101
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p2

    .line 102
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onReceivedSipCallTerminated(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    goto :goto_0

    .line 103
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->JoinSipCallToMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_5

    const-string p1, "result"

    .line 104
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 105
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onJoinSipCallToMeetingResult(I)V

    goto :goto_0

    .line 106
    :cond_5
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_6

    .line 107
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onConnectionClosed()V

    goto :goto_0

    .line 108
    :cond_6
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->TreatedIncomingCall:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_7

    .line 109
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "call"

    .line 110
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    const-string v0, "accepted"

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onReceivedTreatedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    goto :goto_0

    .line 111
    :cond_7
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerIncomingCallResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_8

    .line 112
    move-object p1, p2

    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "requestId"

    .line 113
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "result"

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "call"

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    const-string v2, "accepted"

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p2, v1, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onAnswerIncomingCallResult(ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    :cond_8
    :goto_0
    return-void
.end method
