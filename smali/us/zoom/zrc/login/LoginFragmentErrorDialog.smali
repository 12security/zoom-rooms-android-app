.class public Lus/zoom/zrc/login/LoginFragmentErrorDialog;
.super Lus/zoom/zrc/login/LoginBaseDialogFragment;
.source "LoginFragmentErrorDialog.java"


# static fields
.field private static final RECONNECT_TIMER_INTERVAL:J = 0x493e0L

.field static final TAG:Ljava/lang/String; = "LoginFragmentErrorDialog"


# instance fields
.field private mAutoReconnectTask:Ljava/lang/Runnable;

.field private mCanRetry:Z

.field private mCanSignOut:Z

.field private mErrorCode:I

.field private mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/String;

.field private mRetryLabel:Ljava/lang/String;

.field private mSignOutLabel:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVerifyToSignOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseDialogFragment;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Lus/zoom/zrc/login/LoginContract$LoginErrorType;
    .locals 0

    .line 29
    iget-object p0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    return p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mAutoReconnectTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 3

    .line 274
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 278
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 281
    :cond_1
    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mRetryLabel:Ljava/lang/String;

    new-instance v2, Lus/zoom/zrc/login/LoginFragmentErrorDialog$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog$2;-><init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 291
    :cond_2
    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mSignOutLabel:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 294
    :cond_3
    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UserRefreshZAKError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iget-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v1, v2, :cond_4

    .line 295
    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v2, Lus/zoom/zrc/login/LoginFragmentErrorDialog$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog$3;-><init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 302
    :cond_4
    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SelectingStandaloneZRPForPairing:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    iget-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v1, v2, :cond_5

    .line 303
    sget v1, Lus/zoom/zrcbox/R$string;->zrc_continue:I

    new-instance v2, Lus/zoom/zrc/login/LoginFragmentErrorDialog$4;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog$4;-><init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    :cond_5
    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static get(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginFragmentErrorDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    sget-object v0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    return-object p0
.end method

.method private setErrorMessage(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 67
    iput p2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    .line 68
    iput-object p3, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    sget-object v0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->dismiss()V

    .line 60
    :cond_0
    new-instance v0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;-><init>()V

    .line 61
    invoke-direct {v0, p1, p2, p3}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->setErrorMessage(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V

    .line 62
    sget-object p1, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startAutoReconnectTimer()V
    .locals 4

    .line 318
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    .line 319
    new-instance v1, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;-><init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;Lus/zoom/zrc/login/LoginContract$IPresenter;)V

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mAutoReconnectTask:Ljava/lang/Runnable;

    .line 329
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mAutoReconnectTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAutoReconnectTimer()V
    .locals 2

    .line 333
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mAutoReconnectTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mAutoReconnectTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->setCancelable(Z)V

    if-eqz p1, :cond_0

    const-string v1, "error_type"

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 78
    invoke-static {}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->values()[Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const-string v1, "error_code"

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    const-string v1, "error_message"

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 83
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mRetryLabel:Ljava/lang/String;

    .line 84
    sget p1, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mSignOutLabel:Ljava/lang/String;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 86
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    .line 88
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getZoomRoomPassCode()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, p1

    iput-boolean v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 91
    sget-object v1, Lus/zoom/zrc/login/LoginFragmentErrorDialog$6;->$SwitchMap$us$zoom$zrc$login$LoginContract$LoginErrorType:[I

    iget-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-virtual {v2}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->dismiss()V

    goto/16 :goto_1

    .line 215
    :pswitch_1
    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mSignOutLabel:Ljava/lang/String;

    .line 216
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 217
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 218
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 209
    :pswitch_2
    sget v1, Lus/zoom/zrcbox/R$string;->pair_standalone_zrp:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 210
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 211
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 212
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 205
    :pswitch_3
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 206
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 189
    :pswitch_4
    iget v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_2

    if-eq v1, p1, :cond_1

    goto/16 :goto_1

    .line 197
    :cond_1
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 198
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 199
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    .line 200
    sget p1, Lus/zoom/zrcbox/R$string;->no_room_name_prompt:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 191
    :cond_2
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 192
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 193
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    .line 194
    sget p1, Lus/zoom/zrcbox/R$string;->different_login_type_prompt:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 183
    :pswitch_5
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 184
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 185
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    .line 186
    sget p1, Lus/zoom/zrcbox/R$string;->zp_signed_out:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :pswitch_6
    iput-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    .line 180
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_sign_into_zoom_presence_on_pc:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0, v1, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    :pswitch_7
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 176
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 138
    :pswitch_8
    iget v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    sparse-switch v1, :sswitch_data_0

    .line 170
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->startAutoReconnectTimer()V

    goto/16 :goto_1

    .line 152
    :sswitch_0
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_title:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    .line 153
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_wrong_password:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 154
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 155
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 146
    :sswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_none_address:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 147
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 148
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 158
    :sswitch_2
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 159
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 160
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    .line 161
    sget p1, Lus/zoom/zrcbox/R$string;->no_room_name_prompt:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 140
    :sswitch_3
    sget v1, Lus/zoom/zrcbox/R$string;->login_error_standalone_zrp_not_supported:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 142
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 143
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    goto/16 :goto_1

    .line 164
    :sswitch_4
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mVerifyToSignOut:Z

    .line 165
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 166
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    .line 167
    sget p1, Lus/zoom/zrcbox/R$string;->device_cannot_use_with_ds_only:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 93
    :pswitch_9
    sget v1, Lus/zoom/zrcbox/R$string;->reconnect:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mRetryLabel:Ljava/lang/String;

    .line 94
    sget v1, Lus/zoom/zrcbox/R$string;->disconnected:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    .line 95
    iget v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    const/16 v3, 0x32

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 115
    :pswitch_a
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_verify_title:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    .line 116
    sget v1, Lus/zoom/zrcbox/R$string;->xmpp_token_expired_message:I

    new-array v2, p1, [Ljava/lang/Object;

    const/16 v3, 0xdb5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 117
    sget v0, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mRetryLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :pswitch_b
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_verify_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    .line 121
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_verify_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_c
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_verify_connection:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mTitle:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 111
    sget v0, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mRetryLabel:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->startAutoReconnectTimer()V

    goto :goto_0

    .line 127
    :pswitch_d
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 128
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_zrc_reached_max_connections:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_3
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_zrp_reached_max_connections:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_e
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_automation_controller:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_f
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_other_zpp:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_10
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_other_zpc:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_11
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_other_device:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_4
    sget v0, Lus/zoom/zrcbox/R$string;->kicked_out_by_zr_not_support_encryption:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    .line 134
    :goto_0
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanRetry:Z

    .line 135
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mCanSignOut:Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x2712 -> :sswitch_4
        -0x2711 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 267
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 252
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseDialogFragment;->onDestroy()V

    .line 253
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->stopAutoReconnectTimer()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "error_type"

    .line 259
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_code"

    .line 260
    iget v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mErrorCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_message"

    .line 261
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 229
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseDialogFragment;->onStart()V

    .line 230
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    .line 231
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 234
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCAlertDialog;

    const/4 v1, -0x2

    .line 236
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;-><init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
