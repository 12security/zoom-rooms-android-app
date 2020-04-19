.class public Lus/zoom/androidlib/ZMMaterialActionButtonLayout;
.super Landroid/widget/RelativeLayout;
.source "ZMMaterialActionButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;
    }
.end annotation


# instance fields
.field private mMaterialActionButtonCallBack:Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;

.field mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

.field mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

.field mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 41
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lus/zoom/androidlib/R$layout;->zm_material_action_button_layout:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    sget p3, Lus/zoom/androidlib/R$id;->txtNeutral:I

    invoke-virtual {p0, p3}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/androidlib/widget/ZMTextButton;

    iput-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

    .line 43
    sget p3, Lus/zoom/androidlib/R$id;->txtNegative:I

    invoke-virtual {p0, p3}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/androidlib/widget/ZMTextButton;

    iput-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

    .line 44
    sget p3, Lus/zoom/androidlib/R$id;->txtPositive:I

    invoke-virtual {p0, p3}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/androidlib/widget/ZMTextButton;

    iput-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;

    .line 45
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, p0}, Lus/zoom/androidlib/widget/ZMTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, p0}, Lus/zoom/androidlib/widget/ZMTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, p0}, Lus/zoom/androidlib/widget/ZMTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget-object p3, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 50
    invoke-virtual {p0}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 51
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

    sget v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_color_neutral:I

    sget v2, Lus/zoom/androidlib/R$color;->zm_white:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lus/zoom/androidlib/widget/ZMTextButton;->setTextColor(I)V

    .line 52
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

    sget v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_color_negative:I

    sget v2, Lus/zoom/androidlib/R$color;->zm_white:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lus/zoom/androidlib/widget/ZMTextButton;->setTextColor(I)V

    .line 53
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;

    sget v0, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_color_positive:I

    sget v2, Lus/zoom/androidlib/R$color;->zm_white:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p3, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setTextColor(I)V

    .line 54
    iget-object p2, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

    sget p3, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_visible_neutral:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 v2, 0x8

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Lus/zoom/androidlib/widget/ZMTextButton;->setVisibility(I)V

    .line 55
    iget-object p2, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

    sget p3, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_visible_negative:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {p2, p3}, Lus/zoom/androidlib/widget/ZMTextButton;->setVisibility(I)V

    .line 56
    iget-object p2, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;

    sget p3, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_visible_positive:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p2, v2}, Lus/zoom/androidlib/widget/ZMTextButton;->setVisibility(I)V

    .line 57
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_neutral:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 59
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_4
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_negative:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 63
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_5
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_positive:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 67
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_6
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMMaterialActionButtonLayout_zm_text_size:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_7

    .line 71
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNeutral:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, v0, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setTextSize(IF)V

    .line 72
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtNegative:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, v0, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setTextSize(IF)V

    .line 73
    iget-object p3, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mTxtPositive:Lus/zoom/androidlib/widget/ZMTextButton;

    invoke-virtual {p3, v0, p2}, Lus/zoom/androidlib/widget/ZMTextButton;->setTextSize(IF)V

    .line 75
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    return-void

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 83
    sget v0, Lus/zoom/androidlib/R$id;->txtNeutral:I

    if-ne p1, v0, :cond_0

    .line 84
    iget-object p1, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mMaterialActionButtonCallBack:Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;

    if-eqz p1, :cond_2

    .line 85
    invoke-interface {p1}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;->onClickNeutral()V

    goto :goto_0

    .line 87
    :cond_0
    sget v0, Lus/zoom/androidlib/R$id;->txtNegative:I

    if-ne p1, v0, :cond_1

    .line 88
    iget-object p1, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mMaterialActionButtonCallBack:Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;

    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;->onClickNegative()V

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Lus/zoom/androidlib/R$id;->txtPositive:I

    if-ne p1, v0, :cond_2

    .line 92
    iget-object p1, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mMaterialActionButtonCallBack:Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p1}, Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;->onClickPositive()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setmMaterialActionButtonCallBack(Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lus/zoom/androidlib/ZMMaterialActionButtonLayout;->mMaterialActionButtonCallBack:Lus/zoom/androidlib/ZMMaterialActionButtonLayout$MaterialActionButtonCallBack;

    return-void
.end method
