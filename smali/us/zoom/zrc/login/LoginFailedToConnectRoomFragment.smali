.class public Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginFailedToConnectRoomFragment.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field private static final KEY_SHOWING_DETAILS:Ljava/lang/String; = "showing_details"

.field private static final PR_DATE_FORMAT:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutPortrait:Z

.field private mReconnectTask:Ljava/lang/Runnable;

.field private mRetryButton:Landroid/widget/TextView;

.field private mShowDetailButton:Landroid/widget/TextView;

.field private mShowingDetails:Z

.field private mSignOutButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->PR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->stopReconnectTimer()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->onClickShowDetails()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mReconnectTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private handleSendProblemReport()V
    .locals 8

    .line 337
    invoke-static {}, Lus/zoom/zrc/utils/Util;->createCaseID()Ljava/lang/String;

    move-result-object v0

    .line 338
    sget-object v1, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->PR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 339
    sget v2, Lus/zoom/zrcbox/R$string;->problem_send_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v4}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/PTApp;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 344
    sget v6, Lus/zoom/zrcbox/R$string;->problem_report_zpp_version:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-virtual {p0, v6, v7}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 346
    :cond_0
    sget v6, Lus/zoom/zrcbox/R$string;->problem_report_zpc_version:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-virtual {p0, v6, v7}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "\n"

    .line 348
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    sget v2, Lus/zoom/zrcbox/R$string;->problem_report_zp_version:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v7

    invoke-virtual {v7}, Lus/zoom/zrc/model/Model;->getRoomDisplayVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v2, v6}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 350
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v2

    .line 352
    sget v6, Lus/zoom/zrcbox/R$string;->problem_report_room_email:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getMainAccountEmail()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-virtual {p0, v6, v7}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 353
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    sget v2, Lus/zoom/zrcbox/R$string;->problem_report_room_name:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    .line 355
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    sget v2, Lus/zoom/zrcbox/R$string;->problem_report_guide:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    sget v2, Lus/zoom/zrcbox/R$string;->problem_send_email:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 360
    instance-of v3, v3, Lus/zoom/zrc/ZRCActivity;

    if-eqz v3, :cond_1

    .line 361
    invoke-static {}, Lus/zoom/zrc/utils/ProblemReportSender;->sendZRCOnly()Lus/zoom/zrc/utils/ProblemReportSender;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lus/zoom/zrc/utils/ProblemReportSender;->sendProblemReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->sending_problem_report:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    const-class v0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    if-nez p0, :cond_0

    .line 69
    new-instance p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private onClickShowDetails()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowingDetails:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->setShowingDetails(Z)V

    return-void
.end method

.method private setShowingDetails(Z)V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->ll_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 291
    sget v2, Lus/zoom/zrcbox/R$string;->show_details:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    sget v3, Lus/zoom/zrcbox/R$string;->hide_details:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 294
    iget-object v2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->down_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 297
    iget-object v2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->up_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 303
    iget-object v2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x8

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :goto_0
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowingDetails:Z

    return-void
.end method

