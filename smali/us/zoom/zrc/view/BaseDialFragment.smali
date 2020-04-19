.class public Lus/zoom/zrc/view/BaseDialFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "BaseDialFragment.java"


# instance fields
.field protected titleLayout:Landroid/view/View;

.field protected titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method private shouldShowTitleLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 24
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    sget p2, Lus/zoom/zrcbox/R$id;->layout_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/BaseDialFragment;->titleLayout:Landroid/view/View;

    .line 26
    sget p2, Lus/zoom/zrcbox/R$id;->tv_left_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 27
    sget v0, Lus/zoom/zrcbox/R$id;->tv_title_transparent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/BaseDialFragment;->titleView:Landroid/widget/TextView;

    .line 29
    new-instance p1, Lus/zoom/zrc/view/BaseDialFragment$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/BaseDialFragment$1;-><init>(Lus/zoom/zrc/view/BaseDialFragment;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lus/zoom/zrc/view/BaseDialFragment;->titleLayout:Landroid/view/View;

    invoke-direct {p0}, Lus/zoom/zrc/view/BaseDialFragment;->shouldShowTitleLayout()Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lus/zoom/zrc/view/BaseDialFragment;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
