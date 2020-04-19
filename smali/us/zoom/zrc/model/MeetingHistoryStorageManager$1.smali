.class Lus/zoom/zrc/model/MeetingHistoryStorageManager$1;
.super Ljava/lang/Object;
.source "MeetingHistoryStorageManager.java"

# interfaces
.implements Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/MeetingHistoryStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/MeetingHistoryStorageManager;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$1;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(II)V
    .locals 1

    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    const/4 p2, 0x7

    if-eq p2, p1, :cond_0

    .line 26
    iget-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$1;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->setJoiningMeeting(Z)V

    :cond_0
    return-void
.end method
