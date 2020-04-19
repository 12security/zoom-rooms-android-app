.class Lus/zoom/androidlib/app/ZMLocalFileListSession;
.super Ljava/lang/Object;
.source "ZMLocalFileListSession.java"


# instance fields
.field private mDir:Ljava/io/File;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileListPath:Ljava/lang/String;

.field private mFileNameFilter:Ljava/io/FilenameFilter;

.field private pathDirsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileList:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    .line 20
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    .line 23
    invoke-direct {p0, v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileList:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    .line 20
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FilenameFilter;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileList:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    .line 20
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    .line 31
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->init(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public static getDirectoryFileList(Ljava/lang/String;Ljava/io/FilenameFilter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    .line 174
    array-length p1, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object v1, p0, v0

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    .line 56
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    if-nez p1, :cond_2

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    .line 64
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->parseDirectoryPath()V

    return-void
.end method

.method private loadFileList()Z
    .locals 4

    .line 84
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileListPath:Ljava/lang/String;

    .line 92
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileList:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getDirectoryFileList(Ljava/lang/String;Ljava/io/FilenameFilter;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileListPath:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method private parseDirectoryPath()V
    .locals 4

    .line 68
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v2, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentDir()Ljava/io/File;
    .locals 1

    .line 102
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentDirPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFileList()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileListPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->loadFileList()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileList:Ljava/util/List;

    return-object v0
.end method

.method public getDirFileList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    invoke-static {p1, v0, p2}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getDirectoryFileList(Ljava/lang/String;Ljava/io/FilenameFilter;Ljava/util/List;)V

    return-void
.end method

.method public getDirFilesCount(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    invoke-static {p1, v1, v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getDirectoryFileList(Ljava/lang/String;Ljava/io/FilenameFilter;Ljava/util/List;)V

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getFileNameFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 40
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->init(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->loadFileList()Z

    return-void
.end method

.method public setFileNameFilter(Ljava/io/FilenameFilter;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mFileNameFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public upCurrentDirectory()V
    .locals 4

    .line 124
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->pathDirsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    goto :goto_0

    .line 136
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListSession;->mDir:Ljava/io/File;

    .line 140
    :goto_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->loadFileList()Z

    return-void
.end method
