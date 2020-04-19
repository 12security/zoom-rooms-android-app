.class public Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCMeetingCloudRecordingErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn:Landroid/widget/TextView;

.field private errorCode:I

.field private errorMsgText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 61
    sget v0, Lus/zoom/zrcbox/R$id;->close_btn:I

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1, v1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->setStyle(II)V

    .line 32
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38
    sget p3, Lus/zoom/zrcbox/R$layout;->cloud_record_error_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    sget p2, Lus/zoom/zrcbox/R$id;->close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->btn:Landroid/widget/TextView;

    .line 40
    sget p2, Lus/zoom/zrcbox/R$id;->error_msg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    .line 41
    iget p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    sget p3, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->ZRCMeetingCloudRecordingErrorStorageFull:I

    if-ne p2, p3, :cond_0

    .line 42
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->cloud_recording_storage_full:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    sget p3, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->ZRCMeetingCloudRecordingErrorKMSTokenNotReady:I

    if-ne p2, p3, :cond_1

    .line 44
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->cloud_recording_kms_token_not_ready:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lus/zoom/zrcbox/R$string;->cloud_recording_unknown_error:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->btn:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 55
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppModel;->setRecordingError(Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;)V

    return-void
.end method

.method public updateUI(I)V
    .locals 5

    .line 66
    iput p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    .line 67
    iget p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    sget v0, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->ZRCMeetingCloudRecordingErrorStorageFull:I

    if-ne p1, v0, :cond_0

    .line 68
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->cloud_recording_storage_full:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    sget v0, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->ZRCMeetingCloudRecordingErrorKMSTokenNotReady:I

    if-ne p1, v0, :cond_1

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->cloud_recording_kms_token_not_ready:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorMsgText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->cloud_recording_unknown_error:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->errorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
