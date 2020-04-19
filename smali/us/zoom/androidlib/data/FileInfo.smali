.class public Lus/zoom/androidlib/data/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lus/zoom/androidlib/data/FileInfo;->displayName:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lus/zoom/androidlib/data/FileInfo;->size:J

    .line 17
    iput-object p4, p0, Lus/zoom/androidlib/data/FileInfo;->mimeType:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lus/zoom/androidlib/data/FileInfo;->ext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lus/zoom/androidlib/data/FileInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/androidlib/data/FileInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/androidlib/data/FileInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lus/zoom/androidlib/data/FileInfo;->size:J

    return-wide v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lus/zoom/androidlib/data/FileInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lus/zoom/androidlib/data/FileInfo;->ext:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/androidlib/data/FileInfo;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lus/zoom/androidlib/data/FileInfo;->size:J

    return-void
.end method
