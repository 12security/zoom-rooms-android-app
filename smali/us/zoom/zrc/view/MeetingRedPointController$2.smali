.class Lus/zoom/zrc/view/MeetingRedPointController$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "MeetingRedPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingRedPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingRedPointController;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingRedPointController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController$2;->this$0:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 60
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageInitCount:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController$2;->this$0:Lus/zoom/zrc/view/MeetingRedPointController;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/view/MeetingRedPointController;->access$200(Lus/zoom/zrc/view/MeetingRedPointController;I)V

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageToDisplay:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    .line 63
    check-cast p2, Ljava/util/List;

    .line 64
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController$2;->this$0:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-static {p1, p2}, Lus/zoom/zrc/view/MeetingRedPointController;->access$300(Lus/zoom/zrc/view/MeetingRedPointController;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
