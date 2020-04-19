.class public interface abstract Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;
.super Ljava/lang/Object;
.source "ZRCSdkContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrcsdk/ZRCSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMeetingHistoryChangeListener"
.end annotation


# virtual methods
.method public abstract onAddMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
.end method

.method public abstract onChangeMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
.end method

.method public abstract onClearMeetingHistory()V
.end method

.method public abstract onDeleteMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
.end method
