.class public Lus/zoom/androidlib/widget/ZMImageTextButton;
.super Landroid/widget/Button;
.source "ZMImageTextButton.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mImage:I

.field private mImageTextOrientation:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImageTextOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImageTextOrientation:I

    .line 25
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMImageTextButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImageTextOrientation:I

    .line 30
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMImageTextButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/ZMImageTextButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lus/zoom/androidlib/R$styleable;->ZMImageTextButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMImageTextButton_zmImageTextOrientation:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 41
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/ZMImageTextButton;->setImageTextOrientation(I)V

    .line 44
    :cond_1
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMImageTextButton_zm_image:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 47
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/ZMImageTextButton;->setImageResource(I)V

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    new-instance p1, Lus/zoom/androidlib/widget/ZMImageTextButton$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMImageTextButton$1;-><init>(Lus/zoom/androidlib/widget/ZMImageTextButton;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    .line 76
    iget v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImage:I

    return v0
.end method

.method public getImageTextOrientation()I
    .locals 1

    .line 86
    iget v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImageTextOrientation:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 96
    iget v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImage:I

    if-lez v0, :cond_2

    const-string v0, ""

    .line 97
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImage:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImageTextOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImage:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1, v1}, Lus/zoom/androidlib/widget/ZMImageTextButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 103
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImage:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1, v1}, Lus/zoom/androidlib/widget/ZMImageTextButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 69
    iput p1, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImage:I

    .line 70
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMImageTextButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setImageTextOrientation(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    iput p1, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mImageTextOrientation:I

    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMImageTextButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
