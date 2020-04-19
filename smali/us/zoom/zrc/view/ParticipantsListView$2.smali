.class Lus/zoom/zrc/view/ParticipantsListView$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ParticipantsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ParticipantsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$2;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/notification/INotification;->onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 107
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->PinVideoUserChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_0

    .line 108
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$2;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantList()V

    :cond_0
    return-void
.end method
