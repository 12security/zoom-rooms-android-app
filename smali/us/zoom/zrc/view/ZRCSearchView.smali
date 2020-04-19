.class public Lus/zoom/zrc/view/ZRCSearchView;
.super Landroid/widget/RelativeLayout;
.source "ZRCSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;
    }
.end annotation


# static fields
.field public static final STATUS_CLOSE:I = 0x1

.field public static final STATUS_OPEN:I


# instance fields
.field private mSearchCancel:Landroid/widget/TextView;

.field private mSearchImgLayout:Landroid/widget/LinearLayout;

.field private mSearchKeyWord:Landroid/widget/EditText;

.field private mSearchLayout:Landroid/widget/RelativeLayout;

.field private mSearchTxt:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field private search_cancel_position:F

.field private search_img_layout_mid_position:F

.field private search_img_layout_position:F

.field private search_img_layout_width:I

.field private set:Landroid/animation/AnimatorSet;

.field private status:I

.field private width:I

.field private zrcSearchListener:Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v1}, Lus/zoom/zrc/view/ZRCSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/ZRCSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCSearchView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1002(Lus/zoom/zrc/view/ZRCSearchView;I)I
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->status:I

    return p1
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/ZRCSearchView;)Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->zrcSearchListener:Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/view/ZRCSearchView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCSearchView;->showKeyBoard()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/ZRCSearchView;)I
    .locals 0

    .line 35
    iget p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->width:I

    return p0
.end method

.method static synthetic access$402(Lus/zoom/zrc/view/ZRCSearchView;I)I
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->width:I

    return p1
.end method

.method static synthetic access$502(Lus/zoom/zrc/view/ZRCSearchView;I)I
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_width:I

    return p1
.end method

.method static synthetic access$602(Lus/zoom/zrc/view/ZRCSearchView;F)F
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_position:F

    return p1
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/ZRCSearchView;)F
    .locals 0

    .line 35
    iget p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_cancel_position:F

    return p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/view/ZRCSearchView;F)F
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_cancel_position:F

    return p1
.end method

.method static synthetic access$802(Lus/zoom/zrc/view/ZRCSearchView;F)F
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_mid_position:F

    return p1
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method private cancelSearchAnimation()V
    .locals 8

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    const-string v0, "x"

    const/4 v1, 0x2

    .line 161
    new-array v2, v1, [F

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_mid_position:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 162
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    .line 163
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-string v2, "x"

    .line 165
    new-array v3, v1, [F

    iget v6, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_cancel_position:F

    aput v6, v3, v4

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchCancel:Landroid/widget/TextView;

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 167
    new-instance v3, Lus/zoom/zrc/view/ZRCSearchView$3;

    invoke-direct {v3, p0}, Lus/zoom/zrc/view/ZRCSearchView$3;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 174
    new-array v1, v1, [I

    iget v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_width:I

    aput v2, v1, v4

    iget v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->width:I

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 175
    new-instance v2, Lus/zoom/zrc/view/ZRCSearchView$4;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ZRCSearchView$4;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xc8

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    new-instance v1, Lus/zoom/zrc/view/ZRCSearchView$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCSearchView$5;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->zrc_search_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCSearchView;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->search_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchCancel:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->search_img_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->search_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchTxt:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->search_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCSearchView;->setSearch_content(Landroid/widget/EditText;)V

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->search_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->status:I

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/ZRCSearchView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCSearchView$1;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showKeyBoard()V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 253
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private startSearchAnimation()V
    .locals 8

    const-string v0, "x"

    const/4 v1, 0x2

    .line 210
    new-array v2, v1, [F

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_position:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 211
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    .line 212
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchImgLayout:Landroid/widget/LinearLayout;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 213
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-string v2, "x"

    .line 214
    new-array v3, v1, [F

    iget v6, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_cancel_position:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v6

    aput v7, v3, v4

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchCancel:Landroid/widget/TextView;

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 216
    new-instance v3, Lus/zoom/zrc/view/ZRCSearchView$6;

    invoke-direct {v3, p0}, Lus/zoom/zrc/view/ZRCSearchView$6;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 224
    new-array v1, v1, [I

    iget v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->width:I

    aput v2, v1, v4

    iget v2, p0, Lus/zoom/zrc/view/ZRCSearchView;->search_img_layout_width:I

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 225
    new-instance v2, Lus/zoom/zrc/view/ZRCSearchView$7;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ZRCSearchView$7;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 235
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    new-instance v1, Lus/zoom/zrc/view/ZRCSearchView$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCSearchView$8;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startShowView()V
    .locals 2

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->rootView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/ZRCSearchView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCSearchView$2;-><init>(Lus/zoom/zrc/view/ZRCSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->zrcSearchListener:Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public closeSearchView()V
    .locals 2

    .line 205
    iget v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCSearchView;->cancelSearchAnimation()V

    return-void
.end method

.method public getSearch_content()Landroid/widget/EditText;
    .locals 1

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 148
    sget v0, Lus/zoom/zrcbox/R$id;->search_layout:I

    if-eq p1, v0, :cond_2

    sget v0, Lus/zoom/zrcbox/R$id;->search_img_layout:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->search_cancel:I

    if-ne p1, v0, :cond_5

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCSearchView;->cancelSearchAnimation()V

    goto :goto_1

    .line 149
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->set:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 150
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchCancel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 151
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCSearchView;->startSearchAnimation()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 285
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->zrcSearchListener:Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    .line 287
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->zrcSearchListener:Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;->search(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCSearchView;->startShowView()V

    .line 111
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lus/zoom/zrc/MeetingActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCSearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    sget p2, Lus/zoom/zrcbox/R$drawable;->search_in_meeting_view_bg:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchLayout:Landroid/widget/RelativeLayout;

    sget p2, Lus/zoom/zrcbox/R$drawable;->search_view_bg:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setSearch_content(Landroid/widget/EditText;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->mSearchKeyWord:Landroid/widget/EditText;

    return-void
.end method

.method public setZRCSearchViewSearchListener(Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView;->zrcSearchListener:Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    return-void
.end method
