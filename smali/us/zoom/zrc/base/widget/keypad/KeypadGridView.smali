.class public Lus/zoom/zrc/base/widget/keypad/KeypadGridView;
.super Landroid/widget/GridView;
.source "KeypadGridView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicKeypadView"


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private keyData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/base/widget/keypad/DialItem;",
            ">;"
        }
    .end annotation
.end field

.field private keypadListener:Lus/zoom/zrc/base/widget/keypad/KeypadListener;

.field private styleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 39
    sget-object p1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keyData:Ljava/util/List;

    .line 40
    new-instance p1, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;-><init>(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->adapter:Landroid/widget/BaseAdapter;

    .line 105
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object p1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keyData:Ljava/util/List;

    .line 40
    new-instance p1, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;-><init>(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->adapter:Landroid/widget/BaseAdapter;

    .line 110
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object p1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keyData:Ljava/util/List;

    .line 40
    new-instance p1, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$1;-><init>(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->adapter:Landroid/widget/BaseAdapter;

    .line 115
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keyData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)I
    .locals 0

    .line 31
    iget p0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->styleId:I

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setupKeyPress(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setChildViewsPressState(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;)Landroid/widget/BaseAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->adapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->onDial(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lus/zoom/zrcbox/R$attr;->keypadStyle:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->styleId:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x3

    .line 123
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setNumColumns(I)V

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 125
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setImportantForAccessibility(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private onDial(Ljava/lang/String;)V
    .locals 3

    const-string v0, "BasicKeypadView"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDial() called with: key = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keypadListener:Lus/zoom/zrc/base/widget/keypad/KeypadListener;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lus/zoom/zrc/base/widget/keypad/KeypadListener;->onKeyClicked(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCTonePlayer;->getInstance()Lus/zoom/zrc/ZRCTonePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/ZRCTonePlayer;->playDTMF(Ljava/lang/String;)V

    return-void
.end method

.method private setChildViewsPressState(Landroid/view/View;Z)V
    .locals 2

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 170
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 172
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-direct {p0, v1, p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setChildViewsPressState(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupKeyPress(Landroid/view/View;I)V
    .locals 1

    .line 140
    new-instance v0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;

    invoke-direct {v0, p0, p1, p2}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView$2;-><init>(Lus/zoom/zrc/base/widget/keypad/KeypadGridView;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public setKeypadListener(Lus/zoom/zrc/base/widget/keypad/KeypadListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keypadListener:Lus/zoom/zrc/base/widget/keypad/KeypadListener;

    return-void
.end method

.method public updateKeyData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/base/widget/keypad/DialItem;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->keyData:Ljava/util/List;

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
