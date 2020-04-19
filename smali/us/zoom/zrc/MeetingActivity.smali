.class public Lus/zoom/zrc/MeetingActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "MeetingActivity.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;
.implements Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;
.implements Lus/zoom/zrc/model/AppEngine$IWebEvent;
.implements Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;
.implements Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;


# static fields
.field private static final SAVE_SATE_IS_CLAIMING_HOST:Ljava/lang/String; = "isClaimingHost"

.field private static final TAG:Ljava/lang/String; = "MeetingActivity"


# instance fields
.field public cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

.field private farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

.field private farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

.field private flFragmentContainer:Landroid/widget/FrameLayout;

.field private isClaimingHost:Z

.field private ivSilentModeControlSystem:Landroid/widget/ImageView;

.field private ivSilentModePhone:Landroid/widget/ImageView;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field private llSilentModeLayer:Landroid/widget/LinearLayout;

.field private mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

.field private mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

.field private mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

.field private mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

.field private mResultCode:I

.field private meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

.field private tvSilentModeMeetingTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isClaimingHost:Z

    .line 105
    new-instance v0, Lus/zoom/zrc/MeetingActivity$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/MeetingActivity$1;-><init>(Lus/zoom/zrc/MeetingActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/MeetingActivity;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lus/zoom/zrc/MeetingActivity;->mResultCode:I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/MeetingActivity;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lus/zoom/zrc/MeetingActivity;->handleShowRecordingConsent(Z)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;
    .locals 0

    .line 90
    iget-object p0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/MeetingActivity;)Lus/zoom/zrc/view/MeetingMainControllerFragment;
    .locals 0

    .line 90
    iget-object p0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    return-object p0
.end method

.method private checkAndShowCallRoomDialog()V
    .locals 3

    .line 446
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isInUISession()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 449
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 450
    invoke-static {p0}, Lus/zoom/zrc/view/CallRoomSystemDialogUtils;->show(Landroidx/fragment/app/FragmentActivity;)V

    :cond_2
    return-void
.end method

.method private checkShowClaimHostDialog(I)V
    .locals 3

    .line 1027
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isClaimingHost:Z

    if-nez v0, :cond_0

    return-void

    .line 1030
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1033
    :cond_1
    const-class v0, Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "MeetingActivity"

    const-string v0, "showDialogFragment but fragment isAdded"

    const/4 v1, 0x0

    .line 1036
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1040
    :cond_2
    new-instance v0, Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;-><init>()V

    .line 1041
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "claim_result"

    .line 1042
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1043
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1044
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private checkToDismissOutdatedDialogs()V
    .locals 4

    .line 480
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 482
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;

    if-eqz v2, :cond_1

    .line 488
    move-object v2, v1

    check-cast v2, Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;

    invoke-interface {v2}, Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;->getBindUserId()I

    move-result v2

    .line 489
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    :cond_2
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private dismissClaimHostDialog()V
    .locals 2

    .line 1048
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ClaimHostDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/Class;)V

    return-void
.end method

.method private dismissDialogs()V
    .locals 3

    .line 465
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 471
    instance-of v2, v1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 474
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleShowRecordingConsent(Z)V
    .locals 1

    .line 360
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    :goto_0
    return-void
.end method

.method private onExitMeetingResult(Z)V
    .locals 0

    .line 672
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->showWaitingDialog()V

    return-void
.end method

