.class public Lus/zoom/zrc/view/SimpleFeedbackFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "SimpleFeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private meetingNumber:Ljava/lang/String;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/SimpleFeedbackFragment;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    const-class v0, Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static dismissAllFeedback(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 66
    invoke-static {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 67
    invoke-static {p0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method

.method private onBadExperienceSelected()V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismiss()V

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onNotMyMeeting()V
    .locals 3

    .line 188
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;-><init>()V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFirstImpression(I)V

    const-string v1, ""

    .line 190
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setName(Ljava/lang/String;)V

    const-string v1, ""

    .line 191
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setReasons(Ljava/lang/String;)V

    const-string v1, ""

    .line 192
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setResponderEmail(Ljava/lang/String;)V

    const-string v1, ""

    .line 193
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFeedback(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/model/Model;->sendFeedback(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismiss()V

    return-void
.end method

.method private onVoteForGoodExperience()V
    .locals 3

    .line 208
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;-><init>()V

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFirstImpression(I)V

    const-string v1, ""

    .line 210
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setName(Ljava/lang/String;)V

    const-string v1, ""

    .line 211
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setReasons(Ljava/lang/String;)V

    const-string v1, ""

    .line 212
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setResponderEmail(Ljava/lang/String;)V

    const-string v1, ""

    .line 213
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFeedback(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/model/Model;->sendFeedback(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismiss()V

    .line 218
    invoke-static {}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->waitingForSendFeedbackResult()V

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

    .line 41
    const-class v0, Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/SimpleFeedbackFragment;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;-><init>()V

    .line 46
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 49
    :cond_1
    iput-object p1, v0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 51
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    return-void
.end method

.method public static waitingForSendFeedbackResult()V
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->SendFeedbackFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v3, Lus/zoom/zrc/view/SimpleFeedbackFragment$1;

    invoke-direct {v3, v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    iput-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 175
    sget v0, Lus/zoom/zrcbox/R$id;->thumb_up_id:I

    if-ne p1, v0, :cond_0

    .line 176
    invoke-direct {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->onVoteForGoodExperience()V

    goto :goto_0

    .line 178
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->thumb_down_id:I

    if-ne p1, v0, :cond_1

    .line 179
    invoke-direct {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->onBadExperienceSelected()V

    goto :goto_0

    .line 181
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->feedback_not_my_meeting:I

    if-ne p1, v0, :cond_2

    .line 182
    invoke-direct {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->onNotMyMeeting()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, v1, v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->setStyle(II)V

    .line 96
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->setCancelable(Z)V

    .line 97
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "meetingNumber"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    iget-object p3, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 113
    sget p3, Lus/zoom/zrcbox/R$layout;->simple_feedback_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    .line 114
    iget-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumb_up_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 115
    iget-object p2, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    sget p3, Lus/zoom/zrcbox/R$id;->thumb_down_id:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 116
    iget-object p3, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$id;->feedback_not_my_meeting:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_simple_feedback_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->tvTitle:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 127
    iget-object p2, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->tvTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 131
    new-instance p2, Lus/zoom/zrc/view/SimpleFeedbackFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment$2;-><init>(Lus/zoom/zrc/view/SimpleFeedbackFragment;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "meetingNumber"

    .line 107
    iget-object v1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 148
    iget-object v1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 153
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

    .line 155
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 157
    :cond_2
    :goto_1
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 159
    invoke-virtual {p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 161
    new-instance v1, Lus/zoom/zrc/view/SimpleFeedbackFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/SimpleFeedbackFragment$3;-><init>(Lus/zoom/zrc/view/SimpleFeedbackFragment;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
