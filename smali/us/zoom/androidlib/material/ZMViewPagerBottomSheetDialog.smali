.class public Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "ZMViewPagerBottomSheetDialog.java"


# instance fields
.field private mBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheetBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

.field private mBottomSheetCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCanceledOnTouchOutsideSet:Z

.field private mCreated:Z

.field private mMaxHeight:I

.field private mPeekHeight:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    invoke-static {p1, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 26
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 223
    new-instance p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)V

    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    const/16 p1, 0x3e8

    .line 36
    invoke-direct {p0, p1, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->init(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 40
    invoke-static {p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 26
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 223
    new-instance p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)V

    iput-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    .line 43
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->supportRequestWindowFeature(I)Z

    const/16 p1, 0x3e8

    .line 44
    invoke-direct {p0, p1, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->init(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, p2, p3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;-><init>(Landroid/content/Context;III)V

    .line 49
    invoke-direct {p0, p2, p3}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->init(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 53
    invoke-static {p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 26
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 223
    new-instance p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)V

    iput-object p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    .line 56
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 57
    invoke-direct {p0, p3, p4}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->init(II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 26
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 223
    new-instance p3, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;

    invoke-direct {p3, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)V

    iput-object p3, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    .line 63
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 64
    iput-boolean p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 65
    invoke-direct {p0, p4, p5}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->init(II)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    return p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result p0

    return p0
.end method

.method private getBottomSheetBehavior()Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
    .locals 2

    .line 125
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mWindow:Landroid/view/Window;

    sget v1, Lus/zoom/androidlib/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_1
    invoke-static {v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->from(Landroid/view/View;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    .line 134
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    return-object v0
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_1

    .line 212
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lus/zoom/androidlib/R$attr;->bottomSheetDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 215
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 217
    :cond_0
    sget p1, Lus/zoom/androidlib/R$style;->Theme_Design_Light_BottomSheetDialog:I

    :cond_1
    :goto_0
    return p1
.end method

.method private init(II)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mWindow:Landroid/view/Window;

    .line 70
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mPeekHeight:I

    .line 71
    iput p2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mMaxHeight:I

    return-void
.end method

.method private setMaxHeight()V
    .locals 3

    .line 116
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mMaxHeight:I

    if-gtz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mWindow:Landroid/view/Window;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 121
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mWindow:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private setPeekHeight()V
    .locals 2

    .line 106
    iget v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mPeekHeight:I

    if-gtz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getBottomSheetBehavior()Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mPeekHeight:I

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setPeekHeight(I)V

    :cond_1
    return-void
.end method

.method private shouldWindowCloseOnTouchOutside()Z
    .locals 5

    .line 196
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutsideSet:Z

    if-nez v0, :cond_1

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 198
    iput-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v2, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    :goto_0
    iput-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutsideSet:Z

    .line 207
    :cond_1
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 3

    .line 169
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$layout;->zm_view_pager_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 172
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 174
    :cond_0
    sget p1, Lus/zoom/androidlib/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 175
    invoke-static {p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->from(Landroid/view/View;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    .line 176
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-object v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBottomSheetCallback:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setBottomSheetCallback(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;)V

    .line 177
    iget-object v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    iget-boolean v2, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setHideable(Z)V

    if-nez p3, :cond_1

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :goto_0
    sget p1, Lus/zoom/androidlib/R$id;->touch_outside:I

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 84
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->setPeekHeight()V

    .line 85
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->setMaxHeight()V

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCreated:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 150
    iget-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 152
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mBehavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->setHideable(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 161
    iget-boolean v1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    if-nez v1, :cond_0

    .line 162
    iput-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCancelable:Z

    .line 164
    :cond_0
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 165
    iput-boolean v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCanceledOnTouchOutsideSet:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, v0, p1, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0, p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 98
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mMaxHeight:I

    .line 100
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCreated:Z

    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->setMaxHeight()V

    :cond_0
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 0

    .line 90
    iput p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mPeekHeight:I

    .line 92
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->mCreated:Z

    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->setPeekHeight()V

    :cond_0
    return-void
.end method
