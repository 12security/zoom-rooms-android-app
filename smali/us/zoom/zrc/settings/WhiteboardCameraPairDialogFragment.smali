.class public Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "WhiteboardCameraPairDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final PAIR_SEIZE_ALERT:Ljava/lang/String; = "pair_seize_alert"

.field public static final TAG:Ljava/lang/String; = "WhiteboardCameraPairDialogFragment"


# instance fields
.field private admin:Ljava/lang/String;

.field private connectKaptivoHint:Landroid/widget/TextView;

.field private connectTV:Lus/zoom/zrc/base/widget/ZRCButton;

.field private dismissBtn:Landroid/view/View;

.field private incorrectAdminPwdTV:Landroid/widget/TextView;

.field private inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private isPairViaIpAddress:Z

.field private item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

.field private pwd:Ljava/lang/String;

.field private uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 85
    new-instance v0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$1;-><init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    .line 339
    new-instance v0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$5;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$5;-><init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->updateAccountPwdLabelWidth()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->admin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isValidInput()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Lus/zoom/zrc/base/widget/ZRCButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectTV:Lus/zoom/zrc/base/widget/ZRCButton;

    return-object p0
.end method

.method private closeSoftKeyboard()V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private getInputAdmin()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getInputIp()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getInputPwd()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private initItem(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 1

    .line 465
    new-instance v0, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-direct {v0, p1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;-><init>(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    return-void
.end method

.method private initWindow()V
    .locals 4

    .line 440
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 453
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 454
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->pair_wbcamera_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 456
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->pair_wbcamera_dialog_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 455
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 458
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    const/16 v1, 0x24

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private isValidInput()Z
    .locals 1

    .line 366
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputAdmin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputPwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isValidIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidIpAddress()Z
    .locals 2

    .line 370
    iget-boolean v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isPairViaIpAddress:Z

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onConnect()V
    .locals 5

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->showWrongPwd(Z)V

    .line 224
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputAdmin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->admin:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->pwd:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputIp()Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-boolean v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isPairViaIpAddress:Z

    if-eqz v1, :cond_1

    .line 229
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->safeDismiss()V

    return-void

    .line 235
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->admin:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->pwd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->pair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->admin:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->pair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->closeSoftKeyboard()V

    .line 242
    sget v0, Lus/zoom/zrcbox/R$string;->connecting:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method private onHandleReasonCodeAlreadyPairedByOther(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 3

    .line 310
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-string v1, "pair_seize_alert"

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/String;)V

    .line 312
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 313
    sget v1, Lus/zoom/zrcbox/R$string;->wbc_pair_seize_title:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 314
    sget v1, Lus/zoom/zrcbox/R$string;->wbc_pair_seize_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 315
    sget v1, Lus/zoom/zrcbox/R$string;->connect:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$3;-><init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 322
    sget p1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$4;-><init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    .line 328
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setCancelable(Z)V

    .line 329
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "pair_seize_alert"

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onWhiteboardCameraInfoChanged()V
    .locals 5

    .line 248
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputAdmin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "WhiteboardCameraPairDialogFragment"

    const-string v2, "no user input, current zrc is not operating, return"

    .line 253
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 257
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 261
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v2

    .line 262
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_reason_code()I

    move-result v0

    if-nez v2, :cond_3

    return-void

    .line 268
    :cond_3
    iget-object v3, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v3, v2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->isSameAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getInputIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "WhiteboardCameraPairDialogFragment"

    const-string v2, "onNotify, not pair the same wbc!"

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 269
    :cond_5
    :goto_0
    iput-object v2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 270
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->updateConnectHint()V

    .line 277
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->dismissWaitingDialog()V

    const-string v1, ""

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 298
    :pswitch_0
    invoke-direct {p0, v3}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->showWrongPwd(Z)V

    goto :goto_1

    .line 301
    :pswitch_1
    invoke-direct {p0, v2}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->onHandleReasonCodeAlreadyPairedByOther(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    goto :goto_1

    .line 295
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->wbc_zr_version_outdated:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 292
    :pswitch_3
    sget v0, Lus/zoom/zrcbox/R$string;->wbc_device_version_outdated:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 289
    :pswitch_4
    sget v0, Lus/zoom/zrcbox/R$string;->wbc_connect_fail:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 283
    :cond_6
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_status()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 284
    sget v0, Lus/zoom/zrcbox/R$string;->wbc_connect_successful:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->safeDismiss()V

    .line 306
    :cond_7
    :goto_1
    invoke-direct {p0, v1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->showPairErrorToast(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 1

    const-string v0, "WhiteboardCameraPairDialogFragment"

    .line 70
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;-><init>()V

    .line 76
    :cond_0
    invoke-direct {v0, p1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->initItem(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    .line 78
    invoke-virtual {v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "WhiteboardCameraPairDialogFragment"

    .line 82
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private showPairErrorToast(Ljava/lang/String;)V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private showWrongPwd(Z)V
    .locals 2

    .line 390
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->incorrectAdminPwdTV:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    iget-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->incorrectAdminPwdTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateAccountPwdLabelWidth()V
    .locals 6

    .line 418
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->wbc_pair_account:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 423
    sget v2, Lus/zoom/zrcbox/R$id;->wbc_pair_pwd:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 424
    sget v3, Lus/zoom/zrcbox/R$id;->wbc_pair_ip:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 426
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 427
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 428
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 430
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gtz v3, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 435
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 436
    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method private updateConnectHint()V
    .locals 6

    .line 398
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectKaptivoHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isPairViaIpAddress:Z

    if-eqz v1, :cond_1

    .line 402
    sget v1, Lus/zoom/zrcbox/R$string;->pair_wbcamera_via_ip_hint:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$string;->connect_to_kaptivo_hint:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v4

    iget-object v5, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v4, v5}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectTV:Lus/zoom/zrc/base/widget/ZRCButton;

    if-ne p1, v0, :cond_0

    .line 207
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->onConnect()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->dismissBtn:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->dismiss()V

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

    .line 98
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->setDisableImmersiveModeForPolycomTrio()V

    .line 102
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/high16 v1, 0x4000000

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const/4 v1, 0x3

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 124
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const/4 p3, 0x0

    .line 157
    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->requestWindowFeature(I)V

    .line 160
    sget v0, Lus/zoom/zrcbox/R$layout;->pair_wbc_layout:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 162
    sget p2, Lus/zoom/zrcbox/R$id;->btn_dismiss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->dismissBtn:Landroid/view/View;

    .line 163
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->dismissBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget p2, Lus/zoom/zrcbox/R$id;->tv_connect_to_kaptivo_hint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectKaptivoHint:Landroid/widget/TextView;

    .line 167
    sget p2, Lus/zoom/zrcbox/R$id;->pair_wbcamera_input_admin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

    .line 168
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableClearIcon()V

    .line 170
    sget p2, Lus/zoom/zrcbox/R$id;->pair_wbcamera_input_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    .line 171
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableClearIcon()V

    .line 172
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 174
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_host()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LIST_OTHER_ITEM_HOST"

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isPairViaIpAddress:Z

    .line 176
    sget p2, Lus/zoom/zrcbox/R$id;->pair_wbcamera_input_ip_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 177
    sget v0, Lus/zoom/zrcbox/R$id;->pair_wbcamera_ip_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isPairViaIpAddress:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-boolean p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isPairViaIpAddress:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    sget p2, Lus/zoom/zrcbox/R$id;->pair_wbcamera_input_ip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    .line 182
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableClearIcon()V

    .line 183
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    sget p2, Lus/zoom/zrcbox/R$id;->wbc_pair_wrong_admin_pwd_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->incorrectAdminPwdTV:Landroid/widget/TextView;

    .line 187
    sget p2, Lus/zoom/zrcbox/R$id;->pair_wbcamera_connect:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCButton;

    iput-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectTV:Lus/zoom/zrc/base/widget/ZRCButton;

    .line 188
    iget-object p2, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectTV:Lus/zoom/zrc/base/widget/ZRCButton;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/base/widget/ZRCButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 107
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 108
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p1, p2, :cond_0

    .line 358
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isValidInput()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->onConnect()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 216
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraInfo:I

    if-ne p2, p1, :cond_0

    .line 217
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->onWhiteboardCameraInfoChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 133
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 134
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->initWindow()V

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->updateConnectHint()V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->connectTV:Lus/zoom/zrc/base/widget/ZRCButton;

    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->isValidInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCButton;->setEnabled(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 146
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    .line 147
    invoke-direct {p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->closeSoftKeyboard()V

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputAdmin:Lus/zoom/zrc/base/widget/ZRCEditText;

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputPwd:Lus/zoom/zrc/base/widget/ZRCEditText;

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->inputIp:Lus/zoom/zrc/base/widget/ZRCEditText;

    iget-object v1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 195
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 196
    new-instance p2, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$2;-><init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
