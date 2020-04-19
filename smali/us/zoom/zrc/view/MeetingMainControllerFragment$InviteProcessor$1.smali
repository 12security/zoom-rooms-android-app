.class Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->promptMeetingLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1269
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/ConfApp;->lockMeeting(Z)I

    .line 1270
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->access$702(Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;Z)Z

    .line 1271
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    iget-object p1, p1, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$800(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1272
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    iget-object p1, p1, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$800(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    iget-object p2, p2, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1274
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    iget-object p1, p1, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$900(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;->this$1:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
