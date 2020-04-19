.class public Lus/zoom/androidlib/app/ZMLocalFileListAdapter;
.super Lus/zoom/androidlib/app/ZMFileListBaseAdapter;
.source "ZMLocalFileListAdapter.java"

# interfaces
.implements Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;
    }
.end annotation


# instance fields
.field private mCurrentDir:Ljava/lang/String;

.field private mFileFilter:Ljava/io/FilenameFilter;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lus/zoom/androidlib/app/ZMFileListListener;

.field private mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

.field private mSDCardCount:I

.field private mShowWaitingStartRunnable:Ljava/lang/Runnable;

.field private mStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lus/zoom/androidlib/util/ZMAsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMFileListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsbCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mSDCardCount:I

    .line 32
    iput v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mUsbCount:I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;-><init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mShowWaitingStartRunnable:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$2;-><init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mFileFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMFileListListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getFileListInfo(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMLocalFileListSession;
    .locals 0

    .line 25
    iget-object p0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    return-object p1
.end method

.method private asyncLoadStorages()V
    .locals 4

    const-wide/16 v0, 0x1f40

    .line 75
    invoke-static {p0, v0, v1}, Lus/zoom/androidlib/app/ZMStorageUtil;->asyncGetAllStorages(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;J)V

    .line 76
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lus/zoom/androidlib/app/ZMFileListListener;->onStarting()V

    .line 78
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mShowWaitingStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private checkStoragePermission()Z
    .locals 4

    .line 176
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastM()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 183
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/app/ZMActivity;->zm_checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 408
    new-instance v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;-><init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;)V

    .line 409
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lus/zoom/androidlib/R$layout;->zm_storage_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 411
    sget v1, Lus/zoom/androidlib/R$id;->txtStorageName:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mDisplayName:Landroid/widget/TextView;

    .line 412
    sget v1, Lus/zoom/androidlib/R$id;->storageIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mIcon:Landroid/widget/ImageView;

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private getFileListInfo(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMFileListEntry;",
            ">;)Z"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getFileNameFilter()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getDirectoryFileList(Ljava/lang/String;Ljava/io/FilenameFilter;Ljava/util/List;)V

    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 378
    :try_start_0
    iget-object v2, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getDirFilesCount(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 383
    :goto_1
    new-instance v4, Lus/zoom/androidlib/app/ZMFileListEntry;

    invoke-direct {v4}, Lus/zoom/androidlib/app/ZMFileListEntry;-><init>()V

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lus/zoom/androidlib/app/ZMFileListEntry;->setBytes(J)V

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lus/zoom/androidlib/app/ZMFileListEntry;->setDate(J)V

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    invoke-virtual {v4, v1}, Lus/zoom/androidlib/app/ZMFileListEntry;->setDir(Z)V

    .line 388
    invoke-virtual {v4, v2}, Lus/zoom/androidlib/app/ZMFileListEntry;->setChildEntryCount(I)V

    goto :goto_2

    .line 390
    :cond_3
    invoke-virtual {v4, v3}, Lus/zoom/androidlib/app/ZMFileListEntry;->setDir(Z)V

    .line 392
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lus/zoom/androidlib/app/ZMFileListEntry;->setDisplayName(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lus/zoom/androidlib/app/ZMFileListEntry;->setPath(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private getSDCardName(I)Ljava/lang/String;
    .locals 4

    .line 296
    iget v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mSDCardCount:I

    if-gtz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 299
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$string;->zm_lbl_sdcard:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 302
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lus/zoom/androidlib/R$string;->zm_lbl_sdcard:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStorageCount(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 433
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 439
    iget v1, v1, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    if-ne v1, p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private getStorageIndex(Ljava/util/List;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;II)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 418
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gt v0, p2, :cond_2

    .line 424
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 425
    iget v2, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    if-ne v2, p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method private getStorageIndex(Ljava/util/List;Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 453
    iget v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    if-ne v3, p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 455
    iget-object v2, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private getUsbStorageName(I)Ljava/lang/String;
    .locals 4

    .line 306
    iget v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mUsbCount:I

    if-gtz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 309
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$string;->zm_lbl_usb_storage:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 312
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lus/zoom/androidlib/R$string;->zm_lbl_usb_storage:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isInternalStorageRoot()Z
    .locals 5

    .line 209
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 214
    iget-boolean v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    iget-object v2, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_2
    return v1
.end method

.method private isSDCardStorageRoot()Z
    .locals 5

    .line 222
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 226
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 227
    iget-boolean v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    iget-object v2, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private isStorageRootDir()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 252
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isSDCardStorageRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 256
    :cond_1
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isUSBStorageRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 260
    :cond_2
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isInternalStorageRoot()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isUSBStorageRoot()Z
    .locals 5

    .line 235
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 239
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 240
    iget-boolean v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    iget-object v2, v2, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private requestStoragePermission()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 189
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 193
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, v3}, Lus/zoom/androidlib/app/ZMActivity;->zm_requestPermissions([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 506
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isRootDir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getCount()I

    move-result v0

    return v0

    .line 510
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 513
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentDirName()Ljava/lang/String;
    .locals 3

    .line 269
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 273
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isInternalStorageRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    sget v1, Lus/zoom/androidlib/R$string;->zm_lbl_internal_storage:I

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ZMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isSDCardStorageRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getStorageIndex(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    .line 279
    invoke-direct {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getSDCardName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isUSBStorageRoot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getStorageIndex(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    .line 284
    invoke-direct {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getUsbStorageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_3
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getCurrentDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    return-object v0

    .line 292
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDirPath()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 518
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isRootDir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getItem(I)Lus/zoom/androidlib/app/ZMFileListEntry;

    move-result-object p1

    return-object p1

    .line 522
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 528
    new-instance v0, Lus/zoom/androidlib/app/ZMFileListEntry;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMFileListEntry;-><init>()V

    .line 529
    iget-object p1, p1, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->setPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 530
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->setDir(Z)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 466
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isRootDir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-super {p0, p1, p2, p3}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 470
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 474
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    if-eqz p2, :cond_2

    .line 477
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;

    if-nez v1, :cond_3

    .line 478
    :cond_2
    invoke-direct {p0, p3}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 481
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;

    .line 482
    iget v0, v0, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 495
    :pswitch_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getStorageIndex(Ljava/util/List;II)I

    move-result p1

    .line 496
    iget-object v0, p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mDisplayName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getUsbStorageName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object p1, p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mIcon:Landroid/widget/ImageView;

    sget p3, Lus/zoom/androidlib/R$drawable;->zm_ic_storage_external:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 489
    :pswitch_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getStorageIndex(Ljava/util/List;II)I

    move-result p1

    .line 490
    iget-object v0, p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mDisplayName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getSDCardName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object p1, p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mIcon:Landroid/widget/ImageView;

    sget p3, Lus/zoom/androidlib/R$drawable;->zm_ic_storage_sdcard:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 484
    :pswitch_2
    iget-object p1, p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mDisplayName:Landroid/widget/TextView;

    sget v0, Lus/zoom/androidlib/R$string;->zm_lbl_internal_storage:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object p1, p3, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->mIcon:Landroid/widget/ImageView;

    sget p3, Lus/zoom/androidlib/R$drawable;->zm_ic_storage_internal:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected gotoParentDir()V
    .locals 1

    .line 326
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->isStorageRootDir()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->notifyDataSetChanged()V

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->upCurrentDirectory()V

    .line 333
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getCurrentDirPath()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->openDir(Ljava/lang/String;)Z

    return-void
.end method

.method public init(Lus/zoom/androidlib/app/ZMActivity;Lus/zoom/androidlib/app/ZMFileListListener;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->init(Lus/zoom/androidlib/app/ZMActivity;Lus/zoom/androidlib/app/ZMFileListListener;)V

    .line 69
    iput-object p2, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    .line 70
    new-instance p1, Lus/zoom/androidlib/app/ZMLocalFileListSession;

    invoke-direct {p1}, Lus/zoom/androidlib/app/ZMLocalFileListSession;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    .line 71
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mLocalFileSession:Lus/zoom/androidlib/app/ZMLocalFileListSession;

    iget-object p2, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->setFileNameFilter(Ljava/io/FilenameFilter;)V

    return-void
.end method

.method public isRootDir()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 158
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ZMAsyncTask;->getStatus()Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    move-result-object v0

    sget-object v1, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->RUNNING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/ZMAsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    .line 163
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMStorageUtil;->removeListener(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;)V

    return-void
.end method

.method public onRecieveStorageInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;)V"
        }
    .end annotation

    .line 538
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMStorageUtil;->removeListener(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;)V

    .line 539
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 541
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 542
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;

    .line 543
    iget-boolean v1, v0, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_1
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getStorageCount(Ljava/util/List;I)I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mSDCardCount:I

    .line 550
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getStorageCount(Ljava/util/List;I)I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mUsbCount:I

    .line 551
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    if-eqz p1, :cond_4

    .line 552
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mShowWaitingStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    invoke-interface {p1}, Lus/zoom/androidlib/app/ZMFileListListener;->onWaitingEnd()V

    .line 554
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 555
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->setLastErrorMessage(Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lus/zoom/androidlib/app/ZMFileListListener;->onStarted(ZLjava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 560
    sget v0, Lus/zoom/androidlib/R$string;->zm_alert_no_sdcard:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->setLastErrorMessage(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    sget v2, Lus/zoom/androidlib/R$string;->zm_alert_no_sdcard:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lus/zoom/androidlib/app/ZMFileListListener;->onStarted(ZLjava/lang/String;)V

    goto :goto_1

    .line 563
    :cond_3
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    invoke-interface {p1, v1, v0}, Lus/zoom/androidlib/app/ZMFileListListener;->onStarted(ZLjava/lang/String;)V

    .line 569
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 84
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->onStart()V

    .line 85
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->checkStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->asyncLoadStorages()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->requestStoragePermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStoragePermissionResult(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 199
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->asyncLoadStorages()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected openDir(Lus/zoom/androidlib/app/ZMFileListEntry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->openDir(Ljava/lang/String;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public openDir(Ljava/lang/String;)Z
    .locals 5

    .line 95
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mStorages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    sget v0, Lus/zoom/androidlib/R$string;->zm_alert_no_sdcard:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->setLastErrorMessage(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 103
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ZMAsyncTask;->getStatus()Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    move-result-object v0

    sget-object v4, Lus/zoom/androidlib/util/ZMAsyncTask$Status;->RUNNING:Lus/zoom/androidlib/util/ZMAsyncTask$Status;

    if-ne v0, v4, :cond_2

    .line 104
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    invoke-virtual {v0, v3}, Lus/zoom/androidlib/util/ZMAsyncTask;->cancel(Z)Z

    .line 105
    iput-object v2, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    .line 108
    :cond_2
    new-instance v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;-><init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    .line 149
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mTaskOpenDir:Lus/zoom/androidlib/util/ZMAsyncTask;

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {v0, v4}, Lus/zoom/androidlib/util/ZMAsyncTask;->execute([Ljava/lang/Object;)Lus/zoom/androidlib/util/ZMAsyncTask;

    .line 151
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->setLastErrorMessage(Ljava/lang/String;)V

    return v3
.end method

.method protected openFile(Lus/zoom/androidlib/app/ZMFileListEntry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mListener:Lus/zoom/androidlib/app/ZMFileListListener;

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lus/zoom/androidlib/app/ZMFileListListener;->onSelectedFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
