.class public abstract Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;
.super Ljava/lang/Object;
.source "ZMMultiTypeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEW_TYPE:I = -0xff


# instance fields
.field private autoMode:Z

.field private layouts:Landroid/util/SparseIntArray;

.field private selfMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    return-void
.end method

.method private addItemType(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 43
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    .line 46
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private checkMode(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t mess two register mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getDefItemViewType(Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)I"
        }
    .end annotation

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->getItemType(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0xff

    :goto_0
    return p1
.end method

.method protected abstract getItemType(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final getLayoutId(I)I
    .locals 2

    .line 39
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    const/16 v1, -0x194

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public registerItemType(II)Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->selfMode:Z

    .line 73
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->autoMode:Z

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->checkMode(Z)V

    .line 74
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->addItemType(II)V

    return-object p0
.end method

.method public varargs registerItemTypeAutoIncrease([I)Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->autoMode:Z

    .line 57
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->selfMode:Z

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->checkMode(Z)V

    const/4 v0, 0x0

    .line 58
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 59
    aget v1, p1, v0

    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->addItemType(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
