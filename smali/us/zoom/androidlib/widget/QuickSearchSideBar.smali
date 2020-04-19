.class public Lus/zoom/androidlib/widget/QuickSearchSideBar;
.super Landroid/widget/LinearLayout;
.source "QuickSearchSideBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;
    }
.end annotation


# static fields
.field private static final CATEGORY_CHARS_DEFAULT:Ljava/lang/String; = "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final DISPLAY_CHARS_FULL_DEFAULT:Ljava/lang/String; = "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final DISPLAY_CHARS_LARGE_DEFAULT:Ljava/lang/String; = "#AB.IJK.RST.Z"

.field private static final DISPLAY_CHARS_MEDIUM_DEFAULT:Ljava/lang/String; = "#A.IJ.RS.Z"

.field private static final DISPLAY_CHARS_SMALL_DEFAULT:Ljava/lang/String; = "#A.I.R.Z"


# instance fields
.field private mCategoryChars:Ljava/lang/String;

.field private mDisplayCharsFull:Ljava/lang/String;

.field private mDisplayCharsLarge:Ljava/lang/String;

.field private mDisplayCharsMedium:Ljava/lang/String;

.field private mDisplayCharsSmall:Ljava/lang/String;

.field private mLastChar:C

.field private mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

.field private mMaxTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mMaxTextSize:F

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    const/4 v0, 0x0

    .line 29
    iput-char v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 38
    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 39
    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsFull:Ljava/lang/String;

    const-string v0, "#AB.IJK.RST.Z"

    .line 40
    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsLarge:Ljava/lang/String;

    const-string v0, "#A.IJ.RS.Z"

    .line 41
    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsMedium:Ljava/lang/String;

    const-string v0, "#A.I.R.Z"

    .line 42
    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsSmall:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mMaxTextSize:F

    const/4 p2, 0x0

    .line 28
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    const/4 p2, 0x0

    .line 29
    iput-char p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    const-string p2, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 38
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    const-string p2, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 39
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsFull:Ljava/lang/String;

    const-string p2, "#AB.IJK.RST.Z"

    .line 40
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsLarge:Ljava/lang/String;

    const-string p2, "#A.IJ.RS.Z"

    .line 41
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsMedium:Ljava/lang/String;

    const-string p2, "#A.I.R.Z"

    .line 42
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsSmall:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mMaxTextSize:F

    const/4 p2, 0x0

    .line 28
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    const/4 p2, 0x0

    .line 29
    iput-char p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    const-string p2, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 38
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    const-string p2, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 39
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsFull:Ljava/lang/String;

    const-string p2, "#AB.IJK.RST.Z"

    .line 40
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsLarge:Ljava/lang/String;

    const-string p2, "#A.IJ.RS.Z"

    .line 41
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsMedium:Ljava/lang/String;

    const-string p2, "#A.I.R.Z"

    .line 42
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsSmall:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    return-object p0
.end method

.method static synthetic access$102(Lus/zoom/androidlib/widget/QuickSearchSideBar;C)C
    .locals 0

    .line 20
    iput-char p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setOrientation(I)V

    .line 85
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setGravity(I)V

    .line 87
    sget v0, Lus/zoom/androidlib/R$drawable;->zm_quick_search_sidebar:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setBackgroundResource(I)V

    .line 89
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->prebuildCharViews(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0, p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    invoke-virtual {p0, p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private prebuildCharViews(Landroid/content/Context;)V
    .locals 6

    .line 97
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 103
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getChildCount()I

    move-result v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 109
    new-instance v4, Lus/zoom/androidlib/widget/QuickSearchSideBar$1;

    invoke-direct {v4, p0, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar$1;-><init>(Lus/zoom/androidlib/widget/QuickSearchSideBar;Landroid/content/Context;)V

    .line 121
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lus/zoom/androidlib/R$color;->zm_ui_kit_color_blue_0E71EB:I

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    .line 124
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 125
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    invoke-virtual {p0, v4, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mMaxTextSize:F

    :cond_2
    return-void
.end method

.method private updateTagsVisibility(I)I
    .locals 7

    .line 155
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/androidlib/util/UIUtil;->px2dip(Landroid/content/Context;I)F

    move-result p1

    .line 157
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsFull:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 160
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsSmall:Ljava/lang/String;

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 162
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsMedium:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 164
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsLarge:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 168
    :goto_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 169
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/androidlib/R$string;->zm_accessibility_quick_bar_section_22859:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, p1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    .line 177
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getCategoryChars()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCharsFullSize()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsFull:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 140
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->updateTagsVisibility(I)I

    move-result v1

    .line 142
    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    .line 143
    iget v1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mMaxTextSize:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 147
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 186
    invoke-super {p0, p2}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getHeight()I

    move-result p1

    .line 192
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getWidth()I

    move-result v1

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpg-float v6, v2, v4

    if-ltz v6, :cond_1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_1

    cmpg-float v1, v3, v4

    if-ltz v1, :cond_1

    int-to-float v1, p1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_2

    .line 196
    :cond_1
    iget-char v1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    if-eqz v1, :cond_2

    .line 197
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    invoke-interface {p1, v1}, Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;->onQuickSearchCharReleased(C)V

    .line 198
    iput-char v5, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    return v0

    .line 202
    :cond_2
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    float-to-int v2, v3

    .line 204
    div-int/2addr p1, v1

    div-int p1, v2, p1

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-lt p1, v1, :cond_4

    add-int/lit8 p1, v1, -0x1

    .line 212
    :cond_4
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 215
    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    invoke-interface {p2, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;->onQuickSearchCharReleased(C)V

    .line 216
    iput-char v5, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    goto :goto_0

    .line 217
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 218
    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    invoke-interface {p2, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;->onQuickSearchCharPressed(C)V

    .line 219
    iput-char p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    goto :goto_0

    .line 220
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 221
    iget-char p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    if-eqz p2, :cond_7

    if-eq p1, p2, :cond_7

    .line 222
    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    invoke-interface {p2, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;->onQuickSearchCharPressed(C)V

    .line 223
    iput-char p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mLastChar:C

    :cond_7
    :goto_0
    return v0
.end method

.method public setCategoryChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 66
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mCategoryChars:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsFull:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsLarge:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsMedium:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mDisplayCharsSmall:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->prebuildCharViews(Landroid/content/Context;)V

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length of categoryChars and displayCharsFullSize do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "at least one of arguments is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setQuickSearchSideBarListener(Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar;->mListener:Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    return-void
.end method
