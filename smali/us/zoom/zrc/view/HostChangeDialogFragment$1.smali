.class Lus/zoom/zrc/view/HostChangeDialogFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "HostChangeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/HostChangeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/HostChangeDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/HostChangeDialogFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/zrc/view/HostChangeDialogFragment$1;->this$0:Lus/zoom/zrc/view/HostChangeDialogFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lus/zoom/zrc/view/HostChangeDialogFragment$1;->this$0:Lus/zoom/zrc/view/HostChangeDialogFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/HostChangeDialogFragment;->updateParticipants(Ljava/util/List;)V

    return-void
.end method
