.class public Lus/zoom/androidlib/widget/CaptionView;
.super Landroid/widget/LinearLayout;
.source "CaptionView.java"


# instance fields
.field private mContent:Lus/zoom/androidlib/widget/CaptionTextView;

.field private mWindow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/CaptionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$layout;->zm_caption_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget p1, Lus/zoom/androidlib/R$id;->content:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/CaptionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/CaptionTextView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/CaptionView;->mContent:Lus/zoom/androidlib/widget/CaptionTextView;

    .line 45
    sget p1, Lus/zoom/androidlib/R$id;->window:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/CaptionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/CaptionView;->mWindow:Landroid/view/View;

    return-void
.end method

.method private refresh()V
    .locals 2

    .line 49
    iget-object v0, p0, Lus/zoom/androidlib/widget/CaptionView;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/CaptionUtil;->getCaptionStyle(Landroid/content/Context;)Lus/zoom/androidlib/util/CaptionStyleCompat;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lus/zoom/androidlib/widget/CaptionView;->mWindow:Landroid/view/View;

    iget v0, v0, Lus/zoom/androidlib/util/CaptionStyleCompat;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 59
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/CaptionView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    invoke-direct {p0}, Lus/zoom/androidlib/widget/CaptionView;->refresh()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lus/zoom/androidlib/widget/CaptionView;->mContent:Lus/zoom/androidlib/widget/CaptionTextView;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/CaptionTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
