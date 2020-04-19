.class public Lus/zoom/zrc/model/MeetingHistoryStorageManager;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MeetingHistoryStorageManager.java"


# static fields
.field private static instance:Lus/zoom/zrc/model/MeetingHistoryStorageManager;


# instance fields
.field private isJoiningMeeting:Z

.field private joiningMeetingHistoryID:Ljava/lang/String;

.field private onAppStateChangeListener:Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;

.field private onMeetingVerifiedListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field private onUpdateMeetingInfoListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 22
    new-instance v0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager$1;-><init>(Lus/zoom/zrc/model/MeetingHistoryStorageManager;)V

    iput-object v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onAppStateChangeListener:Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;

    .line 31
    new-instance v0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager$2;-><init>(Lus/zoom/zrc/model/MeetingHistoryStorageManager;)V

    iput-object v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onUpdateMeetingInfoListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    .line 39
    new-instance v0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager$3;-><init>(Lus/zoom/zrc/model/MeetingHistoryStorageManager;)V

    iput-object v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onMeetingVerifiedListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/model/MeetingHistoryStorageManager;Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->handleMeetingHistoryStorage(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->instance:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    invoke-direct {v1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->instance:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    .line 77
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->instance:Lus/zoom/zrc/model/MeetingHistoryStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleMeetingHistoryStorage(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 3

    .line 56
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->isJoiningMeeting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->joiningMeetingHistoryID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lus/zoom/zrcsdk/model/MeetingHistory;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/MeetingHistory;-><init>()V

    .line 58
    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->joiningMeetingHistoryID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/MeetingHistory;->setMeetingHistoryID(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/model/MeetingHistory;->setTime(J)V

    if-eqz p1, :cond_0

    .line 60
    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->joiningMeetingHistoryID:Ljava/lang/String;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/MeetingHistory;->setMeetingTopic(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->addMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    :cond_1
    return-void
.end method

.method private resetOnAppStateChangeListener()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->isJoiningMeeting:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onAppStateChangeListener:Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppStateMonitor;->addAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onAppStateChangeListener:Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppStateMonitor;->removeAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    :goto_0
    return-void
.end method

.method private resetOnMeetingVerifiedListener()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->isJoiningMeeting:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onMeetingVerifiedListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onMeetingVerifiedListener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    :goto_0
    return-void
.end method

.method private resetOnUpdateMeetingInfoListener()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->isJoiningMeeting:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onUpdateMeetingInfoListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->onUpdateMeetingInfoListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPstnDialHistory(Ljava/lang/String;)V
    .locals 1

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->addDialHistory(Ljava/lang/String;)V

    return-void
.end method

.method public addSipDialHistory(Ljava/lang/String;)V
    .locals 1

    .line 143
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;-><init>()V

    .line 144
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setPeerNumber(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setPeerUri(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->addSipDialHistory(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public addSipDialHistory(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 135
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->addSipDialHistory(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public clearAllHistories()V
    .locals 1

    .line 68
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->clearMeetingHistory()V

    .line 69
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->clearDialHistory()V

    .line 70
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->clearSipDialHistory()V

    return-void
.end method

.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 129
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callHistoryDisabled:I

    if-ne p1, p2, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isCallHistoryDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->clearAllHistories()V

    :cond_0
    return-void
.end method

.method public releaseHistoryOptionListener()V
    .locals 1

    .line 124
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public setJoiningMeeting(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->isJoiningMeeting:Z

    .line 90
    invoke-direct {p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->resetOnAppStateChangeListener()V

    .line 91
    invoke-direct {p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->resetOnUpdateMeetingInfoListener()V

    .line 92
    invoke-direct {p0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->resetOnMeetingVerifiedListener()V

    return-void
.end method

.method public setJoiningMeetingHistoryID(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->joiningMeetingHistoryID:Ljava/lang/String;

    return-void
.end method

.method public setupHistoryOptionListener()V
    .locals 1

    .line 120
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
