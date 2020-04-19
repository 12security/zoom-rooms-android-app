.class Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

.field private unlockedByInvite:Z


# direct methods
.method private constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Lus/zoom/zrc/view/MeetingMainControllerFragment$1;)V
    .locals 0

    .line 1236
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    return-void
.end method

.method static synthetic access$702(Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;Z)Z
    .locals 0

    .line 1236
    iput-boolean p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->unlockedByInvite:Z

    return p1
.end method

.method private exitByUnlockTimeout()V
    .locals 3

    const/4 v0, 0x0

    .line 1300
    iput-boolean v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->unlockedByInvite:Z

    .line 1301
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$800(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->dismiss()V

    .line 1302
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_error_unlock_meeting_timeout:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private exitByUnlocked()V
    .locals 1

    .line 1307
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$900(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1309
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$800(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$800(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1313
    iput-boolean v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->unlockedByInvite:Z

    return-void
.end method

.method private promptMeetingLocked()V
    .locals 3

    .line 1262
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1263
    sget v1, Lus/zoom/zrcbox/R$string;->meeting_locked:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1264
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1265
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    sget v1, Lus/zoom/zrcbox/R$string;->unlock_meeting:I

    new-instance v2, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor$1;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    goto :goto_0

    .line 1278
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1280
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1282
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v1, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$602(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showMeetingInviteDialog()V
    .locals 3

    .line 1286
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 1287
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$1000(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$1000(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->SHOW_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1241
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isMeetingLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1242
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->promptMeetingLocked()V

    goto :goto_0

    .line 1244
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->showMeetingInviteDialog()V

    :goto_0
    return-void
.end method

.method onUpdateLockMeetingState(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1250
    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->unlockedByInvite:Z

    if-eqz v0, :cond_0

    .line 1251
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->showMeetingInviteDialog()V

    .line 1252
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->exitByUnlocked()V

    :cond_0
    if-nez p1, :cond_1

    .line 1255
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$600(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$600(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1256
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$600(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1295
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->exitByUnlockTimeout()V

    return-void
.end method
