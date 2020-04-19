.class public Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "FarEndCameraControlApproveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# instance fields
.field private cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

.field private camera_later:Landroid/widget/Button;

.field private camera_now:Landroid/widget/Button;

.field private camera_txt:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private convertView_Approve:Landroid/view/View;

.field private hasLeaved:Z

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mFarEndCameraControlDialogFragment:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->hasLeaved:Z

    .line 54
    new-instance v0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$1;-><init>(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->hasLeaved:Z

    return p0
.end method

.method static synthetic access$102(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->hasLeaved:Z

    return p1
.end method


# virtual methods
.method public getBindUserId()I
    .locals 1

    .line 51
    iget v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->userId:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 132
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->user_accepted_camera_control:I

    invoke-static {v0, v1, p1}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_txt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 153
    sget v0, Lus/zoom/zrcbox/R$id;->Now:I

    if-ne p1, v0, :cond_1

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->canBePinnedOnAnyScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    new-instance p1, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->mFarEndCameraControlDialogFragment:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 159
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "user_info_camera_control"

    .line 160
    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 161
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->mFarEndCameraControlDialogFragment:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->mFarEndCameraControlDialogFragment:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 163
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->mFarEndCameraControlDialogFragment:Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/FarEndCameraControlDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_open_remote_camera_control:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$id;->Later:I

    .line 174
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_info_camera_control"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->userId:I

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1, v1}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->setStyle(II)V

    .line 87
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    const/4 v1, 0x1

    .line 97
    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 98
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    new-instance v1, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$2;-><init>(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)V

    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 106
    iget-object p3, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    if-nez p3, :cond_0

    .line 107
    sget p3, Lus/zoom/zrcbox/R$layout;->far_end_camera_control_approve_fragment:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    .line 108
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_txt:Landroid/widget/TextView;

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->Now:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_now:Landroid/widget/Button;

    .line 110
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->Later:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_later:Landroid/widget/Button;

    .line 111
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_now:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_later:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$3;-><init>(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 123
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->convertView_Approve:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 138
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 139
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
    .locals 2

    .line 143
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 144
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 145
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->user_accepted_camera_control:I

    invoke-static {v0, v1, p1}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->camera_txt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