.method private setupImageTapToSendProblemReport()V
    .locals 2

    .line 367
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v1, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$6;-><init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V

    invoke-static {v0, v1}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->setupRepeatClick_5(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V

    return-void
.end method

.method private startReconnectTimer()V
    .locals 4

    .line 310
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->stopReconnectTimer()V

    .line 311
    new-instance v0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;-><init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mReconnectTask:Ljava/lang/Runnable;

    .line 326
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mReconnectTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReconnectTimer()V
    .locals 2

    .line 330
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mReconnectTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mReconnectTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private updateInformation(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p1

    .line 208
    sget v1, Lus/zoom/zrcbox/R$id;->ll_contact_way:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    sget v2, Lus/zoom/zrcbox/R$id;->tv_room_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    sget v3, Lus/zoom/zrcbox/R$id;->tv_zr_ip_address:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    sget v4, Lus/zoom/zrcbox/R$id;->tv_zrc_ip_address:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 212
    sget v5, Lus/zoom/zrcbox/R$id;->tv_zrc_version:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    invoke-virtual/range {p0 .. p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 215
    sget v6, Lus/zoom/zrcbox/R$string;->connection_failure_room_name:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 216
    sget v7, Lus/zoom/zrcbox/R$string;->connection_failure_zp_info:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v8

    invoke-virtual {v8}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v8

    if-eqz v8, :cond_0

    sget v8, Lus/zoom/zrcbox/R$string;->connection_failure_zpp_info:I

    goto :goto_0

    :cond_0
    sget v8, Lus/zoom/zrcbox/R$string;->connection_failure_zpc_info:I

    :goto_0
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    sget v9, Lus/zoom/zrcbox/R$string;->zpc_version:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 219
    sget v10, Lus/zoom/zrcbox/R$string;->it_phone:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 220
    sget v11, Lus/zoom/zrcbox/R$string;->it_email:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    .line 222
    invoke-static {v11}, Lus/zoom/zrc/utils/Util;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v12

    .line 223
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v13

    invoke-virtual {v13}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v13

    invoke-virtual {v13}, Lus/zoom/zrcsdk/PTApp;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v13

    .line 225
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v14

    invoke-virtual {v14}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v14

    .line 226
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v15

    invoke-virtual {v15}, Lus/zoom/zrc/model/Model;->getIpAddressOfZoomRoom()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_1
    const-string v15, ""

    .line 228
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    const-string v16, ""

    :goto_2
    move-object/from16 v11, v16

    if-eqz v14, :cond_3

    .line 230
    invoke-virtual {v14}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_3
    const-string v16, ""

    :goto_3
    if-eqz v16, :cond_4

    goto :goto_4

    :cond_4
    const-string v16, ""

    :goto_4
    move-object/from16 v17, v0

    move-object/from16 v0, v16

    if-eqz v14, :cond_5

    .line 232
    invoke-virtual {v14}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomSupportEmail()Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_5
    const-string v16, ""

    :goto_5
    if-eqz v16, :cond_6

    goto :goto_6

    :cond_6
    const-string v16, ""

    :goto_6
    if-eqz v14, :cond_7

    .line 234
    invoke-virtual {v14}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomSupportPhone()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_7
    const-string v14, ""

    :goto_7
    if-eqz v14, :cond_8

    goto :goto_8

    :cond_8
    const-string v14, ""

    .line 237
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    const-string v4, "zrFirstName = "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",zrRoomName = "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    move-object/from16 v21, v8

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v9, v4, v8}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 239
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v14, v8, v13

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 240
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v16, v9, v13

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, p0

    .line 244
    iget-boolean v10, v9, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mLayoutPortrait:Z

    if-eqz v10, :cond_9

    .line 245
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 247
    :cond_9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "   "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_a
    move-object/from16 v9, p0

    .line 250
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 251
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 252
    :cond_b
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 253
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_c
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    .line 257
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v13

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use zrFirstName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    const/4 v0, 0x1

    .line 261
    new-array v1, v0, [Ljava/lang/Object;

    aput-object v11, v1, v13

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use zrRoomName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 267
    :goto_b
    new-array v1, v0, [Ljava/lang/Object;

    aput-object v15, v1, v13

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x8

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    new-array v1, v0, [Ljava/lang/Object;

    aput-object v12, v1, v13

    move-object/from16 v8, v21

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v20

    .line 272
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v18, v0, v13

    move-object/from16 v1, v19

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    .line 275
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "showing_details"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowingDetails:Z

    .line 80
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mLayoutPortrait:Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SendProblemReportFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 100
    sget p3, Lus/zoom/zrcbox/R$layout;->cannot_connect_to_zoom_rooms:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 190
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onPause()V

    .line 191
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->stopReconnectTimer()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 196
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SendProblemReportFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne v0, p1, :cond_1

    .line 198
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->succeed_in_sending_problem_report:I

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_send_problem_report:I

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 184
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onResume()V

    .line 185
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->startReconnectTimer()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "showing_details"

    .line 88
    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowingDetails:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 155
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 157
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->updateInformation(Landroid/view/View;)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowingDetails:Z

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->setShowingDetails(Z)V

    .line 163
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 164
    sget v2, Lus/zoom/zrcbox/R$string;->re_pair:I

    goto :goto_1

    :cond_2
    sget v2, Lus/zoom/zrcbox/R$string;->sign_out:I

    :goto_1
    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-boolean v3, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mLayoutPortrait:Z

    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v3

    invoke-interface {v3}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v3

    .line 167
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$color;->zrc_blue2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setCustomTextColor(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v3

    new-instance v4, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;

    invoke-direct {v4, p0, v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;-><init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;Z)V

    .line 168
    invoke-virtual {v3, v2, v4}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mRetryButton:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->retry:I

    invoke-static {v0, v2, v1, v1, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setCompoundDrawables(Landroid/widget/TextView;IIII)V

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->hideActionBar()V

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mSignOutButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    sget p2, Lus/zoom/zrcbox/R$id;->image_cannot_connect:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mImageView:Landroid/widget/ImageView;

    .line 107
    sget p2, Lus/zoom/zrcbox/R$id;->connect_failed_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mRetryButton:Landroid/widget/TextView;

    .line 108
    sget p2, Lus/zoom/zrcbox/R$id;->tv_sign_out:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mSignOutButton:Landroid/widget/TextView;

    .line 109
    sget p2, Lus/zoom/zrcbox/R$id;->show_details:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    .line 111
    sget p2, Lus/zoom/zrcbox/R$id;->failure_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lus/zoom/zrcbox/R$string;->connection_failure_title_zoom:I

    goto :goto_0

    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->connection_failure_title:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 114
    sget p2, Lus/zoom/zrcbox/R$id;->detail_suggestion:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    sget p2, Lus/zoom/zrcbox/R$string;->connection_failure_suggestions:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget p2, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_internet_issue:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 118
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget p2, Lus/zoom/zrcbox/R$string;->connection_failure_detail:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 121
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mRetryButton:Landroid/widget/TextView;

    new-instance p2, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$1;-><init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mShowDetailButton:Landroid/widget/TextView;

    new-instance p2, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$2;-><init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->mSignOutButton:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 140
    new-instance p2, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$3;-><init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->setupImageTapToSendProblemReport()V

    return-void
.end method
