.class public Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;
.super Ljava/lang/Object;
.source "AndroidAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/AndroidAppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeType"
.end annotation


# instance fields
.field public fileType:I

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1992
    iput v0, p0, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->fileType:I

    .line 1996
    iput-object p1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->mimeType:Ljava/lang/String;

    .line 1997
    iput p2, p0, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->fileType:I

    return-void
.end method
