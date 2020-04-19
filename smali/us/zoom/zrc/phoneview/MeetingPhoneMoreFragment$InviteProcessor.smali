.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

.field private unlockedByInvite:Z


# direct methods
.method private constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;)V
    .locals 0

    .line 962
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    return-void
.end method

.method static synthetic access$802(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;Z)Z
    .locals 0

    .line 962
    iput-boolean p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->unlockedByInvite:Z

    return p1
.end method

.method private exitByUnlockTimeout()V
    .locals 3

    const/4 v0, 0x0

    .line 1027
    iput-boolean v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->unlockedByInvite:Z

    .line 1028
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$900(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->dismiss()V

    .line 1029
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 1034
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$1000(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1036
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$900(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$900(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1040
    iput-boolean v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->unlockedByInvite:Z

    return-void
.end method

.method private promptMeetingLocked()V
    .locals 3

    .line 988
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 989
    sget v1, Lus/zoom/zrcbox/R$string;->meeting_locked:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 990
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 991
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    sget v1, Lus/zoom/zrcbox/R$string;->unlock_meeting:I

    new-instance v2, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor$1;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    goto :goto_0

    .line 1004
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 1006
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1008
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$702(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1009
    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    return-void
.end method

.method private showMeetingInviteDialog()V
    .locals 3

    .line 1013
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 1014
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$1100(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$1100(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->SHOW_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 967
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isMeetingLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 968
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->promptMeetingLocked()V

    goto :goto_0

    .line 970
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->showMeetingInviteDialog()V

    :goto_0
    return-void
.end method

.method onUpdateLockMeetingState(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 976
    iget-boolean v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->unlockedByInvite:Z

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->showMeetingInviteDialog()V

    .line 978
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->exitByUnlocked()V

    :cond_0
    if-nez p1, :cond_1

    .line 981
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$700(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$700(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 982
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$700(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->exitByUnlockTimeout()V

    return-void
.end method
