.class Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ZRCWaitingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyProgressDialog"
.end annotation


# instance fields
.field private mLoadingContentDescription:Ljava/lang/String;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCWaitingDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 74
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const-string p1, ""

    .line 77
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateLoadingContentDescription()V
    .locals 3

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mLoadingContentDescription:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mLoadingContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setFocusableInTouchMode(Z)V

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mLoadingContentDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget p1, Lus/zoom/zrcbox/R$layout;->wait_dialog_fragment:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->setContentView(I)V

    .line 84
    sget p1, Lus/zoom/zrcbox/R$id;->message:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 94
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 97
    :goto_1
    sget p1, Lus/zoom/zrcbox/R$id;->progress:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 98
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_2

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setAccessibilityLiveRegion(I)V

    .line 102
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->updateLoadingContentDescription()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStart()V

    .line 108
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    return-void
.end method

.method public setLoadingContentDescription(Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mLoadingContentDescription:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->updateLoadingContentDescription()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
