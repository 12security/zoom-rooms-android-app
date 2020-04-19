.class public Lus/zoom/zrc/view/FarEndCameraControlFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "FarEndCameraControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# instance fields
.field private bindUserId:I

.field private cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

.field private camera_approve:Landroid/widget/Button;

.field private camera_decline:Landroid/widget/Button;

.field private camera_txt:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindUserId()I
    .locals 1

    .line 133
    iget v0, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->bindUserId:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->far_end_requested_camera_control:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 94
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 93
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_txt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 108
    sget v0, Lus/zoom/zrcbox/R$id;->decline:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->approve:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 115
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->respondFarEndCameraControlWith(ZI)I

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 49
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserId()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->bindUserId:I

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->setStyle(II)V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnCameraControlResult:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, p1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/view/FarEndCameraControlFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment$1;-><init>(Lus/zoom/zrc/view/FarEndCameraControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 69
    sget v0, Lus/zoom/zrcbox/R$layout;->far_end_camera_control_fragment:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_txt:Landroid/widget/TextView;

    .line 71
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->decline:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_decline:Landroid/widget/Button;

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->approve:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_approve:Landroid/widget/Button;

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_decline:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_approve:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/view/FarEndCameraControlFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment$2;-><init>(Lus/zoom/zrc/view/FarEndCameraControlFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 85
    iget-object p2, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 121
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnCameraControlResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_0

    .line 123
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "type"

    .line 124
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
    .locals 3

    .line 99
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->cameraControl:Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/view/FarEndCameraControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->far_end_requested_camera_control:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->getUserDisplayName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/FarEndCameraControlFragment;->camera_txt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
