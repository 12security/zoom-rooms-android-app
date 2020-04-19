.class public Lus/zoom/zrc/base/widget/ZRCTitleBar;
.super Landroid/widget/FrameLayout;
.source "ZRCTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    }
.end annotation


# instance fields
.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomBackAction:Ljava/lang/Runnable;

.field private mMaxTextWidth:I

.field private mTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mTextSize:F

.field private mViewBackTitle:Landroid/widget/TextView;

.field private mViewLeftAction:Landroid/widget/TextView;

.field private mViewRightAction:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->ZRCTitleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget v0, Lus/zoom/zrcbox/R$styleable;->ZRCTitleBar_android_textColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->login_color_blue_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextColor:I

    .line 51
    sget v0, Lus/zoom/zrcbox/R$styleable;->ZRCTitleBar_android_textSize:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextSize:F

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    sget p2, Lus/zoom/zrcbox/R$layout;->login_action_bar_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$drawable;->back_arrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$dimen;->login_action_bar_back_img_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 60
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/widget/ZRCTitleBar;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->onBackPressed()V

    return-void
.end method

.method static synthetic access$102(Lus/zoom/zrc/base/widget/ZRCTitleBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mCustomBackAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewLeftAction:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewRightAction:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/base/widget/ZRCTitleBar;Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->updateBackContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 26
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/base/widget/ZRCTitleBar;)I
    .locals 0

    .line 26
    iget p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextColor:I

    return p0
.end method

.method private initViews()V
    .locals 4

    .line 64
    sget v0, Lus/zoom/zrcbox/R$id;->left_action:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewLeftAction:Landroid/widget/TextView;

    .line 65
    sget v0, Lus/zoom/zrcbox/R$id;->right_action:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewRightAction:Landroid/widget/TextView;

    .line 66
    sget v0, Lus/zoom/zrcbox/R$id;->left_navigation:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewLeftAction:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewRightAction:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewLeftAction:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewRightAction:Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->setActionBarPadding([Landroid/view/View;)V

    .line 77
    iget v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 78
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewLeftAction:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewRightAction:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mTextSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/base/widget/ZRCTitleBar$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$1;-><init>(Lus/zoom/zrc/base/widget/ZRCTitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onBackPressed()V
    .locals 2

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mCustomBackAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Landroid/app/Activity;

    .line 108
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method private varargs setActionBarPadding([Landroid/view/View;)V
    .locals 8

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 94
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateBackContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->back:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->back_to:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mViewBackTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public newBuilder()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar;->mCustomBackAction:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;-><init>(Lus/zoom/zrc/base/widget/ZRCTitleBar;)V

    return-object v0
.end method
