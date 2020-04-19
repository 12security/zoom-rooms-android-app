.class Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;
.super Ljava/lang/Object;
.source "ZMFileListBaseAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMFileListBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemFileNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/androidlib/app/ZMFileListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;


# direct methods
.method private constructor <init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;->this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;-><init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 325
    check-cast p1, Lus/zoom/androidlib/app/ZMFileListEntry;

    check-cast p2, Lus/zoom/androidlib/app/ZMFileListEntry;

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$ItemFileNameComparator;->compare(Lus/zoom/androidlib/app/ZMFileListEntry;Lus/zoom/androidlib/app/ZMFileListEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/androidlib/app/ZMFileListEntry;Lus/zoom/androidlib/app/ZMFileListEntry;)I
    .locals 1

    .line 327
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 329
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lus/zoom/androidlib/app/ZMFileListEntry;->isDir()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 332
    :cond_1
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMFileListEntry;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p2}, Lus/zoom/androidlib/app/ZMFileListEntry;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
