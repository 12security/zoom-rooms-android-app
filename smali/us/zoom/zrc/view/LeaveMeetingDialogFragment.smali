.class public Lus/zoom/zrc/view/LeaveMeetingDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "LeaveMeetingDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "LeaveMeetingDialogFragment"


# instance fields
.field private cancelBtn:Landroid/view/View;

.field private endMeetingBtn:Landroid/view/View;

.field private leaveMeetingBtn:Landroid/view/View;

.field private leaveOrCancelLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveMeetingBtn:Landroid/view/View;

    return-object p0
.end method

.method private animateBackground()V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->end_or_leave_meeting_dialog_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 150
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    .line 151
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    new-instance v2, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$2;-><init>(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1

    const-string v0, "LeaveMeetingDialogFragment"

    .line 52
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    const-string v0, "LeaveMeetingDialogFragment"

    .line 41
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;-><init>()V

    .line 45
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "LeaveMeetingDialogFragment"

    .line 48
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private showMeetingWaitingDialog()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lus/zoom/zrc/MeetingActivity;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/MeetingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    invoke-static {v0, v1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->cancelBtn:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "user click cancel button"

    .line 123
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveMeetingBtn:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const-string p1, "user click leave meeting button"

    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss()V

    .line 128
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/ConfApp;->exitMeeting(Z)I

    .line 129
    invoke-direct {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->showMeetingWaitingDialog()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->endMeetingBtn:Landroid/view/View;

    if-ne p1, v0, :cond_2

    const-string p1, "user click end meeting button"

    .line 131
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->exitMeeting(Z)I

    .line 133
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss()V

    .line 134
    invoke-direct {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->showMeetingWaitingDialog()V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveOrCancelLayout:Landroid/view/View;

    if-ne p1, v0, :cond_3

    const-string p1, "user click leave_or_cancel_layout, keep still"

    .line 136
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p1, "user click outside region, close dialog"

    .line 138
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 81
    sget p3, Lus/zoom/zrcbox/R$layout;->end_or_leave_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    sget p2, Lus/zoom/zrcbox/R$id;->leave_or_cancel_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveOrCancelLayout:Landroid/view/View;

    .line 84
    sget p2, Lus/zoom/zrcbox/R$id;->leave_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveMeetingBtn:Landroid/view/View;

    .line 85
    sget p2, Lus/zoom/zrcbox/R$id;->cancel_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->cancelBtn:Landroid/view/View;

    .line 86
    sget p2, Lus/zoom/zrcbox/R$id;->end_meeting_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->endMeetingBtn:Landroid/view/View;

    .line 88
    iget-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveOrCancelLayout:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveMeetingBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->cancelBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->endMeetingBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->endMeetingBtn:Landroid/view/View;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->isAmIHost()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->leaveMeetingBtn:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 98
    new-instance p3, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$1;-><init>(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 115
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    if-ne p1, p2, :cond_1

    .line 116
    iget-object p1, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->endMeetingBtn:Landroid/view/View;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isAmIHost()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 66
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 67
    invoke-virtual {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->requestFullScreenLayout()V

    .line 68
    invoke-direct {p0}, Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->animateBackground()V

    return-void
.end method
