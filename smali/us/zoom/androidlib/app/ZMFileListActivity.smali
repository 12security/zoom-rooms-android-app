.class public Lus/zoom/androidlib/app/ZMFileListActivity;
.super Lus/zoom/androidlib/app/ZMActivity;
.source "ZMFileListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/androidlib/app/ZMFileListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;
    }
.end annotation


# static fields
.field private static final ADAPTER_CLASS_NAME:Ljava/lang/String; = "adapter_class_name"

.field private static final DIR_START_PATH:Ljava/lang/String; = "dir_start_path"

.field public static final FAILED_PROMT:Ljava/lang/String; = "failed_promt"

.field private static final FILE_LIST_PROMPT_MESSAGE:Ljava/lang/String; = "file_list_prompt_message"

.field private static final FILTER_FILE_EXTENSIONS:Ljava/lang/String; = "filter_file_extensions"

.field private static final IS_SHARE_LINK_ENABLE:Ljava/lang/String; = "is_share_link_enable"

.field private static final PROXY_INFO:Ljava/lang/String; = "proxy_info"

.field private static final SELECTED_BUTTON_TEXT_RES_ID:Ljava/lang/String; = "selected_button_text_res_id"

.field public static final SELECTED_FILE_NAME:Ljava/lang/String; = "selected_file_name"

.field public static final SELECTED_FILE_PATH:Ljava/lang/String; = "selected_file_path"

.field public static final SHARED_FILE_ID:Ljava/lang/String; = "shared_file_id"

.field public static final SHARED_FILE_LINK:Ljava/lang/String; = "shared_file_link"

.field public static final SHARED_FILE_SIZE:Ljava/lang/String; = "shared_file_size"

.field public static final SHARED_FILE_TYPE:Ljava/lang/String; = "shared_file_type"

.field private static final STARTED_STATUS_FLAG:Ljava/lang/String; = "started_status_flag"

