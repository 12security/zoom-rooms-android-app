.class public Lus/zoom/zrc/view/ZRCProblemReportFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCProblemReportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/model/AppEngine$IWebEvent;


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field private static final sdf:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private esv:Ljava/util/concurrent/ExecutorService;

.field private isTablet:Z

.field private mZrcAgree_txt:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

.field private mZrcContent:Landroid/widget/EditText;

.field private mZrcSubject:Landroid/widget/EditText;

.field private mZrcTitle_txt:Landroid/widget/TextView;

.field private mZrcTo:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method private UpdateContent()V
    .locals 6

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->getWorkMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->problem_report_zpp_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->problem_report_zpc_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 209
    new-array v3, v2, [Ljava/lang/Object;

    .line 210
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/PTApp;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\n"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lus/zoom/zrcbox/R$string;->problem_report_zp_version:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 214
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getRoomDisplayVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 213
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    sget v1, Lus/zoom/zrcbox/R$string;->problem_report_room_email:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 217
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getMainAccountEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 216
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "\n"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    sget v1, Lus/zoom/zrcbox/R$string;->problem_report_room_name:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 221
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 220
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    sget v1, Lus/zoom/zrcbox/R$string;->problem_report_guide:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCProblemReportFragment;)Landroid/widget/EditText;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ZRCProblemReportFragment;)Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;
    .locals 0

    .line 53
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcAgree_txt:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    return-object p0
.end method

.method private closeKeyboard()V
    .locals 1

    .line 321
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    .line 326
    :cond_0
    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private sendZRCProblem()V
    .locals 5

    .line 242
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    .line 243
    new-instance v1, Lus/zoom/zrc/utils/ProblemReportSender;

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Lus/zoom/zrc/utils/ProblemReportSender;-><init>(Z)V

    .line 244
    invoke-static {}, Lus/zoom/zrc/utils/Util;->createCaseID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcSubject:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lus/zoom/zrc/utils/ProblemReportSender;->sendProblemReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAgreeText()V
    .locals 8

    .line 296
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 297
    sget v1, Lus/zoom/zrcbox/R$string;->send_problem_report_agree_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lus/zoom/zrcbox/R$string;->privacy_policy_in_sentence:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 298
    sget v2, Lus/zoom/zrcbox/R$string;->privacy_policy_in_sentence:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 301
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 302
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lus/zoom/zrcbox/R$color;->zrcs_gray_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x11

    invoke-virtual {v0, v5, v4, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 303
    new-instance v1, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment$3;-><init>(Lus/zoom/zrc/view/ZRCProblemReportFragment;)V

    invoke-virtual {v0, v1, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 316
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcAgree_txt:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcAgree_txt:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    const-class v0, Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lus/zoom/zrc/view/ZRCProblemReportFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;-><init>()V

    .line 78
    :cond_1
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 168
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->problem_send_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lus/zoom/zrc/view/ZRCProblemReportFragment;->sdf:Ljava/text/SimpleDateFormat;

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 169
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTitle_txt:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcSubject:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->UpdateContent()V

    .line 174
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 175
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 176
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 177
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->setAgreeText()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->closeKeyboard()V

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 232
    sget v0, Lus/zoom/zrcbox/R$id;->send_cancel:I

    if-ne p1, v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->dismiss()V

    goto :goto_0

    .line 235
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->send_operation:I

    if-ne p1, v0, :cond_1

    .line 236
    sget p1, Lus/zoom/zrcbox/R$string;->sending_problem_report:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 237
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->sendZRCProblem()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->setStyle(II)V

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->isTablet:Z

    .line 92
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->setDisableImmersiveModeForPolycomTrio()V

    .line 93
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/high16 v1, 0x4000000

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const/16 v1, 0x15

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 108
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    .line 137
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->setCancelable(Z)V

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 139
    sget v0, Lus/zoom/zrcbox/R$layout;->zrc_problem_report_fragment:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->send_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 141
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$id;->send_operation:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->send_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTitle_txt:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->et_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->et_to:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTo:Landroid/widget/EditText;

    .line 145
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->et_subject:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcSubject:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->send_agree_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcAgree_txt:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcAgree_txt:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTo:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTo:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTo:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcTo:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 160
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 118
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 195
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->closeKeyboard()V

    .line 196
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->mZrcContent:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/view/ZRCProblemReportFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment$1;-><init>(Lus/zoom/zrc/view/ZRCProblemReportFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    return-void
.end method

.method public onSendEmailResult(I)V
    .locals 4

    .line 250
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLogfilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 252
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->context:Landroid/content/Context;

    sget v3, Lus/zoom/zrcbox/R$string;->succeed_in_sending_problem_report:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->context:Landroid/content/Context;

    sget v3, Lus/zoom/zrcbox/R$string;->failed_to_send_problem_report:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 256
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 263
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 267
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    .line 268
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;

    const-string v2, "onSendEmailResult"

    invoke-direct {v1, p0, v2, p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment$2;-><init>(Lus/zoom/zrc/view/ZRCProblemReportFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onSendFeedbackFinisheResult(I)V
    .locals 0

    return-void
.end method

.method public onSendReportResult(I)V
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->onSendEmailResult(I)V

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 8

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCProblemReportFragment;->isTablet:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    int-to-double v4, v0

    const-wide v6, 0x3feb333333333333L    # 0.85

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v0, v4

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_0
    int-to-double v4, v0

    const-wide v6, 0x3fee666666666666L    # 0.95

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v0, v4

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 132
    :cond_1
    :goto_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    return-void
.end method