.method private onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
    .locals 3

    .line 780
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 782
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_5

    .line 783
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 786
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 787
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_info"

    .line 792
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 794
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->updateUI(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V

    :cond_2
    return-void

    .line 798
    :cond_3
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    .line 799
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_info_camera_control"

    .line 800
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 801
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->setArguments(Landroid/os/Bundle;)V

    .line 802
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlApproveFragment:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/4 v0, 0x3

    .line 803
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getState()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 804
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 807
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 808
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_info"

    .line 809
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 810
    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 811
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->updateUI(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V

    :cond_7
    return-void

    .line 815
    :cond_8
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    .line 816
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_info"

    .line 817
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 818
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->setArguments(Landroid/os/Bundle;)V

    .line 819
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private onHostRequestStartMediaDeviceNotification(Ljava/lang/Object;)V
    .locals 2

    .line 832
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 836
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_1

    return-void

    .line 840
    :cond_1
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "type"

    .line 841
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "isHost"

    .line 842
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 845
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 847
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;IZ)V

    return-void
.end method

.method private onMeetingExitedNotification()V
    .locals 2

    .line 676
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 677
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->finish()V

    return-void
.end method

.method private onUserAcceptCameraControl(I)V
    .locals 1

    .line 824
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v0

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 826
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->farEndCameraControlFragment:Lus/zoom/zrc/view/FarEndCameraControlFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static showRecordingConsent(Z)V
    .locals 2

    .line 351
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/MeetingActivity$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/MeetingActivity$5;-><init>(Z)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private updateMeetingInfo()V
    .locals 4

    .line 207
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MeetingActivity"

    const-string v1, "updateMeetingInfo meetingInfo=null"

    const/4 v2, 0x0

    .line 209
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 213
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    goto/16 :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->ll_container:I

    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    goto/16 :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->ll_container:I

    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    sget-object v3, Lus/zoom/zrc/view/MeetingMainControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 230
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->ll_container:I

    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 235
    :cond_6
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    goto :goto_0

    .line 238
    :cond_7
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->ll_container:I

    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    sget-object v3, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 243
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeDetails()V

    .line 244
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeControlSystemStatus()V

    .line 246
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeStatus()V

    .line 247
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeSipStatus()V

    return-void
.end method

.method private updateSilentModeControlSystemStatus()V
    .locals 2

    .line 410
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModeControlSystem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModeControlSystem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/control_system/ControlSystemFragment;

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSilentModeDetails()V
    .locals 4

    .line 251
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MeetingActivity"

    const-string v1, "updateSilentMode meetingInfo=null"

    const/4 v2, 0x0

    .line 253
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 257
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->tv_silent_mode_meeting_topic:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->tvSilentModeMeetingTime:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lus/zoom/zrp/util/ZRPUtils;->getNormalMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/MeetingActivity;->tvSilentModeMeetingTime:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSilentModeMeetingTime()V
    .locals 2

    .line 398
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->tvSilentModeMeetingTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->tvSilentModeMeetingTime:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lus/zoom/zrp/util/ZRPUtils;->getNormalMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->tvSilentModeMeetingTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSilentModeSipStatus()V
    .locals 2

    .line 888
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModePhone:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 891
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModePhone:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModePhone:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSilentModeStatus()V
    .locals 3

    .line 371
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->llSilentModeLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->flFragmentContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->dismissDialogs()V

    .line 377
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->dismissDialogs()V

    .line 379
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getMeetingPhoneMoreFragment()Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->dismissDialogs()V

    .line 384
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->dismissDialogs()V

    .line 385
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeSipStatus()V

    .line 387
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 388
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismissAll(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 390
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->stopClaimHost()V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->llSilentModeLayer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->flFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 871
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_1

    .line 872
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 879
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 882
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    :cond_3
    return-void
.end method

.method protected backToLoginActivity()V
    .locals 1

    const/16 v0, 0x11

    .line 512
    iput v0, p0, Lus/zoom/zrc/MeetingActivity;->mResultCode:I

    .line 513
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->backToLoginActivity()V

    return-void
.end method

.method public finish()V
    .locals 3

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    sget v1, Lus/zoom/zrcbox/R$string;->meeting_duration_reset:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/MeetingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    iget v1, p0, Lus/zoom/zrc/MeetingActivity;->mResultCode:I

    invoke-virtual {p0, v1, v0}, Lus/zoom/zrc/MeetingActivity;->setResult(ILandroid/content/Intent;)V

    .line 521
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->finish()V

    return-void
.end method

.method public getMeetingRedPointController()Lus/zoom/zrc/view/MeetingRedPointController;
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 499
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 501
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0, v1}, Lus/zoom/zrc/MeetingActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p0, v1}, Lus/zoom/zrc/MeetingActivity;->moveTaskToBack(Z)Z

    :goto_0
    return-void
