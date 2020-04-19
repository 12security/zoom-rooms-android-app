.class public Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCFeedbackBadExperienceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private dismissTask:Ljava/lang/Runnable;

.field private email_domain:Landroid/widget/EditText;

.field private email_name:Landroid/widget/EditText;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private meetingNumber:Ljava/lang/String;

.field private submit:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 51
    new-instance v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment$1;-><init>(Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismissTask:Ljava/lang/Runnable;

    return-void
.end method

.method private buildFeedbackInfo()V
    .locals 6

    .line 120
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$array;->feedback_reason_list_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$array;->feedback_reason_list_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 122
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 123
    new-instance v4, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    invoke-direct {v4}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;-><init>()V

    .line 124
    invoke-virtual {v4, v2}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->setChecked(Z)V

    .line 125
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->setReason(Ljava/lang/String;)V

    .line 126
    aget v5, v1, v3

    invoke-virtual {v4, v5}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->setValue(I)V

    .line 127
    iget-object v5, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->adapter:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->adapter:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->setListener(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;)V

    return-void
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    const-class v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method private isValidate(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$"

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private onBackClicked()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismiss()V

    return-void
.end method

.method private onViewCloseClick()V
    .locals 3

    .line 248
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;-><init>()V

    const/4 v1, 0x2

    .line 249
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFirstImpression(I)V

    const-string v1, ""

    .line 250
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setName(Ljava/lang/String;)V

    const-string v1, ""

    .line 251
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setReasons(Ljava/lang/String;)V

    const-string v1, ""

    .line 252
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFeedback(Ljava/lang/String;)V

    const-string v1, ""

    .line 253
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setResponderEmail(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/model/Model;->sendFeedback(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismiss()V

    return-void
.end method

.method private onViewSubmitClick()V
    .locals 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 214
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 215
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    .line 216
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->getValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 227
    :cond_3
    new-instance v1, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;

    invoke-direct {v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;-><init>()V

    const/4 v2, 0x2

    .line 228
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFirstImpression(I)V

    const-string v2, ""

    .line 229
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setName(Ljava/lang/String;)V

    const-string v2, ""

    .line 230
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFeedback(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setReasons(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_domain:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setResponderEmail(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/model/Model;->sendFeedback(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 239
    invoke-static {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 242
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismiss()V

    .line 244
    invoke-static {}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->waitingForSendFeedbackResult()V

    return-void
.end method

.method private refreshDelayTimer()V
    .locals 4

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismissTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismissTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    const-class v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;-><init>()V

    .line 66
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 69
    :cond_1
    iput-object p1, v0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private updateSubmitBtnStatus()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 276
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    :goto_1
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 281
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->submit:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 283
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->submit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->context:Landroid/content/Context;

    .line 136
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 194
    sget v0, Lus/zoom/zrcbox/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 195
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->onBackClicked()V

    goto :goto_0

    .line 196
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->close:I

    if-ne p1, v0, :cond_1

    .line 197
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->onViewCloseClick()V

    goto :goto_0

    .line 198
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->submit:I

    if-ne p1, v0, :cond_2

    .line 199
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->onViewSubmitClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, v1, v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->setStyle(II)V

    .line 83
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->setCancelable(Z)V

    .line 84
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->buildFeedbackInfo()V

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "meetingNumber"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/high16 v1, 0x4000000

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const/4 v1, 0x3

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 106
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    iget-object p3, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 142
    sget p3, Lus/zoom/zrcbox/R$layout;->zrc_feed_back_bad_experience_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    .line 143
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/ZRCScrollListView;

    .line 144
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p3, Lus/zoom/zrcbox/R$id;->submit:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->submit:Landroid/widget/Button;

    .line 145
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p3, Lus/zoom/zrcbox/R$id;->email_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_name:Landroid/widget/EditText;

    .line 146
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p3, Lus/zoom/zrcbox/R$id;->email_domain:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_domain:Landroid/widget/EditText;

    .line 147
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_name:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_domain:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->adapter:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ZRCScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 151
    sget p2, Lus/zoom/zrcbox/R$drawable;->back:I

    invoke-static {p1, p2, v0, v0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setCompoundDrawables(Landroid/widget/TextView;IIII)V

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->submit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    const-string p2, "@"

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 157
    iget-object p3, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_domain:Landroid/widget/EditText;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->meeting_feedback_bad_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->email_name:Landroid/widget/EditText;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 169
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "meetingNumber"

    .line 116
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 182
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1

    :cond_1
    int-to-double v3, v0

    const-wide v5, 0x3fee666666666666L    # 0.95

    .line 184
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 186
    :cond_2
    :goto_1
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 188
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->refreshDelayTimer()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->refreshDelayTimer()V

    return-void
.end method

.method public onViewCheckBoxClick(ILus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    .line 268
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->setChecked(Z)V

    .line 269
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->adapter:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->list:Ljava/util/List;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->refreshList(Ljava/util/List;)V

    .line 270
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->updateSubmitBtnStatus()V

    .line 271
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->refreshDelayTimer()V

    return-void
.end method
