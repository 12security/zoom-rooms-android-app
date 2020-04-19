.class public Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "LoginNumberKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;,
        Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;,
        Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;
    }
.end annotation


# instance fields
.field private mDeleteKeyEnabled:Z

.field private mDividerHorizontal:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private mDividerVertical:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private mDoneKeyEnabled:Z

.field private mDoneLabel:Ljava/lang/CharSequence;

.field private mKeyLayout:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private mListener:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;

.field private mNumberKeyEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->LoginNumberKeyboardView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    sget v0, Lus/zoom/zrcbox/R$styleable;->LoginNumberKeyboardView_dividerHorizontal:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDividerHorizontal:F

    .line 69
    sget v0, Lus/zoom/zrcbox/R$styleable;->LoginNumberKeyboardView_dividerVertical:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDividerVertical:F

    .line 70
    sget v0, Lus/zoom/zrcbox/R$styleable;->LoginNumberKeyboardView_keyLayout:I

    sget v1, Lus/zoom/zrcbox/R$layout;->login_grid_item_license_keyboard:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mKeyLayout:I

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setBackgroundColor(I)V

    .line 75
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;-><init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$1;)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setOverScrollMode(I)V

    .line 80
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)I
    .locals 0

    .line 33
    iget p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mKeyLayout:I

    return p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDoneKeyEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mNumberKeyEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mListener:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)F
    .locals 0

    .line 33
    iget p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDividerHorizontal:F

    return p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)F
    .locals 0

    .line 33
    iget p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDividerVertical:F

    return p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDeleteKeyEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Landroid/view/View;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Ljava/lang/CharSequence;
    .locals 0

    .line 33
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDoneLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private setKeyEnabled(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 120
    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 121
    check-cast p1, Landroid/view/ViewGroup;

    .line 122
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public setDeleteKeyEnabled(Z)V
    .locals 1

    .line 101
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDeleteKeyEnabled:Z

    const/16 v0, 0x43

    .line 102
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setDoneKeyEnabled(Z)V
    .locals 1

    .line 107
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDoneKeyEnabled:Z

    const/16 v0, 0x42

    .line 108
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setDoneLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mDoneLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setKeyBoardListener(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mListener:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;

    return-void
.end method

.method public setNumberKeyEnabled(Z)V
    .locals 4

    .line 90
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->mNumberKeyEnabled:Z

    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    .line 95
    invoke-direct {p0, v1, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyEnabled(Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