.field public static mProxyInfo:[Ljava/lang/String;


# instance fields
.field private final STATUS_ERROR:I

.field private final STATUS_IDLE:I

.field private final STATUS_OPENED:I

.field private final STATUS_STARTED:I

.field private final STATUS_STARTING:I

.field private mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

.field private mAdatpterClassName:Ljava/lang/String;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnClose:Landroid/widget/Button;

.field private mBtnExit:Landroid/widget/Button;

.field private mBtnSelect:Landroid/widget/Button;

.field private mDirPath:Ljava/lang/String;

.field private mFileList:Landroid/widget/ListView;

.field private mFilterExtensions:[Ljava/lang/String;

.field private mIsShareLinkEnable:Z

.field private mPrompt:Landroid/view/View;

.field private mPromptMessage:Ljava/lang/String;

.field private mPromptMsgView:Landroid/widget/TextView;

.field private mSelTextResId:I

.field private mStatus:I

.field private mTitle:Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;

.field private mWaitingProgress:Landroid/view/View;

.field private mWaitingPromt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->STATUS_IDLE:I

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->STATUS_STARTING:I

    const/4 v1, 0x2

    .line 48
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->STATUS_STARTED:I

    const/4 v1, 0x3

    .line 49
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->STATUS_OPENED:I

    const/4 v1, 0x4

    .line 50
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->STATUS_ERROR:I

    .line 51
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    .line 52
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mIsShareLinkEnable:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdatpterClassName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mDirPath:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFilterExtensions:[Ljava/lang/String;

    .line 72
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mSelTextResId:I

    .line 73
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    return-void
.end method

.method public static buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 142
    invoke-static/range {v0 .. v7}, Lus/zoom/androidlib/app/ZMFileListActivity;->buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 152
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "adapter_class_name"

    .line 153
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 155
    array-length p0, p2

    if-lez p0, :cond_0

    const-string p0, "filter_file_extensions"

    .line 156
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_0
    invoke-static {p3}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "dir_start_path"

    .line 160
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-lez p4, :cond_2

    const-string p0, "selected_button_text_res_id"

    .line 164
    invoke-virtual {p1, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    :cond_2
    invoke-static {p5}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "file_list_prompt_message"

    .line 168
    invoke-virtual {p1, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string p0, "is_share_link_enable"

    .line 171
    invoke-virtual {p1, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p7, :cond_4

    .line 173
    array-length p0, p7

    if-lez p0, :cond_4

    const-string p0, "proxy_info"

    .line 174
    invoke-virtual {p1, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-object p1
.end method

.method public static buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 147
    invoke-static/range {v0 .. v7}, Lus/zoom/androidlib/app/ZMFileListActivity;->buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private exit()V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->setResult(I)V

    .line 558
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->finish()V

    return-void
.end method

.method private exitByFailed(Ljava/lang/String;)V
    .locals 2

    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 598
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "failed_promt"

    .line 599
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x0

    .line 602
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->setResult(ILandroid/content/Intent;)V

    .line 603
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->finish()V

    return-void
.end method

.method private exitOK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 562
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 563
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "selected_file_path"

    .line 564
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    :cond_0
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "selected_file_name"

    .line 567
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, -0x1

    .line 571
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->setResult(ILandroid/content/Intent;)V

    .line 573
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->finish()V

    return-void
.end method

.method private exitOK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shared_file_id"

    .line 579
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    :cond_0
    invoke-static {p3}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "shared_file_link"

    .line 582
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :cond_1
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "selected_file_name"

    .line 585
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p1, "shared_file_size"

    .line 588
    invoke-virtual {v0, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "shared_file_type"

    .line 589
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 591
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->setResult(ILandroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->finish()V

    return-void
.end method

.method private getAdapter(Ljava/lang/String;)Lus/zoom/androidlib/app/ZMFileListBaseAdapter;
    .locals 2

    .line 210
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :catch_1
    return-object v1
.end method

.method private initial(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdatpterClassName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "adapter_class_name"

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdatpterClassName:Ljava/lang/String;

    const-string v0, "filter_file_extensions"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFilterExtensions:[Ljava/lang/String;

    const-string v0, "dir_start_path"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mDirPath:Ljava/lang/String;

    const-string v0, "selected_button_text_res_id"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mSelTextResId:I

    const-string v0, "file_list_prompt_message"

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    const-string v0, "started_status_flag"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    const-string v0, "is_share_link_enable"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mIsShareLinkEnable:Z

    const-string v0, "proxy_info"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lus/zoom/androidlib/app/ZMFileListActivity;->mProxyInfo:[Ljava/lang/String;

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "adapter_class_name"

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdatpterClassName:Ljava/lang/String;

    const-string v0, "filter_file_extensions"

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFilterExtensions:[Ljava/lang/String;

    const-string v0, "dir_start_path"

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mDirPath:Ljava/lang/String;

    const-string v0, "selected_button_text_res_id"

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mSelTextResId:I

    const-string v0, "file_list_prompt_message"

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    .line 203
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    const-string v0, "is_share_link_enable"

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mIsShareLinkEnable:Z

    const-string v0, "proxy_info"

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lus/zoom/androidlib/app/ZMFileListActivity;->mProxyInfo:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private onClickBack()V
    .locals 2

    .line 504
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isRootDir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->upDir()V

    .line 508
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->refresh()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private onClickClose()V
    .locals 0

    .line 518
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->exit()V

    return-void
.end method

.method private onClickExit()V
    .locals 1

    .line 497
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isNeedAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->logout()V

    .line 500
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->exit()V

    return-void
.end method

.method private onClickSelect()V
    .locals 1

    .line 512
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isFileSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->openSelectedFile()V

    :cond_0
    return-void
.end method

.method private open()V
    .locals 2

    .line 403
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 404
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->openDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 406
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 408
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 77
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    .line 85
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 81
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static/range {p1 .. p6}, Lus/zoom/androidlib/app/ZMFileListActivity;->buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 95
    const-class p3, Lus/zoom/androidlib/app/ZMFileListActivity;

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static startFileListActivity(Landroid/app/Activity;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static/range {p1 .. p7}, Lus/zoom/androidlib/app/ZMFileListActivity;->buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 106
    const-class p3, Lus/zoom/androidlib/app/ZMFileListActivity;

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 111
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    .line 119
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 115
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 124
    invoke-static/range {v0 .. v7}, Lus/zoom/androidlib/app/ZMFileListActivity;->startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static startFileListActivity(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Lus/zoom/androidlib/app/ZMFileListBaseAdapter;",
            ">;I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    :cond_1
    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 135
    invoke-static/range {v1 .. v8}, Lus/zoom/androidlib/app/ZMFileListActivity;->buildIntent(Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 136
    const-class v2, Lus/zoom/androidlib/app/ZMFileListActivity;

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move v2, p2

    .line 137
    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 2

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 393
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 394
    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_1

    .line 396
    aget v1, p3, p1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onStoragePermissionResult(I)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 368
    invoke-super {p0, p1, p2, p3}, Lus/zoom/androidlib/app/ZMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 369
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 489
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->exit()V

    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->refresh()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 524
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->onClickExit()V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 526
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->onClickBack()V

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 528
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->onClickSelect()V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 530
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->onClickClose()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    sget v0, Lus/zoom/androidlib/R$layout;->zm_file_list:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->setContentView(I)V

    .line 237
    sget v0, Lus/zoom/androidlib/R$id;->file_list_prompt:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    .line 238
    sget v0, Lus/zoom/androidlib/R$id;->prompt_message:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMsgView:Landroid/widget/TextView;

    .line 239
    sget v0, Lus/zoom/androidlib/R$id;->btnExit:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    .line 240
    sget v0, Lus/zoom/androidlib/R$id;->btnBack:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    .line 241
    sget v0, Lus/zoom/androidlib/R$id;->btnClose:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    .line 242
    sget v0, Lus/zoom/androidlib/R$id;->btnSelect:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    .line 243
    sget v0, Lus/zoom/androidlib/R$id;->waitingProgress:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingProgress:Landroid/view/View;

    .line 244
    sget v0, Lus/zoom/androidlib/R$id;->txtWaitingPromt:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingPromt:Landroid/widget/TextView;

    .line 245
    sget v0, Lus/zoom/androidlib/R$id;->txtTitle:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mTitle:Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;

    .line 246
    sget v0, Lus/zoom/androidlib/R$id;->file_list:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFileList:Landroid/widget/ListView;

    .line 248
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListActivity;->initial(Landroid/os/Bundle;)V

    .line 255
    iget p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mSelTextResId:I

    if-lez p1, :cond_0

    .line 256
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 259
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdatpterClassName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListActivity;->getAdapter(Ljava/lang/String;)Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    .line 260
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 261
    iput p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    return-void

    .line 264
    :cond_1
    invoke-virtual {p1, p0, p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->init(Lus/zoom/androidlib/app/ZMActivity;Lus/zoom/androidlib/app/ZMFileListListener;)V

    .line 265
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFilterExtensions:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 266
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->setFilterExtens([Ljava/lang/String;)V

    .line 269
    :cond_2
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mIsShareLinkEnable:Z

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->enableShareLink(Z)V

    .line 272
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFileList:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 275
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFileList:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFileList:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 327
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onDestroy()V

    .line 330
    :cond_0
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 480
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p1, p3}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onClickItem(I)V

    .line 484
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->refresh()V

    return-void
.end method

.method public onOpenDirFailed(Ljava/lang/String;)V
    .locals 1

    .line 649
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onOpenFileFailed(Ljava/lang/String;)V
    .locals 1

    .line 654
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 335
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onPause()V

    .line 336
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onReLogin()V
    .locals 1

    .line 546
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isNeedAuth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->logout()V

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    .line 551
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->login()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 536
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->refresh()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    invoke-super {p0, p1, p2, p3}, Lus/zoom/androidlib/app/ZMActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 379
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    const-string v1, "fileListPermissionResult"

    new-instance v8, Lus/zoom/androidlib/app/ZMFileListActivity$1;

    const-string v4, "fileListPermissionResult"

    move-object v2, v8

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lus/zoom/androidlib/app/ZMFileListActivity$1;-><init>(Lus/zoom/androidlib/app/ZMFileListActivity;Ljava/lang/String;I[Ljava/lang/String;[I)V

    invoke-virtual {v0, v1, v8}, Lus/zoom/androidlib/util/EventTaskManager;->pushLater(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 321
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 322
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListActivity;->initial(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 351
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onResume()V

    .line 352
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->exit()V

    return-void

    .line 357
    :cond_0
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isNeedAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->login()V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onResume()V

    .line 363
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->refresh()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdatpterClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "adapter_class_name"

    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isRootDir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCurrentDirPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mDirPath:Ljava/lang/String;

    const-string v0, "dir_start_path"

    .line 296
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCurrentDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mFilterExtensions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    const-string v1, "filter_file_extensions"

    .line 300
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 303
    :cond_2
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mSelTextResId:I

    if-lez v0, :cond_3

    const-string v1, "selected_button_text_res_id"

    .line 304
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    :cond_3
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file_list_prompt_message"

    .line 308
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "started_status_flag"

    .line 311
    iget v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "is_share_link_enable"

    .line 312
    iget-boolean v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mIsShareLinkEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    sget-object v0, Lus/zoom/androidlib/app/ZMFileListActivity;->mProxyInfo:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    const-string v1, "proxy_info"

    .line 315
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onSelectedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/app/ZMFileListActivity;->exitOK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSharedFileLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 659
    invoke-direct/range {p0 .. p6}, Lus/zoom/androidlib/app/ZMFileListActivity;->exitOK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 343
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMActivity;->onStart()V

    .line 344
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onStart()V

    :cond_0
    return-void
.end method

.method public onStarted(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 614
    invoke-direct {p0, p2}, Lus/zoom/androidlib/app/ZMFileListActivity;->exitByFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 618
    iput p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    .line 619
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->open()V

    .line 620
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity;->refresh()V

    return-void
.end method

.method public onStarting()V
    .locals 1

    const/4 v0, 0x1

    .line 608
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    return-void
.end method

.method public onUpdateWaitingMessage(Ljava/lang/String;)V
    .locals 1

    .line 635
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingPromt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onWaitingEnd()V
    .locals 2

    .line 644
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onWaitingStart(Ljava/lang/String;)V
    .locals 2

    .line 625
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingPromt:Landroid/widget/TextView;

    sget v0, Lus/zoom/androidlib/R$string;->zm_msg_loading:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mWaitingPromt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 415
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mStatus:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 457
    :pswitch_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isNeedAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    iget-object v2, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMsgView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 467
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 470
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 427
    :pswitch_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isRootDir()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMsgView:Landroid/widget/TextView;

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPromptMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :goto_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mTitle:Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v3}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCurrentDirName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isRootDir()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isNeedAuth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 439
    :cond_3
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    :goto_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 443
    :cond_4
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    :goto_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mAdapter:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isFileSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 451
    :cond_5
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 418
    :pswitch_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
