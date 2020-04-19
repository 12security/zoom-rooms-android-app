.class public Lus/zoom/zrc/phonecall/DTMFCallNameTextView;
.super Landroid/widget/TextView;
.source "DTMFCallNameTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;
    }
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private nameTextViewTreeObserver:Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;-><init>(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;Lus/zoom/zrc/phonecall/DTMFCallNameTextView$1;)V

    iput-object p1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->nameTextViewTreeObserver:Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;-><init>(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;Lus/zoom/zrc/phonecall/DTMFCallNameTextView$1;)V

    iput-object p1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->nameTextViewTreeObserver:Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->displayName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 42
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->nameTextViewTreeObserver:Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->nameTextViewTreeObserver:Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->nameTextViewTreeObserver:Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->displayName:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDisplayNumber(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->displayName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
