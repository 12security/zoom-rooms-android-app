.class public Lus/zoom/zrc/view/CloudRecordingStopDialog;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "CloudRecordingStopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private mBtnCancel:Landroid/view/View;

.field private mBtnConfirm:Landroid/widget/TextView;

.field private mBtnSubmit:Landroid/view/View;

.field private txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lus/zoom/zrc/view/CloudRecordingStopDialog;->dismiss()V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 59
    sget v0, Lus/zoom/zrcbox/R$id;->user_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->user_confirm:I

    if-ne p1, v0, :cond_1

    .line 61
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCloudRecordingNotificationEmail()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lus/zoom/zrcsdk/ConfApp;->setMeetingRecording(ZZLjava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42
    sget p3, Lus/zoom/zrcbox/R$layout;->participant_remove_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    sget p2, Lus/zoom/zrcbox/R$id;->user_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->txt:Landroid/widget/TextView;

    .line 44
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->mBtnSubmit:Landroid/view/View;

    .line 45
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->mBtnCancel:Landroid/view/View;

    .line 46
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->mBtnConfirm:Landroid/widget/TextView;

    .line 48
    iget-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->txt:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->stop_recording_prompt:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->mBtnConfirm:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->stop:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->mBtnSubmit:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p2, p0, Lus/zoom/zrc/view/CloudRecordingStopDialog;->mBtnCancel:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