.end method

.method public onBatchUserChangedEntityNotification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

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

    return-void
.end method

.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 1

    .line 993
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    :cond_0
    return-void
.end method

.method public onClaimHostNotification(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1064
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->stopClaimHost()V

    return-void

    .line 1067
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/MeetingActivity;->checkShowClaimHostDialog(I)V

    return-void
.end method

.method public onClickClaimHost()V
    .locals 1

    const/4 v0, 0x1

    .line 1052
    iput-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isClaimingHost:Z

    const/4 v0, -0x1

    .line 1053
    invoke-direct {p0, v0}, Lus/zoom/zrc/MeetingActivity;->checkShowClaimHostDialog(I)V

    return-void
.end method

.method public onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
    .locals 0

    return-void
.end method

.method public onClosedCaptionResult(Z)V
    .locals 0

    return-void
.end method

.method public onComDeviceListNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget v0, Lus/zoom/zrcbox/R$layout;->meeting_main:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->setContentView(I)V

    .line 135
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->checkIsInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "isClaimingHost"

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/MeetingActivity;->isClaimingHost:Z

    .line 142
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    check-cast p1, Lus/zoom/zrc/view/MeetingRedPointController;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    .line 143
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    if-nez p1, :cond_2

    .line 144
    new-instance p1, Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-direct {p1}, Lus/zoom/zrc/view/MeetingRedPointController;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    iput-object v1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    .line 147
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/MeetingRedPointController;->attachFragmentManager(Lus/zoom/zrc/MeetingActivity;)V

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v1, Lus/zoom/zrc/view/MeetingMainControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/MeetingMainControllerFragment;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    if-nez p1, :cond_3

    .line 151
    new-instance p1, Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    .line 154
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v1, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    .line 155
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    if-nez p1, :cond_4

    .line 156
    new-instance p1, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-direct {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    .line 159
    :cond_4
    new-instance p1, Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    .line 160
    new-instance p1, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-direct {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    .line 162
    sget p1, Lus/zoom/zrcbox/R$id;->ll_container:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->flFragmentContainer:Landroid/widget/FrameLayout;

    .line 163
    sget p1, Lus/zoom/zrcbox/R$id;->ll_silent_mode_layer:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->llSilentModeLayer:Landroid/widget/LinearLayout;

    .line 164
    sget p1, Lus/zoom/zrcbox/R$id;->tv_silent_mode_phone:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModePhone:Landroid/widget/ImageView;

    .line 165
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModePhone:Landroid/widget/ImageView;

    new-instance v1, Lus/zoom/zrc/MeetingActivity$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/MeetingActivity$2;-><init>(Lus/zoom/zrc/MeetingActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget p1, Lus/zoom/zrcbox/R$id;->btn_silent_mode_cancel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 172
    new-instance v1, Lus/zoom/zrc/MeetingActivity$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/MeetingActivity$3;-><init>(Lus/zoom/zrc/MeetingActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget p1, Lus/zoom/zrcbox/R$id;->tv_silent_mode_meeting_time:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->tvSilentModeMeetingTime:Landroid/widget/TextView;

    .line 182
    sget p1, Lus/zoom/zrcbox/R$id;->iv_control_system_silent:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModeControlSystem:Landroid/widget/ImageView;

    .line 183
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity;->ivSilentModeControlSystem:Landroid/widget/ImageView;

    new-instance v1, Lus/zoom/zrc/MeetingActivity$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/MeetingActivity$4;-><init>(Lus/zoom/zrc/MeetingActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 195
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 198
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-nez p1, :cond_5

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->showWaitingDialog()V

    goto :goto_0

    .line 202
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateMeetingInfo()V

    :goto_0
    return-void
.end method

.method public onCurrentSelectedMicrophoneMuted(Z)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingRedPointController;->release()V

    .line 279
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingRedPointController;->detachFragmentManager()V

    .line 281
    :cond_1
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onDestroy()V

    return-void
.end method

.method public onHostChangedNotification(IZ)V
    .locals 0

    return-void
.end method

.method public onInviteRoomSystemManuallyResult(Z)V
    .locals 0

    return-void
.end method

.method public onMeetingCloudRecordingErrorNotification(I)V
    .locals 1

    .line 980
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_1

    .line 981
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onMeetingCloudRecordingErrorNotification(I)V

    :cond_0
    return-void

    .line 986
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onMeetingCloudRecordingErrorNotification(I)V

    :cond_2
    return-void
.end method

.method public onMeetingEndedNotification(ILjava/lang/String;)V
    .locals 0

    .line 760
    new-instance p1, Lus/zoom/zrc/MeetingActivity$14;

    invoke-direct {p1, p0}, Lus/zoom/zrc/MeetingActivity$14;-><init>(Lus/zoom/zrc/MeetingActivity;)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingExitedNotification(I)V
    .locals 0

    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 0

    return-void
.end method

.method public onMessageEventNotification(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->start_my_video_error:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 0

    return-void
.end method

.method public onNeedWaitForHost(Z)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 455
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingStatusChangeEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V

    .line 456
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 457
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    .line 458
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebinarListener(Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;)V

    .line 459
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V

    .line 460
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 461
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onPause()V

    return-void
.end method

.method public onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 0

    return-void
.end method

.method public onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 307
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 308
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->InSilentModeStateChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/notification/ModelEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeStatus()V

    goto :goto_0

    .line 310
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/SystemEvent;->SystemTimeConfigChanged:Lus/zoom/zrc/base/notification/SystemEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/notification/SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeMeetingTime()V

    goto :goto_0

    .line 312
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->CameraControlRequestTreated:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/notification/ModelEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "userid"

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 314
    invoke-direct {p0, p1}, Lus/zoom/zrc/MeetingActivity;->onUserAcceptCameraControl(I)V

    goto :goto_0

    .line 315
    :cond_2
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/notification/ModelEvent;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 316
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->checkToDismissOutdatedDialogs()V

    goto :goto_0

    .line 317
    :cond_3
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_4

    .line 318
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->onMeetingExitedNotification()V

    goto :goto_0

    .line 319
    :cond_4
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnCallStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_5

    const/4 p1, 0x7

    .line 320
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result p2

    if-eq p1, p2, :cond_5

    const/4 p1, 0x6

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 321
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->onMeetingExitedNotification()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 328
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 329
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnHostRequestStartMediaDevice:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 330
    invoke-direct {p0, p2}, Lus/zoom/zrc/MeetingActivity;->onHostRequestStartMediaDeviceNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnHostRequestCloseAudioAlert:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 332
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    goto :goto_0

    .line 333
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerHostRequestUnmuteVideoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_2

    .line 334
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    goto :goto_0

    .line 335
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerHostRequestUnmuteAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_3

    .line 336
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    .line 337
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    goto :goto_0

    .line 338
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ExitMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_4

    .line 339
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/MeetingActivity;->onExitMeetingResult(Z)V

    goto :goto_0

    .line 340
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnFarEndCameraControlNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_6

    .line 341
    instance-of p1, p2, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-nez p1, :cond_5

    return-void

    .line 344
    :cond_5
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 346
    invoke-direct {p0, p2}, Lus/zoom/zrc/MeetingActivity;->onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallback(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedPropertyChangedCallback(Landroidx/databinding/Observable;I)V

    .line 287
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    if-ne p1, p2, :cond_0

    .line 288
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->dismissWaitingDialog()V

    .line 290
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateMeetingInfo()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 297
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 298
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_0

    .line 299
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeSipStatus()V

    goto :goto_0

    .line 300
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->controlSystemDevices:I

    if-ne p2, p1, :cond_1

    .line 301
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->updateSilentModeControlSystemStatus()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 423
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 424
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingStatusChangeListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V

    .line 425
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 426
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    .line 427
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addWebinarListener(Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;)V

    .line 428
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V

    .line 429
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/MeetingActivity;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 430
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 437
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    const-string v0, "f2"

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoPageStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->checkAndShowCallRoomDialog()V

    return-void
.end method

.method public onRoomSystemCallingStatus(I)V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isClaimingHost"

    .line 128
    iget-boolean v1, p0, Lus/zoom/zrc/MeetingActivity;->isClaimingHost:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSendEmailResult(I)V
    .locals 0

    return-void
.end method

.method public onSendFeedbackFinisheResult(I)V
    .locals 0

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 1

    .line 717
    new-instance v0, Lus/zoom/zrc/MeetingActivity$13;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$13;-><init>(Lus/zoom/zrc/MeetingActivity;I)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShareCameraResult(Z)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onShareCameraResult(Z)V

    :cond_0
    return-void
.end method

.method public onSpeakerTestingNotification(IZ)V
    .locals 0

    return-void
.end method

.method public onSpeakerTestingResult(IFZ)V
    .locals 0

    return-void
.end method

.method public onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
    .locals 0

    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 1

    .line 773
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    .line 774
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    .line 775
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateGalleryVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 1

    .line 612
    new-instance v0, Lus/zoom/zrc/MeetingActivity$10;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$10;-><init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 0

    return-void
.end method

.method public onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;II)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 645
    new-instance v0, Lus/zoom/zrc/MeetingActivity$12;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$12;-><init>(Lus/zoom/zrc/MeetingActivity;Z)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 1

    .line 531
    new-instance v0, Lus/zoom/zrc/MeetingActivity$6;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$6;-><init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingLockStatus(Z)V
    .locals 1

    .line 627
    new-instance v0, Lus/zoom/zrc/MeetingActivity$11;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$11;-><init>(Lus/zoom/zrc/MeetingActivity;Z)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateMeetingParticipantsStatus()V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 1

    .line 573
    new-instance v0, Lus/zoom/zrc/MeetingActivity$8;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$8;-><init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingUserRecordingStatus(IZZZ)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 1

    .line 599
    new-instance v0, Lus/zoom/zrc/MeetingActivity$9;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$9;-><init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 1

    .line 546
    new-instance v0, Lus/zoom/zrc/MeetingActivity$7;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/MeetingActivity$7;-><init>(Lus/zoom/zrc/MeetingActivity;Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/MeetingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMyAudioResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 1

    .line 937
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    :cond_0
    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 900
    iget-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isTablet:Z

    if-nez v0, :cond_2

    .line 901
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneMainFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 904
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingPhoneWebinarFragment:Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneWebinarFragment;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    :cond_1
    return-void

    .line 909
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingMainControllerFragment:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 912
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity;->mMeetingWebinarControlFragment:Lus/zoom/zrc/view/MeetingWebinarControlFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingWebinarControlFragment;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    :cond_4
    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    return-void
.end method

.method public onZRMeetingStatusChange(I)V
    .locals 0

    return-void
.end method

.method public stopClaimHost()V
    .locals 1

    const/4 v0, 0x0

    .line 1057
    iput-boolean v0, p0, Lus/zoom/zrc/MeetingActivity;->isClaimingHost:Z

    .line 1058
    invoke-direct {p0}, Lus/zoom/zrc/MeetingActivity;->dismissClaimHostDialog()V

    return-void
.end method

.method public webinarRoleChanged(I)V
    .locals 0

    const/16 p1, 0x11

    .line 865
    iput p1, p0, Lus/zoom/zrc/MeetingActivity;->mResultCode:I

    .line 866
    invoke-virtual {p0}, Lus/zoom/zrc/MeetingActivity;->finish()V

    return-void
.end method
