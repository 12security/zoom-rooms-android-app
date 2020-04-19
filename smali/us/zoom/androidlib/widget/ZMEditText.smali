.class public Lus/zoom/androidlib/widget/ZMEditText;
.super Landroid/widget/EditText;
.source "ZMEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMEditText$onSelectionChangedListener;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/androidlib/widget/ZMEditText$onSelectionChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMEditText;->listeners:Ljava/util/List;

    .line 19
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMEditText;->listeners:Ljava/util/List;

    .line 24
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMEditText;->listeners:Ljava/util/List;

    .line 29
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMEditText;->initView()V

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addOnSelectionChangedListener(Lus/zoom/androidlib/widget/ZMEditText$onSelectionChangedListener;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMEditText;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 43
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMEditText;->listeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMEditText;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/widget/ZMEditText$onSelectionChangedListener;

    .line 48
    invoke-interface {v1, p1, p2}, Lus/zoom/androidlib/widget/ZMEditText$onSelectionChangedListener;->onEditTextSelectionChanged(II)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method
