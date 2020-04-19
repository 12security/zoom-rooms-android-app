.class public abstract Lus/zoom/androidlib/app/ZMFileListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZMFileListBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;
    }
.end annotation


# instance fields
.field protected final MIN_CHECK_SPACE_SIZE:J

.field protected mActivity:Lus/zoom/androidlib/app/ZMActivity;

.field protected mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMFileListEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilterExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilterMimtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mIsShareLinkEnable:Z

.field protected mLastErrorMessage:Ljava/lang/String;

.field private mSelectedPos:I

.field protected mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterExtensions:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterMimtypes:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mLastErrorMessage:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    const-wide/32 v0, 0x3200000

    .line 37
    iput-wide v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->MIN_CHECK_SPACE_SIZE:J

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mIsShareLinkEnable:Z

    return-void
.end method

.method private getFileItemView(Lus/zoom/androidlib/app/ZMFileListEntry;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 208
    instance-of p3, p2, Lus/zoom/androidlib/app/ZMFileListItemView;

    if-nez p3, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    check-cast p2, Lus/zoom/androidlib/app/ZMFileListItemView;

    goto :goto_1

    .line 209
    :cond_2
    :goto_0
    new-instance p2, Lus/zoom/androidlib/app/ZMFileListItemView;

    iget-object p3, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {p2, p3}, Lus/zoom/androidlib/app/ZMFileListItemView;-><init>(Landroid/content/Context;)V

    .line 214
    :goto_1
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lus/zoom/androidlib/app/ZMFileListItemView;->setDisplayName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    .line 216
    invoke-virtual {p2, p3}, Lus/zoom/androidlib/app/ZMFileListItemView;->setFolderIndicatorVisible(Z)V

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 218
    invoke-virtual {p2, p3}, Lus/zoom/androidlib/app/ZMFileListItemView;->setFolderIndicatorVisible(Z)V

    .line 221
    :goto_2
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 222
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    sget p3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_folder:I

    invoke-virtual {p2, p3}, Lus/zoom/androidlib/app/ZMFileListItemView;->setIcon(I)V

    goto :goto_3

    .line 225
    :cond_4
    invoke-static {p3}, Lus/zoom/androidlib/util/AndroidAppUtil;->getIconForFile(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/androidlib/app/ZMFileListItemView;->setIcon(I)V

    .line 228
    :goto_3
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getDate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lus/zoom/androidlib/app/ZMFileListItemView;->setLastModified(J)V

    .line 230
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 231
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getChildEntryCount()I

    move-result p1

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->setChildrenCount(I)V

    goto :goto_4

    .line 233
    :cond_5
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lus/zoom/androidlib/app/ZMFileListItemView;->setFileSize(J)V

    .line 236
    :goto_4
    invoke-virtual {p2, p4}, Lus/zoom/androidlib/app/ZMFileListItemView;->setItemChecked(Z)V

    return-object p2
.end method


# virtual methods
.method protected acceptFileType(Ljava/lang/String;)Z
    .locals 4

    .line 282
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    return v2

    .line 290
    :cond_1
    invoke-static {p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getFileExtendName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 295
    :cond_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterExtensions:Ljava/util/ArrayList;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method protected acceptFileTypeByMimeType(Ljava/lang/String;)Z
    .locals 4

    .line 302
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 306
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterMimtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    return v2

    .line 310
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterMimtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;

    .line 311
    iget-object v3, v3, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method protected alertMemoryNotEnough(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 389
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lus/zoom/androidlib/R$string;->zm_btn_ok:I

    new-instance v2, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$2;

    invoke-direct {v2, p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$2;-><init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;)V

    .line 390
    invoke-virtual {v0, v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object v0

    .line 397
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 401
    :cond_0
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 402
    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 405
    :cond_1
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->show()V

    return-void
.end method

.method protected dismissWaitingDialog()V
    .locals 1

    .line 368
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public enableShareLink(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mIsShareLinkEnable:Z

    return-void
.end method

.method public getActivity()Lus/zoom/androidlib/app/ZMActivity;
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 185
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getCurrentDirName()Ljava/lang/String;
.end method

.method public abstract getCurrentDirPath()Ljava/lang/String;
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 190
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 193
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/app/ZMFileListEntry;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLastErrorMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mLastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    iget v1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getFileItemView(Lus/zoom/androidlib/app/ZMFileListEntry;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract gotoParentDir()V
.end method

.method public hasAuthorized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Lus/zoom/androidlib/app/ZMActivity;Lus/zoom/androidlib/app/ZMFileListListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 56
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    const-string p2, "layout_inflater"

    .line 57
    invoke-virtual {p1, p2}, Lus/zoom/androidlib/app/ZMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected isDir(I)Z
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result p1

    return p1
.end method

.method public isFileSelected()Z
    .locals 2

    .line 148
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isDir(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isRootDir()Z
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->isRootDir()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->upDir()V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickItem(I)V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->openDir(Lus/zoom/androidlib/app/ZMFileListEntry;)V

    .line 134
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    .line 135
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 139
    :cond_1
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    if-ne v0, p1, :cond_2

    .line 140
    iput v1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    goto :goto_0

    .line 142
    :cond_2
    iput p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    .line 144
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->dismissWaitingDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStoragePermissionResult(I)V
    .locals 0

    return-void
.end method

.method protected openDir(Lus/zoom/androidlib/app/ZMFileListEntry;)V
    .locals 0

    return-void
.end method

.method public abstract openDir(Ljava/lang/String;)Z
.end method

.method protected openFile(Lus/zoom/androidlib/app/ZMFileListEntry;)V
    .locals 0

    return-void
.end method

.method public openSelectedFile()V
    .locals 2

    .line 165
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->openFile(Lus/zoom/androidlib/app/ZMFileListEntry;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setFilterExtens([Ljava/lang/String;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterMimtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_3

    .line 267
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 273
    aget-object v2, p1, v1

    .line 274
    invoke-static {v2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterExtensions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFilterMimtypes:Ljava/util/ArrayList;

    invoke-static {v2}, Lus/zoom/androidlib/util/AndroidAppUtil;->getMimeTypeOfFile(Ljava/lang/String;)Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setLastErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mLastErrorMessage:Ljava/lang/String;

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showWaitingDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    return-void

    .line 344
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 345
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 346
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 347
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;-><init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;)V

    invoke-virtual {p2, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 359
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 360
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 362
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 363
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method protected sortFileList()V
    .locals 3

    .line 320
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 321
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mFileList:Ljava/util/ArrayList;

    new-instance v1, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;-><init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public final upDir()V
    .locals 1

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mSelectedPos:I

    .line 112
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->gotoParentDir()V

    return-void
.end method

.method protected updateProgressWaitingDialog(Ljava/lang/String;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
