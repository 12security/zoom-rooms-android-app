.class public Lus/zoom/zrc/view/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mRatio:F

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1c

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "@"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "A"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "B"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "C"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "D"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "E"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "F"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "G"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "H"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "I"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "J"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "K"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "L"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "M"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "N"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "O"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "P"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Q"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "R"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "S"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "T"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "U"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "V"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "W"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "X"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Y"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Z"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->mRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->mRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->mRatio:F

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 71
    iget v1, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    .line 72
    iget-object v2, p0, Lus/zoom/zrc/view/SideBar;->onTouchingLetterChangedListener:Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 86
    sget v0, Lus/zoom/zrcbox/R$drawable;->side_bar_pressed:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/SideBar;->setBackgroundResource(I)V

    if-eq v1, p1, :cond_2

    if-ltz p1, :cond_2

    .line 88
    sget-object v0, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    if-eqz v2, :cond_0

    .line 90
    aget-object v0, v0, p1

    invoke-interface {v2, v0}, Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 92
    :cond_0
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->invalidate()V

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/view/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 95
    sget-object v1, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/view/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$drawable;->side_bar_unpresseds:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/SideBar;->setBackgroundResource(I)V

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->invalidate()V

    .line 80
    iget-object p1, p0, Lus/zoom/zrc/view/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->getHeight()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->getWidth()I

    move-result v1

    .line 48
    sget-object v2, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v0, v2

    const/4 v2, 0x0

    .line 49
    :goto_0
    sget-object v3, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 50
    iget-object v3, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    const-string v4, "#ff888888"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v3, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 52
    iget-object v3, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 53
    iget v5, p0, Lus/zoom/zrc/view/SideBar;->mRatio:F

    mul-float v5, v5, v3

    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    mul-float v5, v5, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v5, v3

    float-to-int v3, v5

    .line 54
    iget-object v5, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    const/16 v6, 0x1e

    if-le v3, v6, :cond_0

    const/high16 v3, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_0
    int-to-float v3, v3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget v3, p0, Lus/zoom/zrc/view/SideBar;->choose:I

    if-ne v2, v3, :cond_1

    .line 56
    iget-object v3, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$color;->zm_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v3, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 59
    :cond_1
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-int v4, v0, v2

    add-int/2addr v4, v0

    int-to-float v4, v4

    .line 61
    sget-object v5, Lus/zoom/zrc/view/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 62
    iget-object v3, p0, Lus/zoom/zrc/view/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lus/zoom/zrc/view/SideBar;->onTouchingLetterChangedListener:Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 117
    iput p1, p0, Lus/zoom/zrc/view/SideBar;->mRatio:F

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lus/zoom/zrc/view/SideBar;->mTextDialog:Landroid/widget/TextView;

    return-void
.end method
