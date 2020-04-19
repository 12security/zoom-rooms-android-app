.class public Lus/zoom/androidlib/app/ZMFileListEntry;
.super Ljava/lang/Object;
.source "ZMFileListEntry.java"


# instance fields
.field private isDir:Z

.field private mBytes:J

.field private mChildEntryCount:I

.field private mDisplayName:Ljava/lang/String;

.field private mLastModifiedTime:J

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mBytes:J

    return-wide v0
.end method

.method public getChildEntryCount()I
    .locals 1

    .line 65
    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mChildEntryCount:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 3

    .line 18
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mPath:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 22
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir:Z

    return v0
.end method

.method public setBytes(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mBytes:J

    return-void
.end method

.method public setChildEntryCount(I)V
    .locals 0

    .line 69
    iput p1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mChildEntryCount:I

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mLastModifiedTime:J

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mLastModifiedTime:J

    return-void
.end method

.method public setDir(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir:Z

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListEntry;->mPath:Ljava/lang/String;

    return-void
.end method
