.class public Lus/zoom/zrc/view/CommonMeetingControlFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "CommonMeetingControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonMeetingControlFragment"


# instance fields
.field protected chatFragment:Landroidx/fragment/app/DialogFragment;

.field protected context:Landroid/content/Context;

.field private ivChat:Landroid/view/View;

.field private ivCloseCaption:Landroid/view/View;

.field private ivControlSystem:Landroid/view/View;

.field private ivManageParticipantRedPoint:Landroid/view/View;

.field private ivMeetingChatRedPoint:Landroid/view/View;

.field private layoutChat:Landroid/view/View;

.field private layoutSetting:Landroid/view/View;

.field private leaveMeetingBtn:Landroid/view/View;

.field protected mControlSystemInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

.field private mPhone:Landroid/view/View;

.field protected mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

.field private mTvParticipantsCount:Landroid/widget/TextView;

.field protected meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

.field private tvChat:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method private onSilentModeStateChanged()V
    .locals 1

    .line 174
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    :cond_0
    return-void
.end method

.method private updateChatIcon()V
    .locals 2

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutChat:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isMeetingChatEnabled()Z

    move-result v0

    .line 185
    iget-object v1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutChat:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivChat:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->tvChat:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private updateCloseCaptionStatus()V
    .locals 2

    .line 202
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivCloseCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivCloseCaption:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateControlSystemStatus()V
    .locals 2

    .line 250
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivControlSystem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivControlSystem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mControlSystemInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mControlSystemInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateMeetingChatRedPoint(Z)V
    .locals 1

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivMeetingChatRedPoint:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 195
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 197
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateParticipantRedPoint()V
    .locals 2

    .line 211
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivManageParticipantRedPoint:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnParticipant()Z

    move-result v0

    .line 215
    iget-object v1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivManageParticipantRedPoint:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateParticipantCountAndRedPointContentDescription()V

    return-void
.end method

.method private updateSipStatus()V
    .locals 2

    .line 239
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mPhone:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mPhone:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mPhone:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttach(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 124
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutChat:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 125
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMeetingChat()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    .line 127
    iget-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->onClickChat()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->context:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->meeting_chat_old_zr_tip:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutSetting:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivControlSystem:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/ZRCActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mControlSystemInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->leaveMeetingBtn:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 142
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    .line 143
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 168
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->InSilentModeStateChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_0

    .line 169
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onSilentModeStateChanged()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 149
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 150
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->closedCaptionInfo:I

    if-ne p2, p1, :cond_0

    .line 151
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateCloseCaptionStatus()V

    goto :goto_0

    .line 152
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->redPointFlag:I

    if-ne p2, p1, :cond_1

    .line 153
    iget-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnChat()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateMeetingChatRedPoint(Z)V

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateParticipantRedPoint()V

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_0

    .line 156
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_2

    .line 157
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateSipStatus()V

    goto :goto_0

    .line 158
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->controlSystemDevices:I

    if-ne p2, p1, :cond_3

    .line 159
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateControlSystemStatus()V

    goto :goto_0

    .line 160
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    if-ne p2, p1, :cond_4

    .line 161
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateChatIcon()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/MeetingActivity;

    .line 73
    invoke-virtual {v0}, Lus/zoom/zrc/MeetingActivity;->getMeetingRedPointController()Lus/zoom/zrc/view/MeetingRedPointController;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 76
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    sget p2, Lus/zoom/zrcbox/R$id;->iv_manage_participant_red_point:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivManageParticipantRedPoint:Landroid/view/View;

    .line 78
    sget p2, Lus/zoom/zrcbox/R$id;->layout_chat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutChat:Landroid/view/View;

    .line 79
    sget p2, Lus/zoom/zrcbox/R$id;->iv_chat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivChat:Landroid/view/View;

    .line 80
    sget p2, Lus/zoom/zrcbox/R$id;->tv_chat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->tvChat:Landroid/view/View;

    .line 81
    sget p2, Lus/zoom/zrcbox/R$id;->iv_chat_red_point:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivMeetingChatRedPoint:Landroid/view/View;

    .line 82
    sget p2, Lus/zoom/zrcbox/R$id;->layout_setting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutSetting:Landroid/view/View;

    .line 83
    sget p2, Lus/zoom/zrcbox/R$id;->iv_close_caption:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivCloseCaption:Landroid/view/View;

    .line 84
    sget p2, Lus/zoom/zrcbox/R$id;->iv_control_system:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivControlSystem:Landroid/view/View;

    .line 86
    sget p2, Lus/zoom/zrcbox/R$id;->tv_participants_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    .line 88
    sget p2, Lus/zoom/zrcbox/R$id;->phone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mPhone:Landroid/view/View;

    .line 90
    iget-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mPhone:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mPhone:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/CommonMeetingControlFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment$1;-><init>(Lus/zoom/zrc/view/CommonMeetingControlFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutChat:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateChatIcon()V

    .line 103
    iget-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p2}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnChat()Z

    move-result p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateMeetingChatRedPoint(Z)V

    .line 106
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->layoutSetting:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p2, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivControlSystem:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 108
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateControlSystemStatus()V

    .line 111
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateCloseCaptionStatus()V

    .line 112
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateParticipantRedPoint()V

    .line 113
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->updateSipStatus()V

    .line 115
    sget p2, Lus/zoom/zrcbox/R$id;->iv_leave:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->leaveMeetingBtn:Landroid/view/View;

    .line 116
    iget-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->leaveMeetingBtn:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected shouldShowRedPointOnChangeContent()Z
    .locals 4

    .line 261
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    if-nez v0, :cond_0

    const-string v0, "CommonMeetingControlFragment"

    const-string v1, "shouldShowRedPointOnChangeContent() called: meetingRedPointController == null"

    const/4 v2, 0x0

    .line 262
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 265
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnChangeContent()Z

    move-result v0

    return v0
.end method

.method public updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 0

    return-void
.end method

.method protected updateMeetingEncryptedStatus(Z)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    sget v1, Lus/zoom/zrcbox/R$id;->iv_meeting_encryption_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 273
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected updateParticipantCountAndRedPointContentDescription()V
    .locals 5

    .line 221
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->ivManageParticipantRedPoint:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 226
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 228
    :goto_0
    sget v3, Lus/zoom/zrcbox/R$string;->total_of_participants:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lus/zoom/zrcbox/R$string;->new_alert:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
