.class Lus/zoom/zrc/model/MeetingHistoryStorageManager$2;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "MeetingHistoryStorageManager.java"


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

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$2;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$2;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    invoke-static {v0, p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->access$000(Lus/zoom/zrc/model/MeetingHistoryStorageManager;Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 35
    iget-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$2;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->setJoiningMeeting(Z)V

    return-void
.end method
