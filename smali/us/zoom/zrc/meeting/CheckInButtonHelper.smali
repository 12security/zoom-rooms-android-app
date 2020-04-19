.class public Lus/zoom/zrc/meeting/CheckInButtonHelper;
.super Ljava/lang/Object;
.source "CheckInButtonHelper.java"


# instance fields
.field private checkInButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private initBackground:Landroid/graphics/drawable/Drawable;

.field private initLayoutWidth:I

.field private initTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->context:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->initBackground:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->initTextColor:I

    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 40
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->initLayoutWidth:I

    return-void
.end method


# virtual methods
.method public setButtonCheckedIn()V
    .locals 4

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 58
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    .line 60
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    iget-object v3, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$dimen;->checked_in_drawable_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 64
    sget v1, Lus/zoom/zrcbox/R$drawable;->checkmark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->context:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 66
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setButtonNormal()V
    .locals 2

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->initBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    iget v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->initTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48
    iget v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->initLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public shouldShowCheckedIn()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->context:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$string;->checked_in:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/meeting/CheckInButtonHelper;->checkInButton:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
