.class public Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
.source "RecordingConsentAlertDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingConsentAlertDialogFragment"


# instance fields
.field private negBtnOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private posBtnOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 20
    new-instance v0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment$1;-><init>(Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->posBtnOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 28
    new-instance v0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment$2;-><init>(Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->negBtnOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1

    .line 50
    sget-object v0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->safeDismiss()V

    :cond_0
    return-void
.end method

.method private setupAlertDialog()V
    .locals 4

    .line 73
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget v0, Lus/zoom/zrcbox/R$string;->meeting_recorded_webinar_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    sget v1, Lus/zoom/zrcbox/R$string;->meeting_recorded_webinar_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    sget v2, Lus/zoom/zrcbox/R$string;->zrc_continue:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    sget v3, Lus/zoom/zrcbox/R$string;->leave_webinar_description:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 83
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->meeting_recorded_meeting_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget v1, Lus/zoom/zrcbox/R$string;->meeting_recorded_meeting_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    sget v2, Lus/zoom/zrcbox/R$string;->zrc_continue:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    sget v3, Lus/zoom/zrcbox/R$string;->leave_meeting_description:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->posBtnOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->negBtnOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    .line 37
    sget-object v0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;-><init>()V

    .line 46
    :cond_1
    sget-object v1, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setupAlertDialog()V

    .line 60
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 67
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    if-ne p2, p1, :cond_0

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;->setupAlertDialog()V

    :cond_0
    return-void
.end method
