.class public Lus/zoom/zrc/view/MicrophonePickupRangeButton;
.super Landroid/widget/RadioButton;
.source "MicrophonePickupRangeButton.java"


# instance fields
.field private checkedPaint:Landroid/graphics/Paint;

.field private disableColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private normalColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private normalPaint:Landroid/graphics/Paint;

.field private pickupRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalColor:I

    .line 32
    iput v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->disableColor:I

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalColor:I

    .line 32
    iput v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->disableColor:I

    .line 44
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    .line 27
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 30
    iput p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalColor:I

    .line 32
    iput p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->disableColor:I

    .line 49
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    .line 27
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 30
    iput p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalColor:I

    .line 32
    iput p3, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->disableColor:I

    .line 57
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 62
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->MicrophonePickupRangeButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Lus/zoom/zrcbox/R$styleable;->MicrophonePickupRangeButton_normalColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalColor:I

    .line 64
    sget p2, Lus/zoom/zrcbox/R$styleable;->MicrophonePickupRangeButton_disableColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->disableColor:I

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setWillNotDraw(Z)V

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object p1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object p1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->checkedPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private updateContentDescription()V
    .locals 2

    .line 146
    iget v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->accessibility_long_range:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->accessibility_medium_range:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->accessibility_short_range:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateIcon()V
    .locals 3

    .line 110
    iget v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->ic_pickup_range_high:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->ic_pickup_range_med:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->ic_pickup_range_low:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iput-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->normalColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->disableColor:I

    .line 129
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 132
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    :goto_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 140
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    invoke-direct {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->updateIcon()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 100
    invoke-direct {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->updateIcon()V

    return-void
.end method

.method public setPickupRange(I)V
    .locals 1

    .line 84
    iget v0, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    if-eq v0, p1, :cond_0

    .line 85
    iput p1, p0, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->pickupRange:I

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->updateContentDescription()V

    .line 87
    invoke-direct {p0}, Lus/zoom/zrc/view/MicrophonePickupRangeButton;->updateIcon()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    const-string p1, ""

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
