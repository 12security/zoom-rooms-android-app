.class Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;
.super Ljava/lang/Object;
.source "LoginPairingCodeHelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCloseView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mTitleView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->login_dialog_pairing_code_help:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->login_help_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    sget v1, Lus/zoom/zrcbox/R$string;->pairing_code_help_content:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://zoom.us"

    .line 46
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 50
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$id;->login_help_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mTitleView:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$id;->close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mCloseView:Landroid/view/View;

    .line 53
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mCloseView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->fixTitleLayout()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->fixCloseTouchArea()V

    return-void
.end method

.method private fixCloseTouchArea()V
    .locals 4

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 133
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 134
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mCloseView:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private fixTitleLayout()V
    .locals 5

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mTitleView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 114
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 113
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 115
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 117
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x2

    if-le v1, v3, :cond_1

    .line 121
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 122
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 125
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    :goto_0
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$style;->ZRCLoginDialog_Transparent:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 74
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 82
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mTitleView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog$1;-><init>(Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mCloseView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog$2;-><init>(Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    return-void
.end method
