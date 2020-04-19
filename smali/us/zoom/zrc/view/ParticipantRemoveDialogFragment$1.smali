.class Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "ParticipantRemoveDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;->this$0:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchUserChangedNotification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onBatchUserChangedNotification(Ljava/util/List;)V

    .line 44
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;->onUpdateMeetingParticipants(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;->this$0:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->access$000(Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;->this$0:Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 38
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantRemoveDialogFragment$1;->onUpdateMeetingParticipants(Ljava/util/ArrayList;)V

    return-void
.end method
