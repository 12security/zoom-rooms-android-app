.class Lus/zoom/zrc/MeetingActivity$9;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;

.field final synthetic val$videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$9;->this$0:Lus/zoom/zrc/MeetingActivity;

    iput-object p2, p0, Lus/zoom/zrc/MeetingActivity$9;->val$videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 603
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$9;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$9;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$9;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0}, Lus/zoom/zrc/MeetingActivity;->access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity$9;->val$videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    :cond_0
    return-void
.end method
