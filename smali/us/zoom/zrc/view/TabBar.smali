.class public Lus/zoom/zrc/view/TabBar;
.super Landroid/widget/FrameLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;
    }
.end annotation


# instance fields
.field private currentIndex:I

.field private mContext:Landroid/content/Context;

.field private mDisabledFontColorRes:I

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectedBackgroundColorRes:I

.field private mSelectedFontColorRes:I

.field private mTabItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelectedBackgroundColorRes:I

.field private mUnSelectedFontColorRes:I

.field private onSelectedTabListener:Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/TabBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/TabBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/TabBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/view/TabBar;->mContext:Landroid/content/Context;

    .line 68
    iget-object p1, p0, Lus/zoom/zrc/view/TabBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 69
    sget v0, Lus/zoom/zrcbox/R$layout;->tab_bar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 70
    sget v0, Lus/zoom/zrcbox/R$id;->ll_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/view/TabBar;->mRootLayout:Landroid/widget/LinearLayout;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    .line 74
    sget p1, Lus/zoom/zrcbox/R$color;->zrc_bg:I

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_bg:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lus/zoom/zrc/view/TabBar;->setTabItemColors(IIII)V

    .line 75
    sget p1, Lus/zoom/zrcbox/R$color;->zrc_gray:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/TabBar;->setDisabledColor(I)V

    return-void
.end method

.method private setTabItemStatus(Landroid/widget/TextView;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/TabBar;->mSelectedFontColorRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 167
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lus/zoom/zrc/view/TabBar;->mSelectedBackgroundColorRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/TabBar;->mUnSelectedFontColorRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 171
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 173
    :goto_0
    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->setSelectedForAccessibility(Landroid/view/View;Z)V

    .line 175
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 176
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lus/zoom/zrc/view/TabBar;->mDisabledFontColorRes:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addTabs([Ljava/lang/String;I)V
    .locals 1

    .line 102
    sget v0, Lus/zoom/zrcbox/R$dimen;->zrc_default_tab_text_size:I

    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/zrc/view/TabBar;->addTabs([Ljava/lang/String;II)V

    return-void
.end method

.method public addTabs([Ljava/lang/String;II)V
    .locals 10

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 109
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 112
    new-instance v5, Lus/zoom/zrc/view/ZRCTextViewButton;

    iget-object v6, p0, Lus/zoom/zrc/view/TabBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lus/zoom/zrc/view/ZRCTextViewButton;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 113
    invoke-virtual {v5, v6}, Lus/zoom/zrc/view/ZRCTextViewButton;->setDisableAlpha(Z)V

    .line 115
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v0, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setTextSize(IF)V

    .line 117
    aget-object v7, p1, v1

    invoke-virtual {v5, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setTag(Ljava/lang/Object;)V

    const/16 v7, 0x11

    .line 119
    invoke-virtual {v5, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setGravity(I)V

    if-nez v1, :cond_0

    .line 122
    sget v7, Lus/zoom/zrcbox/R$drawable;->tab_bar_left_btn_bg:I

    invoke-virtual {v5, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 124
    :cond_0
    array-length v7, p1

    sub-int/2addr v7, v6

    if-ne v1, v7, :cond_1

    .line 125
    sget v7, Lus/zoom/zrcbox/R$drawable;->tab_bar_right_btn_bg:I

    invoke-virtual {v5, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 128
    :cond_1
    sget v7, Lus/zoom/zrcbox/R$drawable;->tab_bar_mid_btn_bg:I

    invoke-virtual {v5, v7}, Lus/zoom/zrc/view/ZRCTextViewButton;->setBackgroundResource(I)V

    .line 131
    :goto_1
    iget-object v7, p0, Lus/zoom/zrc/view/TabBar;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8, v7}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v7

    float-to-int v7, v7

    iget-object v9, p0, Lus/zoom/zrc/view/TabBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v0, v7, v0, v8}, Lus/zoom/zrc/view/ZRCTextViewButton;->setPadding(IIII)V

    .line 132
    invoke-virtual {v5, v2}, Lus/zoom/zrc/view/ZRCTextViewButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v5, v6}, Lus/zoom/zrc/view/ZRCTextViewButton;->setClickable(Z)V

    .line 134
    invoke-virtual {v5, p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lus/zoom/zrc/view/TabBar;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v2, v5, :cond_2

    array-length v2, p1

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_2

    .line 141
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lus/zoom/zrc/view/TabBar;->mSelectedBackgroundColorRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v3, p0, Lus/zoom/zrc/view/TabBar;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 148
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_4

    .line 149
    iget-object p1, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/TabBar;->onClick(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 217
    iget v0, p0, Lus/zoom/zrc/view/TabBar;->currentIndex:I

    return v0
.end method

.method public getTab(I)Landroid/widget/TextView;
    .locals 1

    if-ltz p1, :cond_0

    .line 209
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Please input the correct index!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 182
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 183
    iget-object v2, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-ne v2, p1, :cond_1

    .line 185
    iput v1, p0, Lus/zoom/zrc/view/TabBar;->currentIndex:I

    const/4 v3, 0x1

    .line 186
    invoke-direct {p0, v2, v3}, Lus/zoom/zrc/view/TabBar;->setTabItemStatus(Landroid/widget/TextView;Z)V

    .line 187
    iget-object v3, p0, Lus/zoom/zrc/view/TabBar;->onSelectedTabListener:Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;->onSelectedTab(I)V

    const-string v3, ""

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSelectedTabListener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/view/TabBar;->setTabItemStatus(Landroid/widget/TextView;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public selectTabByIndex(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/TabBar;->onClick(Landroid/view/View;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0

    .line 79
    iput p1, p0, Lus/zoom/zrc/view/TabBar;->mDisabledFontColorRes:I

    return-void
.end method

.method public setOnSelectedTabListener(Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lus/zoom/zrc/view/TabBar;->onSelectedTabListener:Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;

    return-void
.end method

.method public setTabItemColors(IIII)V
    .locals 0

    .line 83
    iput p1, p0, Lus/zoom/zrc/view/TabBar;->mSelectedFontColorRes:I

    .line 84
    iput p2, p0, Lus/zoom/zrc/view/TabBar;->mUnSelectedFontColorRes:I

    .line 85
    iput p3, p0, Lus/zoom/zrc/view/TabBar;->mSelectedBackgroundColorRes:I

    .line 86
    iput p4, p0, Lus/zoom/zrc/view/TabBar;->mUnSelectedBackgroundColorRes:I

    .line 87
    iget-object p1, p0, Lus/zoom/zrc/view/TabBar;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Lus/zoom/zrc/view/TabBar;->mSelectedBackgroundColorRes:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/view/TabBar;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/view/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lus/zoom/zrc/view/TabBar;->mSelectedBackgroundColorRes:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 98
    iget-object v0, p0, Lus/zoom/zrc/view/TabBar;->mTabItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
