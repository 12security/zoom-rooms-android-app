.class public Lus/zoom/androidlib/widget/ZMEllipsisTextView;
.super Landroid/widget/TextView;
.source "ZMEllipsisTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMEllipsisTextView"


# instance fields
.field private mPostFixResID:I

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)I
    .locals 0

    .line 16
    iget p0, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->mPostFixResID:I

    return p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->mText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public ellipsizeAtMiddle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 40
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    .line 48
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    if-gtz v1, :cond_1

    return-object p1

    :cond_1
    int-to-float p2, v1

    .line 53
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0, p2, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public setEllipsisText(Ljava/lang/String;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->mText:Ljava/lang/String;

    .line 64
    iput p2, p0, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->mPostFixResID:I

    .line 66
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView$1;-><init>(Lus/zoom/androidlib/widget/ZMEllipsisTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 84
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMEllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
