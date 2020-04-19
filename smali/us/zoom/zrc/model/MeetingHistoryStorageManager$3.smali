.class Lus/zoom/zrc/model/MeetingHistoryStorageManager$3;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
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

    .line 39
    iput-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$3;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeetingNeedsPassword(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$3;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->access$000(Lus/zoom/zrc/model/MeetingHistoryStorageManager;Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    :cond_0
    return-void
.end method

.method public onNeedWaitForHost(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lus/zoom/zrc/model/MeetingHistoryStorageManager$3;->this$0:Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->access$000(Lus/zoom/zrc/model/MeetingHistoryStorageManager;Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    :cond_0
    return-void
.end method
