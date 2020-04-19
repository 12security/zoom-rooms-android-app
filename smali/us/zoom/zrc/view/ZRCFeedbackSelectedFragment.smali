.class public Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCFeedbackSelectedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private meetingNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    const-class v0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method private onViewMoreClicked()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->meetingNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->dismiss()V

    return-void
.end method

.method private ovViewNoneClick()V
    .locals 3

    .line 134
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;-><init>()V

    const/4 v1, 0x2

    .line 135
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFirstImpression(I)V

    const-string v1, ""

    .line 136
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setName(Ljava/lang/String;)V

    const-string v1, ""

    .line 137
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setReasons(Ljava/lang/String;)V

    const-string v1, ""

    .line 138
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setFeedback(Ljava/lang/String;)V

    const-string v1, ""

    .line 139
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->setResponderEmail(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/model/Model;->sendFeedback(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->dismiss()V

    .line 145
    invoke-static {}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->waitingForSendFeedbackResult()V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    const-class v0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;-><init>()V

    .line 38
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 41
    :cond_1
    iput-object p1, v0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->meetingNumber:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->context:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->setStyle(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 126
    sget v0, Lus/zoom/zrcbox/R$id;->feedback_no_more_info:I

    if-ne p1, v0, :cond_0

    .line 127
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->ovViewNoneClick()V

    goto :goto_0

    .line 128
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->feedback_i_have_more_info:I

    if-ne p1, v0, :cond_1

    .line 129
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->onViewMoreClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->meetingNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "meetingNumber"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->meetingNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    .line 75
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->setCancelable(Z)V

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 77
    sget v0, Lus/zoom/zrcbox/R$layout;->feed_back_selected_fragment:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->feedback_no_more_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    sget p3, Lus/zoom/zrcbox/R$id;->feedback_i_have_more_info:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->feed_back_share_more_msg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 90
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "meetingNumber"

    .line 70
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->meetingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 103
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

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 107
    :cond_2
    :goto_1
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 112
    new-instance v1, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment$1;-><init>(Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
